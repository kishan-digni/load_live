<?php

namespace App\Http\Controllers\API\v1\Calender;

use Illuminate\Http\Request;
use App\Supports\DateConvertor;
use App\Models\TrainingPrograms;
use App\Models\CompletedTrainingProgram;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Http\Controllers\HelperController;
use App\Http\Controllers\API\v1\Calender\LogSummary\RunCalculationsController;
use App\Libraries\Repositories\WorkoutWiseLapRepositoryEloquent;
use App\Libraries\Repositories\WeekWiseWorkoutRepositoryEloquent;
use App\Libraries\Repositories\TrainingProgramsRepositoryEloquent;
use App\Libraries\Repositories\CommonProgramsWeekRepositoryEloquent;
use App\Libraries\Repositories\CommonProgramsWeeksLapsRepositoryEloquent;
use App\Libraries\Repositories\WeekWiseFrequencyMasterRepositoryEloquent;
use App\Libraries\Repositories\CompletedTrainingProgramRepositoryEloquent;
use App\Libraries\Repositories\SettingTrainingRepositoryEloquent;
use App\Supports\SummaryCalculationTrait;

class TrainingProgramController1 extends Controller
{
    use DateConvertor , SummaryCalculationTrait;

    protected $moduleName = "Training program";

    protected $workoutWiseLapRepository;
    protected $weekWiseWorkoutRepository;
    protected $settingTrainingRepository;
    protected $trainingProgramsRepository;
    protected $commonProgramsWeekRepository;
    protected $commonProgramsWeeksLapsRepository;
    protected $weekWiseFrequencyMasterRepository;
    protected $completedTrainingProgramRepository;

    /**
     * __construct => Repository Injection
     *
     * @param  mixed $trainingProgramsRepository
     *
     * @return void
     */
    public function __construct(
        WorkoutWiseLapRepositoryEloquent $workoutWiseLapRepository,
        SettingTrainingRepositoryEloquent $settingTrainingRepository,
        WeekWiseWorkoutRepositoryEloquent $weekWiseWorkoutRepository,
        TrainingProgramsRepositoryEloquent $trainingProgramsRepository,
        CommonProgramsWeekRepositoryEloquent $commonProgramsWeekRepository,
        WeekWiseFrequencyMasterRepositoryEloquent $weekWiseFrequencyMasterRepository,
        CommonProgramsWeeksLapsRepositoryEloquent $commonProgramsWeeksLapsRepository,
        CompletedTrainingProgramRepositoryEloquent $completedTrainingProgramRepository
    ) {
        $this->workoutWiseLapRepository = $workoutWiseLapRepository;
        $this->weekWiseWorkoutRepository = $weekWiseWorkoutRepository;
        $this->settingTrainingRepository = $settingTrainingRepository;
        $this->trainingProgramsRepository = $trainingProgramsRepository;
        $this->commonProgramsWeekRepository = $commonProgramsWeekRepository;
        $this->commonProgramsWeeksLapsRepository = $commonProgramsWeeksLapsRepository;
        $this->weekWiseFrequencyMasterRepository = $weekWiseFrequencyMasterRepository;
        $this->completedTrainingProgramRepository = $completedTrainingProgramRepository;
    }

