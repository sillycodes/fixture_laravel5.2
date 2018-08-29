<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'TeamController@index');


Route::group(['middleware' => 'web'], function() {
    Route::auth();
    Route::get('/home', 'HomeController@index');
});

Route::group(['prefix' => 'api/v1', 'middleware' => 'auth:api'], function() {
    Route::get('teams', 'API\TeamController@show');
    Route::get('teams/{id}', 'API\TeamController@show');
// Route::get('get_players/{team_id}', 'API\TeamController@teamPlayers');
    Route::get('players/{team_id}', 'API\PlayerController@index');
    Route::get('fixture', 'API\FixtureController@index');
    Route::get('fixture/create', 'API\FixtureController@createFixture');
    Route::get('tournament', 'API\TournamentController@index');
    
//   Route::resource('team','TeamController');
});

//Route::get('/home', 'HomeController@index');
