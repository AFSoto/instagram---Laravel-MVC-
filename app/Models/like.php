<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    // Un like pertenece a un usuario
    public function user(){
        return $this->belongsTo(User::class);
    }

    // Un like pertenece a una imagen
    public function image(){
        return $this->belongsTo(Image::class);
    }
}
