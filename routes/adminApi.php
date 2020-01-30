<?php

use Illuminate\Support\Request;

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


// Route::post('/insertEvent', 'EventController@addEvent');




Route::get('/test', 'TestController@test');

Route::get('/qwe', 'TestController@getAll');

Route::post('/insert-event-date', 'TestController@insertEventDate');

Route::get('/get-event-date', 'TestController@getAllEventDate');

Route::get('/get-event-list', 'TestController@getAllEventList');

?>