    /**
     * store => create training program
     *
     * @param  mixed $request
     *
     * @return void
     */
    public function store(Request $request)
    {
        $input = $request->all();
        /** check status and type validation */
        $validation = $this->requiredValidation(['status', 'type'], $input);
        if (isset($validation) && $validation['flag'] === false) {
            return $this->sendBadRequest(null, $validation['message']);
        }

        /** RESISTANCE and PRESET */
        if ($input['status'] === TRAINING_PROGRAM_STATUS_RESISTANCE && $input['type'] === TRAINING_PROGRAM_TYPE_PRESET) {
            $response = $this->storeResistanceAndCardioPresetFn($input);
            if (isset($response) && $response['flag'] == false) {
                return $this->sendBadRequest(null, $response['message']);
            }
            return $this->sendSuccessResponse($response['data'], $response['message']);
            /** RESISTANCE and CUSTOM */ // FIXME Remain to store
        } elseif ($input['status'] == TRAINING_PROGRAM_STATUS_RESISTANCE && $input['type'] == TRAINING_PROGRAM_TYPE_CUSTOM) {
            $response = $this->storeResistanceCustomFn($input);
            if (isset($response) && $response['flag'] == false) {
                return $this->sendBadRequest(null, $response['message']);
            }
            return $this->sendSuccessResponse($response['data'], $response['message']);
            /** CARDIO and PRESET */
        } elseif ($input['status'] == TRAINING_PROGRAM_STATUS_CARDIO && $input['type'] == TRAINING_PROGRAM_TYPE_PRESET) {
            $response = $this->storeResistanceAndCardioPresetFn($input);
            if (isset($response) && $response['flag'] == false) {
                return $this->sendBadRequest(null, $response['message']);
            }
            return $this->sendSuccessResponse($response['data'], $response['message']);

            /** CARDIO and CUSTOM */ // FIXME Remain to store
        } elseif ($input['status'] == TRAINING_PROGRAM_STATUS_CARDIO && $input['type'] == TRAINING_PROGRAM_TYPE_CUSTOM) {
            # code...
        }

        /** if status and type was not found */
        return $this->sendBadRequest(null, __("validation.common.invalid_key1_key2", ["key1" => "status", "key2" => "type"]));
    }
    /** Start
         * Modified By : Kishan J Gareja (A)
         * Modified Date : 18-March-2021
         */
    public function programFlags(Request $request){
        $input = $request->all();
       
        $program = $this->trainingProgramsRepository->getDetailsByInput([
            'user_id' => Auth::id(),
        ]);        
            $current_date = date('Y-m-d');
            $response['is_cardio_preset_delete'] = $response['is_cardio_custom_edit'] = $response['is_resistance_preset_delete'] = $response['is_resistance_custom_edit'] =  0;
            $response['is_cardio'] = $response['is_resistance'] = 1;        
        foreach ($program as $key => $value) {
    
            if ($value->status == TRAINING_PROGRAM_STATUS_CARDIO && $value->type == TRAINING_PROGRAM_TYPE_PRESET && $value->end_date >= $current_date) {
                $response['is_cardio_preset_delete'] = 1;                
                $response['is_cardio_preset_delete_id'] = $value->id;                
            }
            
            if ($value->status == TRAINING_PROGRAM_STATUS_CARDIO && $value->end_date > $current_date) {                
                $response['is_cardio'] = 0;
            }

            if ($value->status == TRAINING_PROGRAM_STATUS_RESISTANCE && $value->end_date > $current_date) {
                $response['is_resistance'] = 0;
            }

            if ($value->status == TRAINING_PROGRAM_STATUS_RESISTANCE && $value->type == TRAINING_PROGRAM_TYPE_PRESET && $value->end_date >= $current_date) {
                $response['is_resistance_preset_delete'] = 1;
                $response['is_resistance_preset_delete_id'] = $value->id;
            }

            if ($value->status == TRAINING_PROGRAM_STATUS_CARDIO && $value->type == TRAINING_PROGRAM_TYPE_CUSTOM && $value->end_date >= $current_date) {
                $response['is_cardio_custom_edit'] = 1;
                $response['is_cardio_custom_edit_id'] = $value->id;
            }

            if ($value->status == TRAINING_PROGRAM_STATUS_RESISTANCE && $value->type == TRAINING_PROGRAM_TYPE_CUSTOM && $value->end_date >= $current_date) {
                $response['is_resistance_custom_edit'] = 1;
                $response['is_resistance_custom_edit_id'] = $value->id;
            }
        }
        $result['data'] = $response;
        return $this->sendSuccessResponse($result['data'], "Training program details retrieve successfully.");
    }
    /** End Modified */
    /** Start
         * Modified By : Kishan J Gareja (A)
        * Modified Date : 18-March-2021
    */
    public function deleteTrainingPrograms(Request $request){
        $input = $request->all();
        /** validation */
        $validation = $this->requiredAllKeysValidation(['training_program_id'], $input);
        if (isset($validation) && $validation['flag'] === false) {
            return $this->sendBadRequest(null, $validation['message']);
        }
        $deleteTrainingPrograms = $this->trainingProgramsRepository->delete($input['training_program_id']);
        return $this->sendSuccessResponse(null, "Training program deleted successfully.");
    }
       /** End Modified */
    /**
     * storeResistanceAndCardioPresetFn => to create training program with status type
     *
     * @param  mixed $input
     *
     * @return void
     */
    public function storeResistanceAndCardioPresetFn($input)
    {
        /** validation */
        $validator = TrainingPrograms::validation($input);
        if ($validator->fails()) {
            return $this->makeError(null, $validator->errors()->first());
        }
        $input['start_date'] = $this->isoToUTCFormat($input['start_date']);
        $input['end_date'] = $this->isoToUTCFormat($input['end_date']);
        // $input['date'] = $this->isoToUTCFormat($input['date']); // no need to convert UTC bcz converted in from model
        $createdTraining = $this->trainingProgramsRepository->create($input);
        $createdTraining = $createdTraining->fresh();
        return $this->makeResponse($createdTraining, __("validation.common.created", ["module" => $this->moduleName]));
    }

    /**
     * storeResistanceCustomFn => create resistance with custom program
     *
     * @param  mixed $input
     *
     * @return void
     */
    public function storeResistanceCustomFn($input = null)
    {
        /** validation */
        $validator =  TrainingPrograms::validation($input);
        if ($validator->fails()) {
            return $this->makeError(null, $validator->errors()->first());
        }

        /** store data */
        $trainingProgram = $this->trainingProgramsRepository->create($input);
        $trainingProgram = $trainingProgram->fresh();

        return $this->makeResponse($trainingProgram, __("validation.common.saved", ["module" => $this->moduleName]));
    }

