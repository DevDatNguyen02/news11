<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('admin')->group(function () {
    Route::get('/login',[UserController::class, 'getLogin']);
    Route::post('/login',[UserController::class, 'postLogin']);
    Route::get('/logout',[UserController::class, 'getLogOutAdmin']);
});

Route::get('login',[PagesController::class, 'getLogin']);
Route::post('login',[PagesController::class, 'postLogin']);
Route::get('signup',[PagesController::class, 'getSignup']);
Route::post('signup',[PagesController::class, 'postSignup']);
Route::get('logout',[PagesController::class, 'getLogout']);

Route::get('/', [PagesController::class, 'trangchu']);
Route::get('/user/{id}',[PagesController::class, 'userDetails']);
Route::get('/trangcanhan',[PagesController::class, 'userDetails']);
Route::get('/category/{id}_{sort_name}.html',[PagesController::class, 'category']);
Route::middleware('auth')->group(function() {
    Route::prefix('trangcanhan')->group(function() {
        Route::get('/edit', [PagesController::class, 'getEditProfile']);
        Route::post('/edit', [PagesController::class, 'postEditProfile']);
        Route::get('/editimg', [PagesController::class, 'getEditImg']);
        Route::post('/editimg', [PagesController::class, 'postEditImg']);
        Route::get('/changepassword', [PagesController::class, 'getChangePassword']);
        Route::post('/changepassword', [PagesController::class, 'postChangePassword']);
    });
});


Route::middleware('staff')->group(function() {
    Route::prefix('admin')->group(function(){

        Route::get('/', [CategoryController::class, 'list']);

        Route::prefix('category')->group(function(){
            Route::get('/list',[CategoryController::class, 'list']);
            Route::get('/create',[CategoryController::class, 'getCreate']);
            Route::post('/create',[CategoryController::class, 'postCreate']);
            Route::get('/edit/{id}',[CategoryController::class, 'getEdit']);
            Route::post('/edit/{id}',[CategoryController::class, 'postEdit']);
            Route::get('/active/{id}',[CategoryController::class, 'postActive']);
            Route::get('/block/{id}',[CategoryController::class, 'postNoActive']);
            Route::get('/delete/{id}',[CategoryController::class, 'getDelete']);
        });
       

        
       
        Route::prefix('user')->group(function() {
            Route::get('/list', [UserController::class, 'list']);
            Route::get('/create', [UserController::class, 'getCreate']);
            Route::post('/create', [UserController::class, 'postCreate']);
            Route::get('/edit/{id}', [UserController::class, 'getEdit']);
            Route::post('/edit/{id}', [UserController::class, 'postEdit']);
            Route::get('/active/{id}', [UserController::class, 'postActive']);
            Route::get('/block/{id}', [UserController::class, 'postNoActive']);
            Route::get('/delete/{id}',[UserController::class, 'getDelete']);
        });
       
       
       
    });
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');