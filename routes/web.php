<?php

use App\Models\Image;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {


$images = Image::all();
foreach ($images as $image) {
    $image->image_path."<br>";
    $image->description."<br>";
}
    return view('welcome');
});