    public function createDailyProgram(Request $request)
    {
        $input = $dummyInput = $request->all();

        /** required ( start of the day date ) and ( end of the day date ) of selected date */
        $validation = $this->requiredAllKeysValidation(['program_id', 'start_date', 'end_date'], $input);
        if (isset($validation) && $validation['flag'] === false) {
            return $this->sendBadRequest(null, $validation['message']);
        }
        /** convert start and end date to UTC format */
        $input['start_date'] = $this->isoToUTCFormat($input['start_date']);
        $input['end_date'] = $this->isoToUTCFormat($input['end_date']);

        # 1. check already exists programs
        $todaysProgramExercise = $this->completedTrainingProgramRepository->getDetailsByInput(
            [
                'program_id' => $input['program_id'],
                'start_date' => $input['start_date'],
                'end_date' => $input['end_date'],
                'relation' => ['common_programs_weeks_detail', 'program_detail', 'common_programs_weeks_laps_details'],
                'first' => true
            ]
        );
        /** if exists in current day then return error message  " you already exercised today. " */
        if (!!$todaysProgramExercise) {
            $todaysProgramExercise = $todaysProgramExercise->toArray();
            $todaysProgramExercise['common_programs_weeks_laps_details'] = $this->callHelperControllerCalculation($todaysProgramExercise);
            return $this->sendSuccessResponse($todaysProgramExercise, __('validation.common.key_already_exist', ['key' => $this->moduleName]));
        }
        // dd('create here', $todaysProgramExercise);

        //** NOTE  DO NOT REMOVE THIS CODE */
        /** get given date wise ( start of the week ) and ( end of the week )  */
        // $dateWiseStartOfTheWeek = $this->getDateWiseStartOfTheWeek($input['start_date']);
        // $dateWiseEndOfTheWeek = $this->getDateWiseEndOfTheWeek($input['end_date']);

        # 2. check in current week if data exists then
        // $currentWeeksProgramExercise = $this->completedTrainingProgramRepository->getDetailsByInput(
        //     [
        //         'program_id' => $input['program_id'],
        //         'start_date' => $dateWiseStartOfTheWeek,
        //         'end_date' => $dateWiseEndOfTheWeek,
        //         'sort_by' => ['common_programs_weeks_id', 'desc'],
        //         'first' => true
        //     ]
        // );

        /** if found this week then select common current week id */
        // if (isset($currentWeeksProgramExercise)) {
        //     $input['common_programs_weeks_id'] = $currentWeeksProgramExercise->common_programs_weeks_id;
        // } else {
        //     $dateWisePreviousStartOfTheWeek = $this->getDateWisePreviousStartOfTheWeek($input['start_date']);
        //     $datePreviousWiseEndOfTheWeek = $this->getDateWisePreviousEndOfTheWeek($input['end_date']);

        //     /** if not found then check previous week for common week id */
        //     $previousWeeksProgramExercise = $this->completedTrainingProgramRepository->getDetailsByInput(
        //         [
        //             'program_id' => $input['program_id'],
        //             'start_date' => $dateWisePreviousStartOfTheWeek,
        //             'end_date' => $datePreviousWiseEndOfTheWeek,
        //             'sort_by' => ['common_programs_weeks_id', 'desc'],
        //             'first' => true
        //         ]
        //     );
        //     if (isset($previousWeeksProgramExercise)) {
        //         $input['common_programs_weeks_id'] = $previousWeeksProgramExercise->common_programs_weeks_id;
        //     } else {

        /** get week number from selected date */
        $getSelectedWeekFromProgram = $this->getSelectedWeekNumberFromProgram($dummyInput);
        /** if not found the get common id from common week table using sequence desc */
        $commonWeekRequest = [
            'sequence' => $getSelectedWeekFromProgram,
            'sort_by' => ['sequence', 'asc'],
            'first' => true
        ];
        $commonProgramWeek = $this->commonProgramsWeekRepository->getDetailsByInput($commonWeekRequest);
        if (isset($commonProgramWeek)) {
            $input['common_programs_weeks_id'] = $commonProgramWeek->id;
        } else {
            /** if not found then set last sequence id of all weeks  */
            $commonWeekRequest = [
                'sort_by' => ['sequence', 'desc'],
                'first' => true
            ];
            $commonProgramWeek = $this->commonProgramsWeekRepository->getDetailsByInput($commonWeekRequest);
            $input['common_programs_weeks_id'] = $commonProgramWeek->id;
        }
        //     }
        // }
        $input['date'] = $this->isoToUTCFormat($dummyInput['start_date']);
        $createdProgram = $this->completedTrainingProgramRepository->create($input);
        $createdProgram = $createdProgram->fresh();
        $createdProgram =  $this->makeCustomRelation($createdProgram);
        // $createdProgram = $createdProgram->toArray();

        $createdProgram['common_programs_weeks_laps_details'] = $this->callHelperControllerCalculation($createdProgram->toArray());

        return $this->sendSuccessResponse($createdProgram, __('validation.common.saved', ['module' => $this->moduleName]));
    }

