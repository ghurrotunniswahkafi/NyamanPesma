<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});

Route::get('/facility/asrama', function () {
    return view('facility.asrama');
});

Route::get('/facility/detail-asrama', function () {
    return view('facility.detail-asrama');
});

Route::get('/admin', function () {
    return view('admin'); 
});

Route::get('/manajemen', function () {
    return view('manajemen_kamar');
});
