<?php
/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/*Route::get('user/{id}', function ($id) {
    return '你输入的用户ID是：'.$id;
})->middleware(['auth']);*/

/*Route::get('user/{id}', function ($id) {
    return '你输入的用户ID是：'.$id;
});*/

/*Route::get('user/{id}', 'UserController@showProfile');

Route::get('user/profile', ['as' => 'profile', function () {
    //
}]);*/
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

/*Route::group(['middleware' => ['web']], function () {
    // Home
	Route::get('/', [
		'uses' => 'HomeController@index',
		'as' => 'home'
	]);
	Route::get('article/{id}', 'ArticleController@index')->where('id', '[0-9]+');
	// Admin
	Route::get('admin', [
		'uses' => 'AdminController@admin',
		'as' => "admin",
		'middleware' => 'auth'
	]);
});*/

/*Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function()
{
    Route::get('/', 'AdminHomeController@index');
    Route::resource('pages', 'PagesController');
});

Route::resource('post','PostController');*/

/*
Route::group(['middleware'=>'test'],function(){
    Route::get('/write/laravelacademy',function(){
        //使用Test中间件
    });
    Route::get('/update/laravelacademy',function(){
        //使用Test中间件
    });
});

Route::get('/age/refuse',['as'=>'refuse',function(){
    return "未成年人禁止入内！";
}]);*/

Route::auth();
Route::get('/', [
    'uses' => 'HomeController@index',
    'as' => 'home'
]);
//Route::get('article/{id}', 'ArticleController@index')->where('id', '[0-9]+');
// Admin
/*	Route::group(['middleware' => 'web'], function (){

});*/
Route::get('admin', [
    'uses' => 'AdminController@admin',
    'as' => "admin"
]);
Route::resource('articles','ArticleController');
