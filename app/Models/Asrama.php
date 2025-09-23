<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Asrama extends Model
{
    protected $table = 'asrama';
    protected $primaryKey = 'id_asrama';
    public $timestamps = true;  

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
}
