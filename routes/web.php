<?php

use App\Http\Controllers\FasilitasController;
use App\Http\Controllers\DashboardController;

// The root route for the dashboard
Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

// The main resource route for all CRUD operations on 'fasilitas'
// This single line handles index, create, store, edit, update, and destroy
Route::resource('fasilitas', FasilitasController::class);

// Other resource routes
Route::resource('asrama', AsramaController::class);
Route::resource('users', UserController::class);
Route::resource('reservasi', ReservasiController::class);
Route::resource('pembayaran', PembayaranController::class);
Route::resource('laporan', LaporanController::class);
Route::resource('profile', ProfileController::class);
Route::resource('settings', SettingsController::class);
Route::resource('roles', RoleController::class);
