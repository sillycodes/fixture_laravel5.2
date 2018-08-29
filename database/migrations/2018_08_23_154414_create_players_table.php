<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('players', function (Blueprint $table) {
             $table->increments('pid');
             $table->mediumInteger('team_id')->references('team_id')->on('teams');
             $table->string('f_name', 50);
             $table->string('l_name', 50);
             $table->longText('role')->nullable();
             $table->integer('jersey_no');
             $table->dateTime('dob')->nullable();
             $table->string('country', 20);
             $table->mediumText('profile_pic');
             $table->tinyInteger('is_active')->default(1);
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
        Schema::dropIfExists('players');
    }
}
