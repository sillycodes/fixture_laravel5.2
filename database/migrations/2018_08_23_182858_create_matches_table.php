<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('matches', function (Blueprint $table) {
             $table->increments('id');
             $table->integer('fixture_id')->references('id')->on('fixtures');
             $table->integer('winning_team_id')->references('team_id')->on('teams');
             $table->integer('man_of_match')->references('pid')->on('players')->comment('Players Id');
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
        Schema::dropIfExists('matches');
    }
}
