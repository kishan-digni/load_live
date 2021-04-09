<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrainingSettingPhysicalActivityLevelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('training_setting_physical_activity_levels', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title', 200)->comment('title of the physical activity level');
            $table->string('description', 200)->nullable()->comment('description of main records.');
            $table->boolean('is_active')->default(true)->comment('description of main records.');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public static function down()
    {
        Schema::dropIfExists('training_setting_physical_activity_levels');
    }
}
