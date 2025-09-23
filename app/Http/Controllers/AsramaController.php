<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Asrama;
use Illuminate\Support\Facades\Storage;

class AsramaController extends Controller
{
    public function create()
    {
        return view('asramas.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'id_asrama'     => 'required|string|unique:asramas,id_asrama',
            'nama_asrama'   => 'required|string|max:255',
            'kapasitas'     => 'required|integer',
            'status'        => 'required|in:tersedia,penuh,maintenance',
            'harga_bulanan' => 'required|numeric',
            'harga_tahunan' => 'required|numeric',
            'foto'          => 'nullable|image|max:2048',
            'deskripsi'     => 'nullable|string',
            'fasilitas'     => 'nullable|array',
            'fasilitas.*'   => 'string'
        ]);

        if ($request->hasFile('foto')) {
            $data['foto'] = $request->file('foto')->store('asrama', 'public');
        }

        $data['fasilitas'] = $request->filled('fasilitas')
            ? json_encode($request->fasilitas)
            : json_encode([]);

        Asrama::create($data);

        return redirect()->route('asramas.create')->with('success', 'Asrama berhasil ditambahkan');
    }

    public function edit($id_asrama)
    {
        $asrama = Asrama::findOrFail($id_asrama);
        return view('asramas.edit', compact('asrama'));
    }

    public function update(Request $request, $id_asrama)
    {
        $asrama = Asrama::findOrFail($id_asrama);

        $data = $request->validate([
            'nama_asrama'   => 'required|string|max:255',
            'kapasitas'     => 'required|integer',
            'status'        => 'required|in:tersedia,penuh,maintenance',
            'harga_bulanan' => 'required|numeric',
            'harga_tahunan' => 'required|numeric',
            'foto'          => 'nullable|image|max:2048',
            'deskripsi'     => 'nullable|string',
            'fasilitas'     => 'nullable|array',
            'fasilitas.*'   => 'string'
        ]);

        if ($request->hasFile('foto')) {
            if ($asrama->foto && Storage::disk('public')->exists($asrama->foto)) {
                Storage::disk('public')->delete($asrama->foto);
            }
            $data['foto'] = $request->file('foto')->store('asrama', 'public');
        }

        $data['fasilitas'] = $request->filled('fasilitas')
            ? json_encode($request->fasilitas)
            : json_encode([]);

        $asrama->update($data);

        return redirect()->route('asramas.edit', $asrama->id_asrama)->with('success', 'Asrama berhasil diperbarui');
    }

    public function destroy($id_asrama)
    {
        $asrama = Asrama::findOrFail($id_asrama);

        if ($asrama->foto && Storage::disk('public')->exists($asrama->foto)) {
            Storage::disk('public')->delete($asrama->foto);
        }

        $asrama->delete();

        return redirect()->route('asramas.create')->with('success', 'Asrama berhasil dihapus');
    }
}
