<?php

namespace App\Http\Controllers\API;

use App\Player;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\API\BaseController as BaseController;


class PlayerController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($team_id=null)
    {
        if($team_id)
        {
            $players = DB::table('players')->where('team_id' , $team_id)->get();
        }
        
        if (is_null($players)) {
            return $this->sendError('No team available, Please add team.');
        }

        return $this->sendResponse($players->toArray(), 'Team retrieved successfully.');
        //
    }

   
}
