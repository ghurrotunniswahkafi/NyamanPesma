<?php

namespace App\Http\Controllers;

use App\Models\Asrama;

class DashboardController extends Controller
{
    public function index()
    {
        $tersedia = Asrama::where('status', 'tersedia')->count();
        $penuh = Asrama::where('status', 'penuh')->count();
        $maintenance = Asrama::where('status', 'maintenance')->count();
        $totalFasilitas = Asrama::count();

        return view('dashboard', compact('tersedia', 'penuh', 'maintenance', 'totalFasilitas'));
    }
}
