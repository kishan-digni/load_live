<?php

/** @noinspection ALL */

namespace App\Http\Controllers\API\v1\Calender\LogSummary;

use App\Http\Controllers\Controller;
use App\Libraries\Repositories\TrainingLogRepositoryEloquent;
use App\Libraries\Repositories\CompletedTrainingProgramRepositoryEloquent;
use App\Models\CustomCommonLibrariesDetails;
use App\Supports\SummaryCalculationTrait;
use Illuminate\Http\Request;

class SummaryCalculationController extends Controller
{
    use SummaryCalculationTrait;
    protected $trainingLogRepository;
    protected $completedTrainingProgramRepository;

    public function __construct(
        TrainingLogRepositoryEloquent $trainingLogRepository,
        CompletedTrainingProgramRepositoryEloquent $completedTrainingProgramRepository
    ) {
        $this->trainingLogRepository = $trainingLogRepository;
        $this->completedTrainingProgramRepository = $completedTrainingProgramRepository;
    }

    /**
     * generateSummaryDetails => Generate Training Log Summary Details
     *
     * @param  mixed $request
     * @return void
     */

    public function generateSummaryDetails(Request $request)
    {
        $input = $request->all();
        $validation = $this->requiredValidation(['id' /* , 'status' */], $input);
        if (isset($validation) && $validation['flag'] == false) {
            return $this->sendBadRequest(null, $validation['message']);
        }

        # 1 Get Training Log Details
        $trainingLog = $this->getTrainingLogDetails($input['id']);
        if (!!!isset($trainingLog)) {
            return $this->sendBadRequest(null, __('validation.common.details_not_found', ['module' => "Training Details"]));
        }
        $trainingLog = $trainingLog->toArray();
        $activityCode = $trainingLog['training_activity']['code'];

        # 2 Get all Information
        $summaryResponse['id'] = $trainingLog['id'];
        $summaryResponse['user_detail'] = $trainingLog['user_detail'] ?? null;
        $summaryResponse['training_activity'] = $trainingLog['training_activity'] ?? null;
        $summaryResponse['training_goal'] = $trainingLog['training_goal'] ?? null;
        $summaryResponse['training_goal_custom'] = $trainingLog['training_goal_custom'] ?? null;
        $summaryResponse['training_intensity'] = $trainingLog['training_intensity'] ?? null;
        $summaryResponse['training_log_style'] = $trainingLog['training_log_style'] ?? null;
        $summaryResponse['workout_name'] = $trainingLog['workout_name'] ?? null;
        $summaryResponse['notes'] = $trainingLog['notes'] ?? null;
        $summaryResponse['comments'] = $trainingLog['comments'] ?? null;
        $summaryResponse['exercise'] = $trainingLog['exercise'] ?? null;
        $summaryResponse['outdoor_route_data'] = $trainingLog['outdoor_route_data'] ?? null; // To show the map for outdoor only.
        $summaryResponse['RPE'] = $trainingLog['RPE'] ?? null;

        $summaryResponse['date'] = $trainingLog['date'];
        $summaryResponse['targeted_hr'] = $trainingLog['targeted_hr'] ?? null;

        # 3 Apply Summary Calculations activity wise ( activity wise different calculations )
        if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
            /** generate calculations from RunCalculationsController controller and return it. */
            $response = app(RunCalculationsController::class)->generateRunCalculation($trainingLog);
            $summaryResponse = array_merge($summaryResponse, $response);

        } elseif (in_array($activityCode, [TRAINING_ACTIVITY_CODE_CYCLE_INDOOR, TRAINING_ACTIVITY_CODE_CYCLE_OUTDOOR])) {
            /** generate calculations from RunCalculationsController controller and return it. */
            $response = app(CycleCalculationsController::class)->generateCalculation($trainingLog, $activityCode);
            $summaryResponse = array_merge($summaryResponse, $response);

        } elseif (in_array($activityCode, [TRAINING_ACTIVITY_CODE_SWIMMING])) {
            $response = app(SwimmingController::class)->generateCalculation($trainingLog, $activityCode);
            $summaryResponse = array_merge($summaryResponse, $response);

        } else if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_OTHERS])) {
            $response = app(OtherCalculationController::class)->generateCalculation($trainingLog, $activityCode);
            if ($summaryResponse['exercise'][0]['speed'] != '') {
                $response['avg_pace_unit'] = 'min/km';
            }
            if ($summaryResponse['exercise'][0]['pace'] != '') {
                $response['avg_speed_unit'] = 'm/min';
                $response['avg_pace_unit'] = 'min/500m';
            }
            $summaryResponse = array_merge($summaryResponse, $response);
        } else {
            /** Else Means no Activity ( RESiSTANCE TRAINING LOG )*/
            // $response = app(ResistanceCalculationController::class)->generateCalculation($trainingLog, $activityCode);
            $response = app(ResistanceCalculationController::class)->generateCalculationForResistance($trainingLog, $activityCode);
            $response['additional_exercise'] = json_decode($response['additional_exercise']);
            // Convert 00:00:08 to 0:00:08
            $total_duration = explode(":", json_decode($response['total_duration']));
            if ($total_duration[0] == '00') {
                $first_char = 0;
            } else {
                $first_char = $total_duration[0];
            }
            $total_duration = $first_char . ':' . $total_duration[1] . ':' . $total_duration[2];
            // End
            $response['total_duration'] = $total_duration;
            $summaryResponse = array_merge($summaryResponse, $response);
        }
        // dd('check', $summaryResponse, $trainingLog);
        # 4 return all details.
        return $this->sendSuccessResponse($summaryResponse, __('validation.common.details_found', ['module' => "Summary"]));
    }
    public function generateTrainingProgramSummaryDetails(Request $request)
    {
        $input = $request->all();
        $validation = $this->requiredValidation(['id' /* , 'status' */], $input);
        if (isset($validation) && $validation['flag'] == false) {
            return $this->sendBadRequest(null, $validation['message']);
        }

        # 1 Get Training Log Details
        $trainingLog = $this->completedTrainingProgramRepository->getDetailsByInput(
            [
                'id' => $input['id'],
                'relation' => ['training_program_activity','program_detail' => ['user_detail']],
                'first' => true
            ]
        );
       
        if (!!!isset($trainingLog)) {
            return $this->sendBadRequest(null, __('validation.common.details_not_found', ['module' => "Training Details"]));
        }
        $trainingLog = $trainingLog->toArray();
        $activityCode = $trainingLog['training_program_activity']['code'];
        if(isset( $trainingLog['program_detail']['user_detail'])) {
            $trainingLog['user_detail'] = $trainingLog['program_detail']['user_detail'];
        }
        # 2 Get all Information
        $summaryResponse['id'] = $trainingLog['id'];
        $summaryResponse['user_detail'] = $trainingLog['user_detail'] ?? null;
        $summaryResponse['cardio_type_activity_id'] = $trainingLog['cardio_type_activity_id'] ?? null;
        //$summaryResponse['training_goal'] = $trainingLog['training_goal'] ?? null;
        //$summaryResponse['training_goal_custom'] = $trainingLog['training_goal_custom'] ?? null;
        //$summaryResponse['training_intensity'] = $trainingLog['training_intensity'] ?? null;
        //$summaryResponse['training_log_style'] = $trainingLog['training_log_style'] ?? null;
        //$summaryResponse['workout_name'] = $trainingLog['workout_name'] ?? null;
       // $summaryResponse['notes'] = $trainingLog['notes'] ?? null;
        //$summaryResponse['comments'] = $trainingLog['comments'] ?? null;
        $summaryResponse['exercise'] = $trainingLog['exercise'] ?? null;
        $summaryResponse['outdoor_route_data'] = $trainingLog['outdoor_route_data'] ?? null; // To show the map for outdoor only.
        //$summaryResponse['RPE'] = $trainingLog['RPE'] ?? null;

        $summaryResponse['date'] = $trainingLog['date'];
        //$summaryResponse['targeted_hr'] = $trainingLog['targeted_hr'] ?? null;

        # 3 Apply Summary Calculations activity wise ( activity wise different calculations )
        if($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_OUTDOOR) {
            $activityCode = TRAINING_ACTIVITY_CODE_RUN_OUTDOOR;
        } else {
            $activityCode = TRAINING_ACTIVITY_CODE_RUN_INDOOR;
        }
        if(isset($trainingLog['exercise'][0]['updated_duration'])) {
            $isDuration = $trainingLog['exercise'][0]['updated_duration'];
            $trainingLog['exercise'][0]['duration'] = $trainingLog['exercise'][0]['updated_duration'];
        }
        if(isset($trainingLog['exercise'][0]['updated_distance'])) {
            $trainingLog['exercise'][0]['distance'] = $trainingLog['exercise'][0]['updated_distance'];
        }
        if(isset($trainingLog['exercise'][0]['updated_distance'])) {
            $trainingLog['exercise'][0]['distance'] = $trainingLog['exercise'][0]['updated_distance'];
        }
        if(isset($trainingLog['exercise'][0]['updated_percentage'])) {
            $trainingLog['exercise'][0]['percentage'] = $trainingLog['exercise'][0]['updated_percentage'];
        }
        if(isset($trainingLog['training_program_activity'])) {
            $trainingLog['training_activity'] = $trainingLog['training_program_activity'];
        }
        if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
            /** generate calculations from RunCalculationsController controller and return it. */
            $response = app(RunCalculationsController::class)->generateRunCalculation($trainingLog);
           
            $summaryResponse = array_merge($summaryResponse, $response);

        } else {
            /** Else Means no Activity ( RESiSTANCE TRAINING LOG )*/
            // $response = app(ResistanceCalculationController::class)->generateCalculation($trainingLog, $activityCode);
            $response = app(ResistanceCalculationController::class)->generateCalculationForResistance($trainingLog, $activityCode);
            $response['additional_exercise'] = json_decode($response['additional_exercise']);
            // Convert 00:00:08 to 0:00:08
            $total_duration = explode(":", json_decode($response['total_duration']));
            if ($total_duration[0] == '00') {
                $first_char = 0;
            } else {
                $first_char = $total_duration[0];
            }
            $total_duration = $first_char . ':' . $total_duration[1] . ':' . $total_duration[2];
            // End
            $response['total_duration'] = $total_duration;
            $summaryResponse = array_merge($summaryResponse, $response);
        }
        // dd('check', $summaryResponse, $trainingLog);
        # 4 return all details.
        return $this->sendSuccessResponse($summaryResponse, __('validation.common.details_found', ['module' => "Summary"]));
    }

    public function generateSummaryDetailsNew(Request $request)
    {
        $input = $request->all();
        $validation = $this->requiredValidation(['id' /* , 'status' */], $input);
        if (isset($validation) && $validation['flag'] == false) {
            return $this->sendBadRequest(null, $validation['message']);
        }

        # 1 Get Training Log Details
        $trainingLog = $this->getTrainingLogDetails($input['id']);
        $final_total_duration = $trainingLog['total_duration'];
        /** Start
         * Modified By : Kishan J Gareja
         * Modified Date : 11-Mar-2021
         */
        if ($trainingLog['status'] == 'RESISTANCE') {
            $trainingLogWithExerciseLink = array();
            $targated_volume = $completed_volume = 0;
            foreach ($trainingLog['exercise'] as $key => $value) {
                $trainingLogWithExerciseLink[$key]['data'] = $value['data'];
                $trainingLogWithExerciseLink[$key]['is_completed'] = $value['is_completed'];
                if ($value['common_library_id'] != 0) {
                    $trainingLogWithExerciseLink[$key]['exercise_link'] = $this->getExerciseLink($value['common_library_id'], $trainingLog['user_id'], 'common_library');
                } else {
                    $trainingLogWithExerciseLink[$key]['exercise_link'] = $this->getExerciseLink($value['library_id'], $trainingLog['user_id'], 'custom_library');
                }
                $trainingLogWithExerciseLink[$key]['name'] = $value['name'];
                $trainingLogWithExerciseLink[$key]['common_library_id'] = $value['common_library_id'];
                $trainingLogWithExerciseLink[$key]['library_id'] = $value['library_id'];
                // if ($value['is_completed']) {
                // $targated_volume += $this->getTargetedVolume($value['data'], $trainingLog['training_intensity']['name']);
                // }
                $completed_volume += $this->getCompletedVolume($value['data'], $trainingLog['training_intensity']['name']);
            }
            $trainingLog['targated_volume'] = $targated_volume;
            $trainingLog['completed_volume'] = $completed_volume;
            $trainingLog['exercise'] = $trainingLogWithExerciseLink;
        }

        /** End Modification */
        if (!!!isset($trainingLog)) {
            return $this->sendBadRequest(null, __('validation.common.details_not_found', ['module' => "Training Details"]));
        }
        $trainingLog = $trainingLog->toArray();
        $total_duration = $this->totalDurationMinuteNew($trainingLog);
        $activityCode = $trainingLog['training_activity']['code'];

        # 2 Get all Information
        $summaryResponse['id'] = $trainingLog['id'];
        $summaryResponse['user_detail'] = $trainingLog['user_detail'] ?? null;
        $summaryResponse['training_activity'] = $trainingLog['training_activity'] ?? null;
        $summaryResponse['training_goal'] = $trainingLog['training_goal'] ?? null;
        $summaryResponse['training_goal_custom'] = $trainingLog['training_goal_custom'] ?? null;
        $summaryResponse['training_intensity'] = $trainingLog['training_intensity'] ?? null;
        $summaryResponse['training_log_style'] = $trainingLog['training_log_style'] ?? null;
        $summaryResponse['workout_name'] = $trainingLog['workout_name'] ?? null;
        $summaryResponse['notes'] = $trainingLog['notes'] ?? null;
        $summaryResponse['comments'] = $trainingLog['comments'] ?? null;
        $summaryResponse['exercise'] = $trainingLog['exercise'] ?? null;
        $summaryResponse['outdoor_route_data'] = $trainingLog['outdoor_route_data'] ?? null; // To show the map for outdoor only.
        $summaryResponse['RPE'] = $trainingLog['RPE'] ?? null;

        $summaryResponse['date'] = $trainingLog['date'];
        $summaryResponse['targeted_hr'] = $trainingLog['targeted_hr'] ?? null;
        $summaryResponse['targated_volume'] = $targated_volume ?? null;
        $summaryResponse['completed_volume'] = $completed_volume ?? null;

        # 3 Apply Summary Calculations activity wise ( activity wise different calculations )
        if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
            /** generate calculations from RunCalculationsController controller and return it. */
            $response = app(RunCalculationsController::class)->generateRunCalculation($trainingLog);
            $summaryResponse = array_merge($summaryResponse, $response);
        } elseif (in_array($activityCode, [TRAINING_ACTIVITY_CODE_CYCLE_INDOOR, TRAINING_ACTIVITY_CODE_CYCLE_OUTDOOR])) {
            /** generate calculations from RunCalculationsController controller and return it. */
            $response = app(CycleCalculationsController::class)->generateCalculation($trainingLog, $activityCode);
            $summaryResponse = array_merge($summaryResponse, $response);
        } elseif (in_array($activityCode, [TRAINING_ACTIVITY_CODE_SWIMMING])) {
            $response = app(SwimmingController::class)->generateCalculation($trainingLog, $activityCode);
            $summaryResponse = array_merge($summaryResponse, $response);
        } else if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_OTHERS])) {
            $response = app(OtherCalculationController::class)->generateCalculation($trainingLog, $activityCode);
            if ($summaryResponse['exercise'][0]['speed'] != '') {
                $response['avg_pace_unit'] = 'min/km';
            }
            if ($summaryResponse['exercise'][0]['pace'] != '') {
                $response['avg_speed_unit'] = 'm/min';
                $response['avg_pace_unit'] = 'min/500m';
            }
            $summaryResponse = array_merge($summaryResponse, $response);
        } else {
            /** Else Means no Activity ( RESiSTANCE TRAINING LOG )*/
            $response = app(ResistanceCalculationController::class)->generateCalculationForResistance($trainingLog, $activityCode);
            $summaryResponse = array_merge($summaryResponse, $response);
        }
        // dd('check', $summaryResponse, $trainingLog);
        # 4 return all details.
        return $this->sendSuccessResponse($summaryResponse, __('validation.common.details_found', ['module' => "Summary"]));
    }

    /** Start
     * Modified By : Kishan J Gareja
     * Modified Date : 11-Mar-2021
     */
    public function getExerciseLink($common_library_id, $user_id, $type)
    {
        $exercise_link = "";
        if ($type == 'common_library' && $user_id) {
            $exercise = CustomCommonLibrariesDetails::where('common_libraries_id', $common_library_id)->where('user_id', $user_id)->first();
            if (isset($exercise->exercise_link) && $exercise->exercise_link != '') {
                $exercise_link = $exercise->exercise_link;
            }
        } else {
            $exercise = \DB::table('libraries')->where('id', $common_library_id)->first();
            if (isset($exercise->exercise_link) && $exercise->exercise_link != '') {
                $exercise_link = $exercise->exercise_link;
            }
        }
        return $exercise_link;
    }

    public function getCompletedVolume($params, $training_intensity)
    {
        $grand_total = 0;
        foreach ($params as $key => $value) {
            if ($value['is_completed'] && $value['is_completed_rest']) {
                if ($value['reps'] != '') {
                    $grand_total += (int) $value['weight'] * (int) $value['reps'];
                } else {
                    $duration = explode(':', $value['duration']);
                    $minutes = $duration[0] ? $duration[0] : 0;
                    $secs = $duration[1] ? $duration[1] : 0;
                    $totalSecs = ($minutes * 60) + $secs;
                    if ($training_intensity == 'Low') {
                        $grand_total += $totalSecs / 4;
                    } elseif ($training_intensity == 'Moderately-low') {
                        $grand_total += $totalSecs / 5;
                    } elseif ($training_intensity == 'Moderate') {
                        $grand_total += $totalSecs / 6;
                    } elseif ($training_intensity == 'Moderately-high') {
                        $grand_total += $totalSecs / 4;
                    } elseif ($training_intensity == 'High') {
                        $grand_total += $totalSecs / 2;
                    }
                }
            }
        }
        return $grand_total;
    }
    /** End Modification */

    /**
     * getTrainingLogDetails
     *
     * @param  mixed $id
     * @param  mixed $is_completed
     * @return object
     */
    public function getTrainingLogDetails($id, $is_completed = true)
    {
        $logRequest = [
            'id' => $id,
            'relation' => [
                'training_activity',
                'training_goal',
                'training_intensity',
                'training_log_style',
                'user_detail',
            ],
            'training_activity_list' => ['id', "name", 'code', 'icon_path', 'icon_path_red', 'icon_path_white'],
            'training_goal_list' => ['id', "name", 'code', 'target_hr'],
            'training_intensity_list' => ['id', "name", 'code', 'target_hr'],
            'training_log_style_list' => ['id', "name", 'code', 'mets'],
            'user_detail_list' => ['id', "name", "photo", 'weight', 'height', 'date_of_birth', 'gender'],
            // "is_complete" => $is_completed,
            'first' => true,
        ];
        /* if ($is_completed == true) {
        $logRequest['is_complete'] = $is_completed;
        } */
        return $this->trainingLogRepository->getDetailsByInput($logRequest);
        // return $trainingLog;
    }
}