@extends('layouts.app')

@section('title', 'Tambah Asrama')

@section('content')
<div class="form-container">
    <h2 class="mb-4">Tambah Asrama</h2>

    {{-- Form tambah asrama --}}
    <form action="{{ route('asramas.store') }}" method="POST" enctype="multipart/form-data">
        @csrf

        {{-- Include form utama --}}
        @include('asramas.form', ['asrama' => null])

        <div class="mt-3 d-flex gap-2">
            <button type="submit" class="btn btn-primary">💾 Simpan</button>
            {{-- Tombol kembali diarahkan ke form create lagi --}}
            <a href="{{ route('asramas.create') }}" class="btn btn-secondary">⬅️ Kembali</a>
        </div>
    </form>
</div>
@endsection