    /**
     * getSelectedWeekNumberFromProgram => get selected week number from training program range of weeks
     *
     * @param  mixed $input
     *
     * @return void
     */
    public function getSelectedWeekNumberFromProgram($input)
    {
        $program = $this->trainingProgramsRepository->getDetailsByInput([
            'id' => $input['program_id'],
            'list' => ['start_date', 'end_date'],
            'first' => true
        ]);
        $date = $this->isoToUTCFormat($input['start_date']);
        $date = explode(' ', $date);
        $dateRanges = $this->getAllWeeksDatesFromDateRange($program->start_date, $program->end_date, 'Y-m-d');
        foreach ($dateRanges as $index => $dayRange) {
            /** check in array if exists then return */
            if (in_array($date[0],  $dayRange)) {
                $weekCounterNumberIs = $index + 1;
                break;
                // dd('true', $index + 1, $date[0],  $dayRange, $dateRanges);
            }
        }
        // dd('week number ', $date[0],  isset($weekCounterNumberIs) ? $weekCounterNumberIs : count($dateRanges), $dateRanges);
        return isset($weekCounterNumberIs) ? $weekCounterNumberIs : count($dateRanges);
        // dd('date ranges ARE ', $date[0],  $dateRanges);
    }

    /**
     * makeCustomRelation => make custom relation and make reference it
     *
     * @param  mixed $createdProgram
     *
     * @return void
     */
    public function makeCustomRelation($createdProgram)
    {
        if (isset($createdProgram['program_id'])) {
            $createdProgram['program_detail'] = $this->trainingProgramsRepository->getDetailsByInput([
                'id' => $createdProgram['program_id'],
                'first' => true
            ]);
        }

        if (isset($createdProgram['week_wise_workout_id'])) {
            $createdProgram['week_wise_workout_detail'] = $this->weekWiseWorkoutRepository->getDetailsByInput([
                'id' => $createdProgram['week_wise_workout_id'],
                // 'relation' => ['week_wise_workout_laps_details'],
                'first' => true
            ]);
        }

        if (isset($createdProgram['common_programs_weeks_id'])) {
            $createdProgram['common_programs_weeks_detail'] = $this->commonProgramsWeekRepository->getDetailsByInput([
                'id' => $createdProgram['common_programs_weeks_id'],
                'first' => true
            ]);

            /** get multiple laps from common weeks program laps table */
            $createdProgram['common_programs_weeks_laps_details'] = $this->commonProgramsWeeksLapsRepository->getDetailsByInput([
                'common_programs_week_id' => $createdProgram['common_programs_weeks_detail']['id'],
                'is_active' => true
            ]);
        }
        return $createdProgram;
    }

    /**
     * callHelperControllerCalculation => for calculate vdot and speed from helper controller
     *
     * @param  mixed $completedTrainingProgram
     *
     * @return void
     */
    public function callHelperControllerCalculation($completedTrainingProgram = null)
    {
        $completedTrainingProgram = !!!is_array($completedTrainingProgram) ?  $completedTrainingProgram->toArray() : $completedTrainingProgram;

        if (isset($completedTrainingProgram) && isset($completedTrainingProgram['common_programs_weeks_laps_details'])) {
            $helperController = app(HelperController::class);
            foreach ($completedTrainingProgram['common_programs_weeks_laps_details'] as $index => $weeksLaps) {
                // dd('check data', $completedTrainingProgram->common_programs_weeks_laps_details->toArray());
                $newData = $helperController->calculate_V_DOT($weeksLaps);
                $newDatas[] = !!!is_array($newData) ?  $newData->toArray() : $newData;
                // $weeksLaps = $helperController->calculate_V_DOT($weeksLaps);
            }
            return $newDatas ?? null;
        }
    }


    /**
     * updateDailyProgram => update exorcizes and is_complete
     *
     * @param  mixed $request
     * @param  mixed $id
     *
     * @return void
     */
    public function updateDailyProgram(Request $request, $id)
    {
        $input = $request->all();

        #1. validate exorcizes
        $validation = $this->requiredValidation(['is_complete'/* , 'exercise' */], $input);
        if (isset($validation) && $validation['flag'] === false) {
            return $this->sendBadRequest(null, $validation['message']);
        }

        #1.1 Check Exorcizes is current date is today or not

        #2. Update Exorcizes
        $updatedProgram = $this->completedTrainingProgramRepository->updateRich($input, $id);
        return $this->sendSuccessResponse($updatedProgram, __('validation.common.saved', ['module' => $this->moduleName]));
    }


