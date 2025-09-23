<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    <header>Dashboard Admin</header>

    <div class="dashboard-container">
        <div class="card tersedia">
            <h2 class="counter" data-target="{{ $tersedia }}">0</h2>
            <p>Asrama Tersedia</p>
        </div>
        <div class="card penuh">
            <h2 class="counter" data-target="{{ $penuh }}">0</h2>
            <p>Asrama Penuh</p>
        </div>
        <div class="card maintenance">
            <h2 class="counter" data-target="{{ $maintenance }}">0</h2>
            <p>Asrama Maintenance</p>
        </div>
        <div class="card">
            <h2 class="counter" data-target="{{ $totalFasilitas }}">0</h2>
            <p>Total Asrama</p>
        </div>
    </div>

    <div class="actions">
        <a href="{{ route('fasilitas.index') }}">
            <button class="btn">Kelola Fasilitas Asrama</button>
        </a>
    </div>
</body>
</html>
