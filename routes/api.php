<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::fallback(function(){
    abort(404);
});

Route::post('/login', 'UserController@Login');

Route::get('/user/{id}', 'UserController@UserAccount');

Route::get('/dailyEvent', 'EventController@DailyEvent');