    /**
     * checkProgramIsAvailableOrNotToStore => check for programs is available or not
     *
     * @param  mixed $request
     *
     * @return void
     */
    public function checkProgramIsAvailableOrNotToStore(Request $request)
    {
        $input = $request->all();
        $validation = $this->requiredValidation(['start_date'], $input);
        if (isset($validation) && $validation['flag'] === false) {
            return $this->sendBadRequest(null, $validation['message']);
        }
        /** check date wise preset program is found or not */
        $trainingProgramCount = $this->trainingProgramsRepository->getDetailsByInput(
            [
                'user_id' => Auth::id(),
                "status" => $input['status'],
                'type' => TRAINING_PROGRAM_TYPE_PRESET,
                'start_date' => $input['start_date'],
                'end_date' => $input['end_date'],
                'first' => true,
                'is_count' => true,
            ]
        );

        /** check if data found then show error */
        if (isset($trainingProgramCount) &&  $trainingProgramCount > 0) {
            return $this->sendBadRequest(null, __('validation.common.can_not_create_program_to_this_date'));
        } else {
            return $this->sendSuccessResponse(null, "");
        }
    }
    public function saveGeneratedCalculationsTrainingProgram(Request $request)
    {
       
        $input = $request->input();
        $validation = $this->requiredValidation(['id'], $input);
        if (isset($validation) && $validation['flag'] == false) {
            return $this->sendBadRequest(null, $validation['message']);
        }
       
        # 1 Get Training Log Details
        $log = $this->completedTrainingProgramRepository->getDetailsByInput(
            [
                'id' => $input['id'],
                'relation' => ['training_program_activity'],
                'first' => true
            ]
        );
        if (!!!isset($log)) {
            return $this->sendBadRequest(null, __('validation.common.details_not_found', ['module' => $this->moduleName]));
        }
        $log = $log->toArray();
      
        /** check if generated calculation exists */
        if (isset($log['generated_calculations'])) {
           
            /** if already updated then required generated_calculations */
            $validation = $this->requiredValidation(['generated_calculations'], $input);
            if (isset($validation) && $validation['flag'] == false) {
                return $this->sendBadRequest(null, $validation['message']);
            }

            $activityCode = $log['training_program_activity']['code'];
            if($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_OUTDOOR) {
                $activityCode = TRAINING_ACTIVITY_CODE_RUN_OUTDOOR;
            } elseif($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_INDOOR) {
                $activityCode = TRAINING_ACTIVITY_CODE_RUN_INDOOR;
            }
            /** generate all new calculation */
            $generated_calculations = [];
            $response = $this->getGeneratedCalculationFromByActivity($log, $activityCode);
            $generated_calculations = array_merge($generated_calculations, $response);

            /** make a new request for replace old data */
            $storedDuration = $log['generated_calculations']['total_duration']; // TEST
            $storedDistance = $log['generated_calculations']['total_distance']; // TEST
            $log['generated_calculations'] = $generated_calculations;
            $updateRequest = $log['generated_calculations'];
            $log['generated_calculations']['total_duration'] = $storedDuration; // TEST
            $log['generated_calculations']['total_distance'] = round($storedDistance, 1); // TEST

            /** working code */
            $updateRequest['total_duration'] =
            $this->checkFromGeneratedCalculationByKey($log['generated_calculations'], $input['generated_calculations'], 'total_duration');
            $durationArr = explode(':', $updateRequest['total_duration']);
            $durationArr[0] = (int) $durationArr[0];
            $updateRequest['total_duration'] = implode(':', $durationArr);
            $updateRequest['total_distance'] =
            $this->checkFromGeneratedCalculationByKey($log['generated_calculations'], $input['generated_calculations'], 'total_distance');
            $updateRequest['total_distance'] = round($updateRequest['total_distance'], 1);

            /** convert 01:40 to 1:40 pace */
            $updateRequest['avg_pace'] =
            $this->checkFromGeneratedCalculationByKey($log['generated_calculations'], $input['generated_calculations'], 'avg_pace');
            $paceArr = explode(':', $updateRequest['avg_pace']);
            $paceArr[0] = (int) $paceArr[0];
            $updateRequest['avg_pace'] = implode(':', $paceArr);
            $updateRequest['avg_speed'] =
            $this->checkFromGeneratedCalculationByKey($log['generated_calculations'], $input['generated_calculations'], 'avg_speed');

            $ActivityCalculationController = $this->getActivityCalculationControllerNameByActivityCode($activityCode);
            if (isset($input['generated_calculations']['total_duration'])) {
                /** if user update in total_duration then calculate total_distance */
                $newSpeedAndPace = $this->generateNewSpeedAndPaceFromDurationAndDistanceViaActivityCodeName($log, $input['generated_calculations']['total_duration']); // OLD
                // NEW
                // $newSpeedAndPace = $this->generatePaceSpeedByTotalDistance_divide_by_TotalDuration(
                //     $log['generated_calculations']['total_distance'],
                //     $input['generated_calculations']['total_duration']
                // );
                /** set new calculated pace and speed value. */
                $updateRequest['total_duration_minutes'] = $newSpeedAndPace['total_duration_minutes']; // updated duration minutes
                $updateRequest['avg_pace'] = $newSpeedAndPace['avg_pace'];
                $paceArr = explode(':', $updateRequest['avg_pace']);
                $paceArr[0] = (int) $paceArr[0];
                $updateRequest['avg_pace'] = implode(':', $paceArr);
                $updateRequest['avg_speed'] = $newSpeedAndPace['avg_speed'];
            } else if (isset($input['generated_calculations']['total_distance'])) {
                /** if user update in total_distance then calculate avg_speed OR avg_pace */
                $newSpeedAndPace = $this->generateNewSpeedAndPaceFromDistanceAndDurationViaActivityCodeName($log, $input['generated_calculations']['total_distance']); // OLD
                // $newSpeedAndPace = $this->generatePaceSpeedByTotalDistance_divide_by_TotalDuration(
                //     $input['generated_calculations']['total_distance'],
                //     $log['generated_calculations']['total_duration'],
                //     $log['generated_calculations']['total_duration_minutes']
                // ); // NEW

                /** set new calculated pace and speed value. */
                $updateRequest['total_duration_minutes'] = $newSpeedAndPace['total_duration_minutes']; // updated duration minutes
                $updateRequest['avg_pace'] = $newSpeedAndPace['avg_pace'];
                $paceArr = explode(':', $updateRequest['avg_pace']);
                $paceArr[0] = (int) $paceArr[0];
                $updateRequest['avg_pace'] = implode(':', $paceArr);
                $updateRequest['avg_speed'] = $newSpeedAndPace['avg_speed'];
                // avg_speed OR avg_pace
            } else if (isset($input['generated_calculations']['avg_pace'])) {
                /** if user update in avg_speed then calculate total_duration */
                $newDuration = $this->generateNewDurationFromDistanceAndPaceViaActivityCodeName($log, $input['generated_calculations']['avg_pace']);
                /** set new calculated distance value. */
                $updateRequest['total_duration_minutes'] = $this->convertDurationToMinutes($newDuration);
                $updateRequest['total_duration'] = $newDuration;
                $durationArr = explode(':', $updateRequest['total_duration']);
                $durationArr[0] = (int) $durationArr[0];
                $updateRequest['total_duration'] = implode(':', $durationArr);
                $total_duration_hour= $this->convertDurationToHours($newDuration);
                $avg_speed=  round($updateRequest['total_distance']/$total_duration_hour,2);
                $updateRequest['avg_speed'] =$avg_speed ;
            } else if (isset($input['generated_calculations']['avg_speed'])) {
                /** if user update in avg_pace then calculate total_duration */
                $newDuration = $this->generateNewDurationFromDistanceAndSpeedViaActivityCodeName($log, $input['generated_calculations']['avg_speed']);
                $updateRequest['total_duration_minutes'] = $this->convertDurationToMinutes($newDuration);
                $updateRequest['total_duration'] = $newDuration;
                $durationArr = explode(':', $updateRequest['total_duration']);
                $durationArr[0] = (int) $durationArr[0];
                $updateRequest['total_duration'] = implode(':', $durationArr);
                $total_duration_hour= $this->convertDurationToMinutes($newDuration);
                $avg_pace=  round($total_duration_hour/$updateRequest['total_distance'],2);
                $updateRequest['avg_pace'] = $this->convertPaceNumberTo_M_S_format($avg_pace) ;
                // total_duration
            }

            $log['generated_calculations'] = $updateRequest;

            /** store calculated values */
            $logUpdated = $this->completedTrainingProgramRepository->updateRich(['generated_calculations' => $updateRequest], $log['id']);

            /** check for pase is selected or not */
            // $is_pace_selected = !!collect($log['exercise'])->whereIn('pace', [null])->pluck('pace')->first();
            $is_pace_selected = isset($log['exercise'][0], $log['exercise'][0]['pace']) ? true : false;
            // if ($is_pace_selected == false) {
            //     $is_pace_selected = !!collect($log['generated_calculations'])->pluck('pace')->first();
            // }

            $response = [
                'cardio_type_activity_id' => $log['cardio_type_activity_id'],
                'generated_calculations' => $updateRequest,
                'exercise' => $log['exercise'],
                'is_pace_selected' => $is_pace_selected ?? false,
            ];

            return $this->sendSuccessResponse($response, __('validation.common.updated', ['module' => $this->moduleName]));
        } else {
           
            # Initial time
            if (!is_array($log)) {
                $log = $log->toArray();
            }
            $activityCode = $log['training_program_activity']['code'];
            if($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_OUTDOOR) {
                $activityCode = TRAINING_ACTIVITY_CODE_RUN_OUTDOOR;
            } elseif($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_INDOOR) {
                $activityCode = TRAINING_ACTIVITY_CODE_RUN_INDOOR;
            }
            $generated_calculations = [];

            /** get total_duration, total_distance, avg_speed, and avg_pace from CycleCalculationsController. */

            $response = $this->getGeneratedCalculationFromByActivity($log, $activityCode);
           
            $generated_calculations = array_merge($generated_calculations, $response);
            /** store calculated values */
            $logUpdated = $this->completedTrainingProgramRepository->updateRich(['generated_calculations' => $generated_calculations], $input['id']);
            /** return first time generated */

            /** check for pase is selected or not */
            // $is_pace_selected = !!collect($log['exercise'])->pluck('pace')->first();
            $is_pace_selected = isset($log['exercise'][0], $log['exercise'][0]['pace']) ? true : false;
            // if ($is_pace_selected == false) {
            //     $is_pace_selected = !!collect($log['generated_calculations'])->pluck('pace')->first();
            // }
            $response = [
                'cardio_type_activity_id' => $log['cardio_type_activity_id'],
                'generated_calculations' => $logUpdated->generated_calculations,
                'exercise' => $logUpdated->exercise,
                'is_pace_selected' => $is_pace_selected ?? false,
            ];
            return $this->sendSuccessResponse($response, __('validation.common.updated', ['module' => $this->moduleName]));
        }
    }

