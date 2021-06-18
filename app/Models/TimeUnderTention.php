<?php

namespace App\Models;

use App\Models\TimeUnderTention;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;

class TimeUnderTention extends Model
{
    protected $table = "time_under_tention";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
      
        'user_id', 
        'time_under_tention_id', 
        'Tempo1', 
        'Tempo2', 
        'Tempo3', 
        'Tempo4', 
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
            'user_id' => 'required',
            'time_under_tention_id' => 'required',
            'Tempo1' => 'required',
            'Tempo2' => 'required',
            'Tempo3' => 'required',
            'Tempo4' => 'required',
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
        return $query->orderBy('created_at', 'asc');
    }
  
}
