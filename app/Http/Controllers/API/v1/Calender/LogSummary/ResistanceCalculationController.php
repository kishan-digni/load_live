<?php

namespace App\Http\Controllers\API\v1\Calender\LogSummary;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Supports\SummaryCalculationTrait;
use Illuminate\Support\Arr;

class ResistanceCalculationController extends Controller
{
    use SummaryCalculationTrait;
    protected $total_volume_unit;
    protected $average_weight_lifted_unit;

    public function __construct()
    {
        $this->total_volume_unit = "kg";
        $this->average_weight_lifted_unit = "kg";
    }
    /**
     * How to get Average Weight Lifted:
     * Total Volume / All the reps in the training log.
     */


    /**
     * CYCLE ( IN | OUT )
     */
    public function generateCalculation($trainingLog, $activityCode)
    {
        // START MAIN
        $response = [];
        $isDuration = $trainingLog['exercise'][0]['duration'];

        # START Total Duration
        $calculateDuration = $this->calculateDuration(
            $trainingLog,
            $isDuration
        );
        $response = array_merge($response, $calculateDuration);
        # END Total Duration
        # A) Use phone tracker (when user starts the workout log to when the workout log ends).
        // $start_time = collect($trainingLog['exercise'])->where('start_time', '<>', null)->pluck('start_time')->first();
        // $end_time = collect($trainingLog['exercise'])->where('end_time', '<>', null)->pluck('end_time')->first();

        // if (isset($start_time, $end_time)) {
        //     /** Calculate Total Duration From Start Time To End Time From Exercises */
        //     $totalDurationMinute = $this->totalDurationMinute($trainingLog);
        //     $totalDurationMinuteCode  = "A";
        //     $response['total_duration_minutes'] = round($totalDurationMinute, 2);
        //     $response['total_duration'] = (gmdate("H:i:s", (($totalDurationMinute ?? 0)  * 60)));
        //     $response['total_duration_code'] = $totalDurationMinuteCode;
        // }
        /**
         * How to get Total Volume:
         * Find Volume (for each set) = Weight x Reps
         * Add all the Volume of all the sets in each exercise.
         */
        $allVolume = [];
        $allRepsCount = 0;
        foreach ($trainingLog['exercise'] as $key => $exercises) {
            /** before any change please look at the exercises object */
            foreach ($exercises['data'] as $key => $exercise) {
                $allVolume[] = round((((float) $exercise['weight']) * ((float) $exercise['reps'])), 2);
                $allRepsCount += (float) $exercise['reps'];
            }
        }
        // wrong calculation applied here,
        $response['total_volume'] = array_sum($allVolume);
        $response['total_volume_unit'] = $this->total_volume_unit;

        /** maintain reminder here */
        $response['average_weight_lifted'] = round(($response['total_volume'] / $allRepsCount), 2);
        $response['average_weight_lifted_unit'] = $this->average_weight_lifted_unit;

        // dd('res', $response);
        return $response;
        // END MAIN
    }

    /**
     * Modified By : Kishan J Gareja
    * Modified Date : 12-Mar-2021
     * CYCLE ( IN | OUT )
     */
    public function generateCalculationForResistance($trainingLog, $activityCode)
    {
        // START MAIN
            $trainingLogWithExerciseLink = array();
            $targated_volume = $completed_volume = 0;
            $additional_exercise = json_decode($trainingLog['additional_exercise']);
            foreach ($additional_exercise as $key => $value) {
                $trainingLogWithExerciseLink[$key]['data'] = $value->data;
                $trainingLogWithExerciseLink[$key]['common_library_id'] = $value->common_library_id;
                $trainingLogWithExerciseLink[$key]['library_id'] = $value->library_id;
                $completed_volume += $this->getCompletedVolume($value->data, $trainingLog['training_intensity']['name']);
            }
            foreach ($trainingLog['exercise'] as $key => $value) {
                $targated_volume += $this->getTargetedVolume($value['data'], $trainingLog['training_intensity']['name']);
            }
            $trainingLog['targated_volume'] = $targated_volume;
            $trainingLog['completed_volume'] = $completed_volume;
            $trainingLog['exercise'] = $trainingLogWithExerciseLink;
            // $trainingLog['additional_exercise'] = json_encode($additional_exercise);
            return $trainingLog;
        // END MAIN
    }
    public function getTargetedVolume($params, $training_intensity)
    {
        $grand_total = 0;
        foreach ($params as $key => $value) {
            if ($value['reps'] != '') {
                $grand_total += (int) $value['weight'] * (int) $value['reps'];
            } else {
                $duration = explode(':', $value['duration']);
                $minutes = $duration[0] ? $duration[0] : 0;
                $secs = $duration[1] ? $duration[1] : 0;
                $totalSecs = ($minutes * 60) + $secs;
                if ($training_intensity == "Low") {
                    $grand_total += $totalSecs / 4;
                } elseif ($training_intensity == "Moderately-low") {
                    $grand_total += $totalSecs / 5;
                } elseif ($training_intensity == "Moderate") {
                    $grand_total += $totalSecs / 6;
                } elseif ($training_intensity == "Moderately-high") {
                    $grand_total += $totalSecs / 4;
                } elseif ($training_intensity == "High") {
                    $grand_total += $totalSecs / 2;
                }
            }
        }
        return $grand_total;
    }
    public function getCompletedVolume($params, $training_intensity)
    {
        $grand_total = 0;
        foreach ($params as $key => $value) {
                if ($value->reps != '') {
                    $grand_total += (int) $value->weight * (int) $value->reps;
                } else {
                    $duration = explode(':', $value->duration);
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
        return $grand_total;
    }
    /**
     * End Modificaiton
     */

    public function calculateDuration($trainingLog, $isDuration)
    {
        // dd('duration', $trainingLog);
        $totalDurationMinute = 0;

        # A) Use phone tracker (when user starts the workout log to when the workout log ends).
        $start_time = collect($trainingLog['exercise'])->where('start_time', '<>', null)->pluck('start_time')->first();
        $end_time = collect($trainingLog['exercise'])->where('end_time', '<>', null)->pluck('end_time')->first();
        // dd('check is in start_time and end Time', $start_time, $end_time,   $trainingLog['exercise']);
        if (isset($start_time, $end_time)) {
            /** Calculate Total Duration From Start Time To End Time From Exercises */
            $totalDurationMinute = $this->totalDurationMinute($trainingLog);
            $totalDurationMinuteCode = "A";
        }
        // dd('total rpm ', $total_rpm, $trainingLog['exercise']);
        return [
            'total_duration_minutes' => round($totalDurationMinute, 2),
            'total_duration' => $this->convertDurationMinutesToTimeFormat($totalDurationMinute),
            'total_duration_code' => $totalDurationMinuteCode,
        ];
    }

    /** used from Generate Calculation  - TrainingLog.php */
    public function calculateAvgPace($exercises, $totalDistance, $totalDurationMinute, $activityCode)
    {
        $avg_pace = 0;
        // $avg_pace = round($avg_pace, 2);
        // $avg_pace = implode(':', explode('.', $avg_pace));
        $avg_pace = $this->convertPaceNumberTo_M_S_format($avg_pace);

        // "avg pace" End Calculate  -------------------------------------------
        return [
            'avg_pace' => $avg_pace ?? null,
            'avg_pace_unit' =>  $this->avg_pace_unit ?? null,
            'avg_pace_code' => $avg_pace_code ?? null
        ];
    }
}
