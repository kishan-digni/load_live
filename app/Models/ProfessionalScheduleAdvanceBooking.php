<?php

namespace App\Models;

use App\Models\ProfessionalScheduleAdvanceBooking;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;

class ProfessionalScheduleAdvanceBooking extends Model
{
    protected $table = "professional_schedule_advance_booking";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'description', // description
    ];

    protected $hidden = [
        'created_at', 
        'updated_at', 
    ];

    /**
     * rules => set Validation Rules
     *
     * @param  mixed $id
     *
     * @return void
     */
    public static function rules($id)
    {
        $rules = [
            'description' => 'required',
        ];
        return $rules;
    }

    /**
     * messages => Set Error Message
     *
     * @return void
     */
    public static function messages()
    {
        /** set error message in trans files */
        return [
            'required' => __('validation.required'),
        ];
    }

    /**
     * validation => Check Validation
     *
     * @param  mixed $input
     * @param  mixed $id
     *
     * @return void
     */
    public static function validation($input, $id = null)
    {
        return Validator::make($input, self::rules($id), self::messages());
    }

    /**
     * scopeOrdered => default sorting on created at as ascending
     *
     * @param  mixed $query
     *
     * @return void
     */
    public function scopeOrdered($query)
    {
        return $query->orderBy('id', 'asc');
    }
 
}
