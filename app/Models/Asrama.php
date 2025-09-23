<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Asrama extends Model
{
    use HasFactory;
    
    protected $table = 'asrama';
    protected $primaryKey = 'id_asrama';
    public $timestamps = true;  

    protected $fillable = [
        'id_asrama',
        'nama_asrama',
        'kapasitas',
        'status',
        'harga_bulanan',
        'harga_tahunan',
        'foto',
        'deskripsi',
        'fasilitas',
    ];

    // Primary key bukan auto increment
    public $incrementing = true;

    // Tipe primary key (karena bigint UNSIGNED di database)
    protected $keyType = 'int';

    // Aktifkan timestamps (created_at, updated_at)
    public $timestamps = true;

    // Casting fasilitas ke array biar langsung bisa dipakai di form
    protected $casts = [
        'fasilitas' => 'array',
    ];
}
