<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\API\BaseController;
use App\Tournament;

class TournamentController extends BaseController
{
    //
    public function index()
    {
        $tournament = Tournament::get();
          if (is_null($tournament)) {
            return $this->sendError('No active tornament, Please add team.');
        }

        return $this->sendResponse($tournament->toArray(), 'Tournament retrieved successfully.');
        
    }
}
