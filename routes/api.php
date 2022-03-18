<?php

use App\Http\Controllers\DeviceController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\TodoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// list device
Route::get('/listAll', [ DeviceController::class, 'listAll' ]);
// list device with optional params
Route::get('/list/{id?}', [ DeviceController::class, 'list']); // ? - optional
// get single device with params
Route::get('/getDevice/{id}', [ DeviceController::class, 'getDevice' ]);
// add device
Route::post('/addDevice', [ DeviceController::class, 'addDevice']);
// update device
Route::put('/update', [ DeviceController::class, 'update']);
// search device
Route::get('/search/{name}', [ DeviceController::class, 'search' ]);
// delete device
Route::delete('/delete/{id}', [ DeviceController::class, 'delete' ]);
// API validation
Route::post('/save', [ DeviceController::class, 'testData' ]);

// API - route resource
Route::apiResource('/member', MemberController::class);

// Todos
Route::apiResource('/todo', TodoController::class);
