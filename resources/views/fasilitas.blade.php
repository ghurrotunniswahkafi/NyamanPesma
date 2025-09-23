<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Manajemen Fasilitas Asrama</title>
    @vite([
        'resources/css/app.css', 
        'resources/js/app.js', 
        'resources/css/custom.css', 
        'resources/js/custom.js'
    ])
</head>
<body>
    <header style="text-align:center; margin-bottom:2rem;">
        <h2 style="margin: 1rem 0;">Manajemen Fasilitas Asrama</h2>
    </header>

    <div class="container" style="max-width: 1000px; margin: 0 auto;">
        <!-- 🔍 Search + Tambah -->
        <div class="table-header" style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem;">
            <div id="searchContainer" style="display: flex; gap: 0.5rem;">
                <input type="text" id="searchInput" placeholder="Cari asrama..." style="padding: 0.5rem; border-radius: 4px; border: 1px solid #ccc;">
                <button id="searchButton" style="padding: 0.5rem 1rem; border-radius: 4px; border: none; cursor: pointer;">Cari</button>
            </div>
            <a href="{{ route('fasilitas.create') }}" style="padding: 0.5rem 1rem; border-radius: 4px; border: none; background: #f3f3f3; text-decoration: none; font-weight: bold;">+ Tambah Asrama</a>
        </div>

        <!-- 📋 Tabel fasilitas asrama -->
        <div style="overflow-x:auto;">
        <table id="fasilitasTable" style="width:100%; border-collapse: collapse; background: #fff;">
            <thead>
                <tr>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">ID</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Nama Asrama</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Kapasitas</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Harga / Bulan</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Harga / Tahun</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Fasilitas</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Status</th>
                    <th style="padding: 0.75rem; border-bottom: 2px solid #eee;">Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($asramas as $asrama)
                <tr style="border-bottom: 1px solid #f0f0f0;">
                    <td style="padding: 0.5rem; text-align: center;">{{ $asrama->id_asrama }}</td>
                    <td style="padding: 0.5rem;">{{ $asrama->nama_asrama }}</td>
                    <td style="padding: 0.5rem; text-align: center;">{{ $asrama->kapasitas }} orang</td>
                    <td style="padding: 0.5rem;">Rp {{ number_format($asrama->harga_bulanan, 0, ',', '.') }}</td>
                    <td style="padding: 0.5rem;">Rp {{ number_format($asrama->harga_tahunan, 0, ',', '.') }}</td>
                    <td style="padding: 0.5rem;">
                        @if(is_array($asrama->fasilitas))
                            {{ implode(', ', $asrama->fasilitas) }}
                        @elseif($asrama->fasilitas)
                            {{ implode(', ', json_decode($asrama->fasilitas, true)) }}
                        @else
                            -
                        @endif
                    </td>
                    <td style="padding: 0.5rem; text-align: center;">{{ ucfirst($asrama->status) }}</td>
                    <td class="aksi-btns" style="padding: 0.5rem; text-align: center;">
                        <a href="{{ route('fasilitas.edit', $asrama->id_asrama) }}" style="padding: 0.3rem 0.7rem; border-radius: 4px; border: 1px solid #ccc; margin-right: 0.3rem; text-decoration: none;">Edit</a>
                        <form action="{{ route('fasilitas.destroy', $asrama->id_asrama) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" onclick="return confirm('Yakin ingin menghapus?')" style="padding: 0.3rem 0.7rem; border-radius: 4px; border: 1px solid #ccc; background: #fff; cursor: pointer;">Hapus</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
    </div>

    <script>
        function confirmDelete(event) {
            event.preventDefault();
            if (confirm("Yakin ingin menghapus data ini?")) {
                event.target.submit();
            }
        }
    </script>
</body>
</html>
