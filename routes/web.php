<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\AjaxController;
use App\Http\Controllers\Auth\ResetPasswordController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Http\Controllers\Auth\ForgotPasswordController;

Route::get('/forgotPassword', [ForgotPasswordController::class, 'showLinkRequestForm'])->name('password.request');
Route::post('/forgotPassword', [ForgotPasswordController::class, 'sendResetLinkEmail'])->name('password.email');

Route::prefix('admin')->group(function () {
    Route::get('/login',[UserController::class, 'getLogin']);
    Route::post('/login',[UserController::class, 'postLogin']);
    Route::get('/logout',[UserController::class, 'getLogOutAdmin']);
});

Route::get('login',[PagesController::class, 'getLogin'])->name('login');
Route::post('login',[PagesController::class, 'postLogin']);
Route::get('signup',[PagesController::class, 'getSignup']);
Route::post('signup',[PagesController::class, 'postSignup']);
Route::get('logout',[PagesController::class, 'getLogout']);

Route::get('/password/reset/{token}', [ResetPasswordController::class, 'showResetForm'])->name('password.reset');
Route::post('/password/reset', [ResetPasswordController::class, 'reset'])->name('password.update');


Route::get('/', [PagesController::class, 'trangchu']);
Route::get('/blog',[PagesController::class, 'blog']);
Route::post('/search',[PagesController::class, 'search']);
Route::get('/video',[PagesController::class, 'video']);
Route::get('/contact_us',[PagesController::class, 'contact_us']);
Route::get('/news/{id}_{sort_title}.html',[PagesController::class, 'detailsNews']);
Route::get('/news/{id}',[PagesController::class, 'detailsNews'])->name('news.detail');
Route::get('/subcategory/{id}_{sort_name}.html',[PagesController::class, 'subcategory']);
Route::get('/category/{id}_{sort_name}.html',[PagesController::class, 'category']);
Route::get('/user/{id}',[PagesController::class, 'userDetails']);
Route::get('/trangcanhan',[PagesController::class, 'userDetails']);
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
Route::post('/comment/{id}', [CommentController::class, 'comment']);

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
        Route::prefix('subcategory')->group(function() {
            Route::get('/list', [SubcategoryController::class, 'list']);
            Route::get('/create', [SubcategoryController::class, 'getCreate']);
            Route::post('/create', [SubcategoryController::class, 'postCreate']);
            Route::get('/edit/{id}', [SubcategoryController::class, 'getEdit']);
            Route::post('/edit/{id}', [SubcategoryController::class, 'postEdit']);
            Route::get('/active/{id}', [SubcategoryController::class, 'postActive']);
            Route::get('/block/{id}', [SubcategoryController::class, 'postNoActive']);
            Route::get('/delete/{id}',[SubcategoryController::class, 'getDelete']);
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
        Route::prefix('news')->group(function() {
            Route::get('/list', [NewsController::class, 'list']);
            Route::get('/create', [NewsController::class, 'getCreate']);
            Route::post('/create', [NewsController::class, 'postCreate']);
            Route::get('/edit/{id}', [NewsController::class, 'getEdit']);
            Route::post('/edit/{id}', [NewsController::class, 'postEdit']);
            Route::get('/active/{id}', [NewsController::class, 'postActive']);
            Route::get('/block/{id}', [NewsController::class, 'postNoActive']);
            Route::get('/delete/{id}',[NewsController::class, 'getDelete']);
        });
        Route::prefix('comment')->group(function() {
            Route::get('/block/{id}/{news_id}', [CommentController::class, 'block'])->name('admin.comment.block');
            Route::get('/active/{id}/{news_id}', [CommentController::class, 'active'])->name('admin.comment.active');
            Route::get('/delete/{id}/{news_id}', [CommentController::class, 'delete'])->name('admin.comment.delete');
        });
        Route::prefix('banner')->group(function() {
            Route::get('/list', [BannerController::class, 'list'])->name('admin.banner.list');;
            Route::get('/create', [BannerController::class, 'getCreate']);
            Route::post('/create', [BannerController::class, 'postCreate'])->name('admin.banner.create.post');
            Route::get('/edit/{id}', [BannerController::class, 'getEdit']);
            Route::post('/edit/{id}', [BannerController::class, 'postEdit']);
            Route::get('/active/{id}', [BannerController::class, 'postActive']);
            Route::get('/block/{id}', [BannerController::class, 'postNoActive']);
            Route::get('/delete/{id}',[BannerController::class, 'getDelete']);
        });
        Route::prefix('about')->group(function(){
            Route::get('/', [ AboutController::class, 'getEdit']);
            Route::post('/', [ AboutController::class, 'postEdit']);
        });
    });
});


// Route::get('/ajax/load-more-news', [PagesController::class, 'loadMoreNews']);
Route::get('ajax/Subcategory/{category_id}',[ AjaxController::class, 'getSub']);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
