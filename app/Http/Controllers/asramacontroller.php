<?php

namespace App\Http\Controllers;

use App\Models\Asrama;
use Illuminate\Support\Facades\DB;

class AsramaController extends Controller
{
    public function index()
    {
        // Summary Asrama Putra
        $asramaPutra = DB::table('asrama')
            ->where('nama_asrama', 'like', '%Laki-laki%')
            ->where('status', 'tersedia')
            ->selectRaw('SUM(kapasitas) as total_kapasitas, COUNT(*) as jumlah_asrama')
            ->first();

        // Detail salah satu Asrama Putra
        $detailPutra = DB::table('asrama')
            ->where('nama_asrama', 'like', '%Laki-laki%')
            ->where('status', 'tersedia')
            ->select('harga_bulanan', 'harga_tahunan', 'fasilitas')
            ->first();

        $asramaPutra->harga_bulanan = $detailPutra->harga_bulanan;
        $asramaPutra->harga_tahunan = $detailPutra->harga_tahunan;
        $asramaPutra->fasilitas = $detailPutra->fasilitas ? json_decode($detailPutra->fasilitas, true) : [];

        // Summary Asrama Putri
        $asramaPutri = DB::table('asrama')
            ->where('nama_asrama', 'like', '%Perempuan%')
            ->where('status', 'tersedia')
            ->selectRaw('SUM(kapasitas) as total_kapasitas, COUNT(*) as jumlah_asrama')
            ->first();

        // Detail salah satu Asrama Putri
        $detailPutri = DB::table('asrama')
            ->where('nama_asrama', 'like', '%Perempuan%')
            ->where('status', 'tersedia')
            ->select('harga_bulanan', 'harga_tahunan', 'fasilitas')
            ->first();

        $asramaPutri->harga_bulanan = $detailPutri->harga_bulanan;
        $asramaPutri->harga_tahunan = $detailPutri->harga_tahunan;
        $asramaPutri->fasilitas = $detailPutri->fasilitas ? json_decode($detailPutri->fasilitas, true) : [];

        return view('facility.asrama', compact('asramaPutri', 'asramaPutra'));
    }
}
