<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFixturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('fixtures', function (Blueprint $table) {
             $table->increments('id');
             $table->integer('tournament_id')->references('id')->on('tournaments');
             $table->mediumInteger('team1_id')->references('team_id')->on('teams');
             $table->mediumInteger('team2_id')->references('team_id')->on('teams');
             $table->dateTime('date_time')->comment('scheduled date and time');
             $table->integer('venue_id');
             $table->timestamps();
         });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fixtures');
    }
}
