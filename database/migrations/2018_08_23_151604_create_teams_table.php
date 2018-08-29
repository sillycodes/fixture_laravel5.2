<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teams', function (Blueprint $table) {
            $table->mediumIncrements('team_id');
            $table->string('tean_name', 50);
            $table->string('team_code', 10);
            $table->string('country',20);
            $table->string('club_state',30);            
            $table->tinyInteger('team_rank');
            $table->tinyInteger('is_active');
            $table->mediumText('team_logo');
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
        Schema::dropIfExists('teams');
    }
}
