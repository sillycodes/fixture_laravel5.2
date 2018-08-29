<?php

namespace App\Http\Controllers\API;

use App\Team;
use Illuminate\Http\Request;
#use Illuminate\Support\Facades\DB;
use App\Http\Controllers\API\BaseController as BaseController;
use Validator;

class TeamController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('index');
    }
    
    static function getTeam()
    {
        return Team::all();
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show(Team $team, $id=null)
    {        
        if($id)  {
            $team = Team::where("team_id",[$id])->first();
        } else {
            
            $team = Team::with('players')->get();
        }

        if (is_null($team)) {
            return $this->sendError('No team available, Please add team.');
        }

        return $this->sendResponse($team->toArray(), 'Team retrieved successfully.');
    }


}
