<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
return view('welcome');
});

return view('home');

Route::get('/facility/asrama', function () {
    return view('facility.asrama');
});

Route::get('/facility/detail-asrama', function () {
    return view('facility.detail-asrama');
});

Route::get('/admin', function () {
    return view('admin'); 
});

use App\Http\Controllers\AsramaController;

/* Route::get('/asrama', [AsramaController::class, 'index']);

Route::get('facility/asrama/', [AsramaController::class, 'show'])->name('asrama.show');

Route::get('/facility/asrama', [AsramaController::class, 'index'])->name('asrama.index');
 */
Route::get('/facility/asrama', [AsramaController::class, 'index']);
