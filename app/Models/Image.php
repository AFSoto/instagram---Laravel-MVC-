<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $table = 'images';

    //reacion one to many
    public function comments(){
        return $this->hasMany('App\comment');
    }

    //relacion one to many
    public function likes(){
        return $this->hasMany('App\like');
    }

    //relacion muchos a uno
    public function user(){
        return $this->belongsTo('App\User','user_id');
    }
}
