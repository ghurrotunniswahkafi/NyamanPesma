<?php

namespace App\Http\Controllers;

use App\Models\Asrama;
use Illuminate\Http\Request;

class FasilitasController extends Controller
{
    public function index()
    {
        $asramas = Asrama::all();
        return view('fasilitas', compact('asramas'));
    }

    public function create()
    {
        return view('fasilitas.tambah');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_asrama'   => 'required|string|max:255',
            'kapasitas'     => 'required|integer',
            'harga_bulanan' => 'required|integer',
            'harga_tahunan' => 'required|integer',
            'fasilitas'     => 'required|string',
            'status'        => 'required|string',
        ]);
        
        Asrama::create($request->all());

        return redirect()->route('fasilitas.index')
                         ->with('success', 'Data asrama berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $asrama = Asrama::findOrFail($id);
        return view('fasilitas.edit', compact('asrama'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_asrama'   => 'required|string|max:255',
            'kapasitas'     => 'required|integer',
            'harga_bulanan' => 'required|integer',
            'harga_tahunan' => 'required|integer',
            'fasilitas'     => 'required|string',
            'status'        => 'required|string',
        ]);
        
        $asrama = Asrama::findOrFail($id);
        $asrama->update($request->all());

        return redirect()->route('fasilitas.index')
                         ->with('success', 'Data asrama berhasil diperbarui!');
    }

    public function destroy($id)
    {
        $asrama = Asrama::findOrFail($id);
        $asrama->delete();

        return redirect()->route('fasilitas.index')
                         ->with('success', 'Data asrama berhasil dihapus!');
    }
}