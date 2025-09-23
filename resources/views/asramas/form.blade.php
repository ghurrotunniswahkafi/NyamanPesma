@php
    // Daftar fasilitas
    $fasilitasData = ['Kasur','Bantal','Ember','Kipas','Lemari','Kamar Mandi'];

    // Ambil fasilitas yang dipilih
    $selected = old('fasilitas', []);

    if (!empty($asrama?->fasilitas)) {
        if (is_string($asrama->fasilitas)) {
            $selected = json_decode($asrama->fasilitas, true) ?? [];
        } elseif (is_array($asrama->fasilitas)) {
            $selected = $asrama->fasilitas;
        }
    }
@endphp

{{-- ID Asrama --}}
@if(!empty($asrama?->id_asrama))
    <div class="mb-3">
        <label>ID Asrama</label>
        <input type="text" name="id_asrama" class="form-control"
               value="{{ old('id_asrama', $asrama->id_asrama) }}" readonly>
    </div>
@else
    <div class="mb-3">
        <label>ID Asrama</label>
        <input type="text" name="id_asrama" class="form-control"
               value="{{ old('id_asrama') }}" placeholder="Isi ID Asrama (unik)" required>
    </div>
@endif

{{-- Nama Asrama --}}
<div class="mb-3">
    <label>Nama Asrama</label>
    <input type="text" name="nama_asrama" class="form-control"
           value="{{ old('nama_asrama', $asrama->nama_asrama ?? '') }}" required>
</div>

{{-- Kapasitas --}}
<div class="mb-3">
    <label>Kapasitas</label>
    <input type="number" name="kapasitas" class="form-control"
           value="{{ old('kapasitas', $asrama->kapasitas ?? 3) }}" required>
</div>

{{-- Status --}}
<div class="mb-3">
    <label>Status</label>
    <select name="status" class="form-control" required>
        @foreach(['tersedia','penuh','maintenance'] as $status)
            <option value="{{ $status }}"
                {{ old('status', $asrama->status ?? '') == $status ? 'selected' : '' }}>
                {{ ucfirst($status) }}
            </option>
        @endforeach
    </select>
</div>

{{-- Harga Bulanan --}}
<div class="mb-3">
    <label>Harga Bulanan</label>
    <input type="number" step="0.01" name="harga_bulanan" class="form-control"
           value="{{ old('harga_bulanan', $asrama->harga_bulanan ?? 685000) }}" required>
</div>

{{-- Harga Tahunan --}}
<div class="mb-3">
    <label>Harga Tahunan</label>
    <input type="number" step="0.01" name="harga_tahunan" class="form-control"
           value="{{ old('harga_tahunan', $asrama->harga_tahunan ?? 1655000) }}" required>
</div>

{{-- Foto --}}
<div class="mb-3">
    <label>Foto</label>
    <input type="file" name="foto" class="form-control">
    @if(!empty($asrama?->foto))
        <a href="{{ asset('storage/'.$asrama->foto) }}" target="_blank">
            <img src="{{ asset('storage/'.$asrama->foto) }}"
                 class="preview-img mt-2"
                 style="cursor:pointer;max-width:150px;">
        </a>
    @endif
</div>

{{-- Deskripsi --}}
<div class="mb-3">
    <label>Deskripsi</label>
    <textarea name="deskripsi" class="form-control">{{ old('deskripsi', $asrama->deskripsi ?? '') }}</textarea>
</div>

{{-- Fasilitas --}}
<div class="mb-3">
    <label>Fasilitas (pilih lebih dari satu)</label><br>
    @foreach($fasilitasData as $f)
        <label class="me-3">
            <input type="checkbox" name="fasilitas[]" value="{{ $f }}"
                   {{ in_array($f, $selected) ? 'checked' : '' }}>
            {{ $f }}
        </label>
    @endforeach
</div>
