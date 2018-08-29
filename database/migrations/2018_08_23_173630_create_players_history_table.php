<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlayersHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('players_history', function (Blueprint $table) {
            $table->increments('phid');
            $table->bigInteger('pid')->references('pid')->on('players');
            $table->enum('match_type', ['ODI', 'TEST','T20']);
            $table->integer('matches')->comment('Total no of matches of each format');
            $table->integer('bat_inn')->comment('Batting Innings');
            $table->integer('not_out');
            $table->integer('bat_runs')->comment('Total runs of selected match_type');
            $table->integer('highest_scores');
            $table->string('high_score_against')->comment('Highest score against which team');
            $table->integer('hundred');
            $table->integer('two_hundred');
            $table->integer('fifties');
            $table->integer('fours');
            $table->integer('six');
            $table->float('bat_average');
            $table->float('bat_strike_rate')->comment('LEFT SIDE COLUMN FOR BATTING & RIGHT SIDE FOR BOWLING RECORDS');
            $table->integer('bow_inn')->comment('Batting Innings');
            $table->integer('bowling_balls')->comment('Total no of bolls bowlled');
            $table->integer('bow_runs')->comment('Runs given during bowling.');
            $table->integer('wikts')->comment('wikets taken during bowling');
            $table->string('best_bowling');
            $table->integer('maiden');
            $table->float('bow_average');
            $table->float('bow_strike_rate');
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
        Schema::dropIfExists('players_history');
    }
}
