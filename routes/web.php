<?php
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::group(['middleware'=>['lang']],function(){
    Route::get('/', 'BaseController@getIndex');
});
Auth::routes();
Route::get('category/{id}',"CategoryController@getIndex");
Route::get('/home', 'HomeController@index')->name('home');
Route::post('/home','HomeController@postIndex');
Route::get('{url}','PagesController@getIndex');



