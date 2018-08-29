<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTournamentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('tournaments', function (Blueprint $table) {
             $table->bigIncrements('id');
             $table->string('league_name', 100);
             $table->string('champians', 30);
             $table->tinyInteger('is_active');
             $table->dateTimeTz('start_date');
             $table->dateTimeTz('end_date');
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
        Schema::dropIfExists('tournaments');
    }
}
