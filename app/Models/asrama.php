<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Asrama extends Model
{
    use HasFactory;

    protected $table = 'asrama';

    protected $primaryKey = 'id_asrama';

    protected $fillable = [
        'nama_asrama',
        'kapasitas',
        'status',
        'harga_bulanan',
        'harga_tahunan',
        'foto',
        'deskripsi',
        'fasilitas',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'fasilitas' => 'array',
    ];
}