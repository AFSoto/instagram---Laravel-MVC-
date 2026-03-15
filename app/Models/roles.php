<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    protected $table = 'roles';

    // relacin one to many
    public function user(){
        return $this->hasMany('App\like');
    }
}