    public function getGeneratedCalculationFromByActivity($trainingLog, $activityCode)
    {
        // MAIN
        $response = [];
        $isDuration = '';
        
        if(isset($trainingLog['exercise'])){
            foreach($trainingLog['exercise'] as $key => $exercise) {
                if(isset($exercise['updated_duration'])) {
                    $trainingLog['exercise'][$key]['duration'] =  $exercise['updated_duration'];
                }
                if(isset($exercise['updated_distance'])) {
                    $trainingLog['exercise'][$key]['distance'] =  $exercise['updated_distance'];
                }
                if(isset($exercise['updated_rest'])) {
                    $trainingLog['exercise'][$key]['rest'] =  $exercise['updated_rest'];
                }
                if(isset($exercise['updated_percentage'])) {
                    $trainingLog['exercise'][$key]['percentage'] =  $exercise['updated_percentage'];
                }
                
            }
        }

        $ActivityCalculationController = $this->getActivityCalculationControllerNameByActivityCode($activityCode);

        # START Total Duration
        $calculateDuration = $ActivityCalculationController->calculateDuration(
            $trainingLog,
            $isDuration
        );
      
        $response = array_merge($response, $calculateDuration);
        # END Total Duration
       
        # START Total Distance
        $calculateTotalDistance = $ActivityCalculationController->calculateTotalDistance(
            $trainingLog,
            $activityCode,
            $isDuration
        );
        $response = array_merge($response, $calculateTotalDistance);
        # END Total Distance
        # START Average Speed (can be either km/hr OR mile/hr, depending on the unit setting)
        if (method_exists($ActivityCalculationController, 'calculateAverageSpeed')) {
            $calculateAverageSpeed = $ActivityCalculationController->calculateAverageSpeed(
                $trainingLog['exercise'],
                $activityCode,
                $response['total_distance'],
                $response['total_duration_minutes']
            );
        } else if (method_exists($ActivityCalculationController, 'calculateAverageSpeedPace')) {
            $calculateAverageSpeed = $ActivityCalculationController->calculateAverageSpeedPace(
                $trainingLog['exercise'],
                $response['avg_pace'] ?? 0,
                $response['total_distance'],
                $response['total_duration_minutes']
            );
        } else {
            $calculateAverageSpeed = [
                'avg_speed' => null,
                'avg_speed_unit' => null,
                'avg_speed_code' => null,
            ];
        }
        $response = array_merge($response, $calculateAverageSpeed);
        # END Average Speed (can be either km/hr OR mile/hr, depending on the unit setting)

        # 3. START Average Pace
        /** check for method exists in thi controller */
        if (method_exists($ActivityCalculationController, 'calculateAvgPace')) {
            $calculateAvgPace = $ActivityCalculationController->calculateAvgPace(
                $trainingLog['exercise'],
                $response['total_distance'],
                $response['total_duration_minutes'],
                $activityCode
            );
        } else {
            $calculateAvgPace = [
                'avg_pace' => null,
                'avg_pace_unit' => null,
                'avg_pace_code' => null,
            ];
        }
        $response = array_merge($response, $calculateAvgPace);
        # 3. END Average Pace

        return $response;
    }

