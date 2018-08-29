<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//use App\Player;

class Team extends Model
{
    //
    protected $fillable = [];

    public function players()
    {
         return $this->hasMany(
            'App\Player',           
            'team_id', //Forrigin key..
            'team_id' //Local Id           
        );
    }
}
