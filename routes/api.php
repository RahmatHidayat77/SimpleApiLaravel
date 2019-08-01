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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::post('login', 'PassportController@login');
// Route::post('register', 'PassportController@register');
// Route::post('details', 'PassportController@details');
 
// Route::middleware('auth:api')->group(function () {
//     Route::get('user', 'PassportController@details');
// });

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', 'Api\UserController@login');
Route::post('register', 'Api\UserController@register');
Route::group(['middleware' => 'auth:api'], function(){
});
Route::post('details', 'Api\UserController@details');


Route::namespace('Api')->group(function (){
    Route::get('/produk', 'Data1Controller@listProduk');
    Route::get('/kategori', 'Data1Controller@listKategori');
    Route::get('/banner', 'Data1Controller@listBanner');
    Route::get('/search/{nama}', 'Data1Controller@searchProduk');
    Route::get('/filter/{kategori}', 'Data1Controller@filterProduk'); 
});

