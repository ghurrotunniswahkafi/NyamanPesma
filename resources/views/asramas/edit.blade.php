@extends('layouts.app')

@section('title', 'Edit Asrama')

@section('content')
<div class="form-container">
    <h2 class="mb-4">Edit Asrama</h2>

    {{-- Form edit asrama --}}
    <form action="{{ route('asramas.update', $asrama->id_asrama) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        {{-- Include form utama --}}
        @include('asramas.form', ['asrama' => $asrama])

        <div class="mt-3 d-flex gap-2">
            <button type="submit" class="btn btn-warning">✏️ Update</button>
            <a href="{{ route('asramas.create') }}" class="btn btn-secondary">⬅️ Kembali</a>
        </div>
    </form>
</div>
@endsection
