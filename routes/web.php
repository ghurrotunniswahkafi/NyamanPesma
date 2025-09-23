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

use App\Http\Controllers\AsramaController;

/* Route::get('/asrama', [AsramaController::class, 'index']);

Route::get('facility/asrama/', [AsramaController::class, 'show'])->name('asrama.show');

Route::get('/facility/asrama', [AsramaController::class, 'index'])->name('asrama.index');
 */
Route::get('/facility/asrama', [AsramaController::class, 'index']);


// Tambah asrama
Route::get('/asramas/create', [AsramaController::class, 'create'])->name('asramas.create');
Route::post('/asramas', [AsramaController::class, 'store'])->name('asramas.store');

// Edit asrama
Route::get('/asramas/{id_asrama}/edit', [AsramaController::class, 'edit'])->name('asramas.edit');

// Update asrama
Route::put('/asramas/{id_asrama}', [AsramaController::class, 'update'])->name('asramas.update');