    public function getActivityCalculationControllerNameByActivityCode($activityCode)
    {
        if($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_OUTDOOR) {
            $activityCode = TRAINING_ACTIVITY_CODE_RUN_OUTDOOR;
        } elseif($activityCode == TRAINING_PROGRAM_ACTIVITY_CODE_INDOOR) {
            $activityCode = TRAINING_ACTIVITY_CODE_RUN_INDOOR;
        }
        if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
            return app(RunCalculationsController::class);
        } else {
            return app(ResistanceCalculationController::class);
        }
    }

    public function checkFromGeneratedCalculationByKey($log_generated_calculations, $input_generated_calculations, $key)
    {
        /** set value from input if not in input then from get log */
        return isset($input_generated_calculations[$key])
        ? $input_generated_calculations[$key]
        : (isset($log_generated_calculations[$key])
            ? $log_generated_calculations[$key]
            : null);
    }
    public function generateNewSpeedAndPaceFromDurationAndDistanceViaActivityCodeName($trainingLog, $newInputtedTotalDuration)
    {
        $newDistance = $trainingLog['generated_calculations']['total_distance'] ?? 0;

        $durationMinutes = $this->convertDurationToMinutes($newInputtedTotalDuration);

        // if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
        /** Run activity */
        # Pace = Time / Distance
        $avgPace = ($newDistance == 0 ? 0 : ($durationMinutes / $newDistance));
        $avgPace = round($avgPace, 4);

        # Speed = 60 / Pace
        $avgSpeed = ($avgPace == 0 ? 0 : round((60 / $avgPace), 1));

        $newAvgPace = $this->convertPaceNumberTo_M_S_format($avgPace);
        // dd(
        //     'Calculation Pace From Duration Here',
        //     "durationMinutes " . $durationMinutes,
        //     "newDistance " . $newDistance,
        //     " ($durationMinutes / $newDistance) => " .  $avgPace,
        //     "avgPace " . $avgPace,
        //     "newAvgPace " . $newAvgPace,
        //     "avgSpeed " . $avgSpeed
        // );
        return [
            'total_duration_minutes' => $durationMinutes,
            'avg_pace' => $newAvgPace,
            'avg_speed' => $avgSpeed,
        ];
    }
    public function generateNewDurationFromDistanceAndPaceViaActivityCodeName($trainingLog, $newInputtedPace)
    {
        $newDurationMinutes = 0;

        $avgPace = $newInputtedPace;
        $activityCode = $trainingLog['training_program_activity']['code'];
        $distance = $trainingLog['generated_calculations']['total_distance'];
        $distance = round($distance, 1);

        $paceToSpeedArray = explode(':', $avgPace);
        $paceToMinutes = ($paceToSpeedArray[0]) + ($paceToSpeedArray[1] / 60);
        $newSpeed = round((60 / $paceToMinutes), 4);
        $newDurationMinutes = round((($distance / $newSpeed) * 60), 2);

        return $this->convertDurationMinutesToTimeFormat($newDurationMinutes);
        // return (gmdate("H:i:s", (($newDurationMinutes ?? 0)  * 60)));
    }
    public function generateNewDurationFromDistanceAndSpeedViaActivityCodeName($trainingLog, $newInputtedSpeed)
    {
        $activityCode = $trainingLog['training_program_activity']['code'];
        $distance = $trainingLog['generated_calculations']['total_distance'];

        // if (in_array($activityCode, [TRAINING_ACTIVITY_CODE_RUN_INDOOR, TRAINING_ACTIVITY_CODE_RUN_OUTDOOR])) {
        // Duration = Distance / Speed
        $newDurationMinutes = ($distance / $newInputtedSpeed) * 60;
        // $newDuration = (gmdate("H:i:s", (($duration ?? 0)  * 60)));
        // }
        return (gmdate("H:i:s", (($newDurationMinutes ?? 0) * 60)));
    }
    /**
     * generateNewSpeedAndPaceFromDistanceAndDurationViaActivityCodeName => Calculate New Speed | Pace
     *
     * @param  mixed $trainingLog
     * @param  mixed $newInputtedDistance
     * @return void
     */
    public function generateNewSpeedAndPaceFromDistanceAndDurationViaActivityCodeName($trainingLog, $newInputtedDistance)
    {
        $trainingLog['training_activity'] = $trainingLog['training_program_activity'];
        $avgSpeed = $trainingLog['generated_calculations']['avg_speed'] ?? 0;
        $avgPace = $trainingLog['generated_calculations']['avg_pace'] ?? 0;
        $activityCode = $trainingLog['training_activity']['code'];

        $durationMinutes = $this->convertDurationToMinutes($trainingLog['generated_calculations']['total_duration']);

        /** Run activity */
        # Pace = Time / Distance

        $avgPace = $newInputtedDistance == 0 ? 0 : ($durationMinutes / $newInputtedDistance);

        # Speed = 60 / Pace
        $avgSpeed = $avgPace == 0 ? 0 : (60 / $avgPace);

        # Speed = distance / duration (minute)
        // $avgSpeed = 60 / $avgPace;

        $newAvgPace = $this->convertPaceNumberTo_M_S_format($avgPace);

        return [
            'avg_pace' => $newAvgPace,
            'avg_speed' => round($avgSpeed, 1),
            'total_duration_minutes' => $durationMinutes,
        ];
    }
}
