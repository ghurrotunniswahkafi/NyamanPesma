<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<?php echo e(asset('css/style.css')); ?>">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
</head>
<body>
    <nav>
        <div class="">
            <img src="../img/UMS.png" alt="Logo UMS">
            <h2 class="logo-text">PESANTREN MAHASISWA<br>KH. MAS MANSUR</h2>
        </div>
        <ul>
            <li><a href="<?php echo e(url('/')); ?>">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Organizational Structure</a></li>
            <li><a href="<?php echo e(url('facility/asrama')); ?>">Facility</a></li>
            <li><a href="#">News</a></li>
        </ul>
    </nav>

    <section class="facility-section">
        <h1>Fasilitas Pesma</h1>
        <div class="facility-wrapper">
            <div class="facility">
                <a href="#"><h3>All</h3></a>
            </div>
            <div class="facility">
                <a href="#"><h3>Asrama</h3></a>
            </div>
            <div class="facility">
                <a href="#"><h3>Masjid</h3></a>
            </div>
            <div class="facility">
                <a href="#"><h3>Kantin</h3></a>
            </div>
            <div class="facility">
                <a href="#"><h3>Olahraga</h3></a>
            </div>
        </div>
    </section>
    <main>
        <section class="asrama-putra-section">
            <div class="section-content">
                <div class="asrama-putra-details">
                    <h2 class="title">Asrama Putra</h2>
                    <h3 class="subtitle">Pesantren Mahasiswa Internasional KH. Mas Mansur merupakan asrama mahasiswa berbasis islam kemuhammadiyahan yang menjadi salah satu program dan fasilitas unggulan UMS untuk tetap berkomitmen menjadikan mahasiswa berwawasan akademik unggul dan berakhlakul karimah. Dengan program-program yang dihadirkan menjadikan mahasiswa berkembang dan sadar akan kebutuhan Agama sebagai pedoman hidup. </h3>
                    <p class="description">Each room accommodates 3 students<br>Only <?php echo e($asramaPutra->jumlah_asrama); ?> rooms left</p>
                    <div class="buttons">
                        <a href="#pop-up-asrama-putra" class="button for more">For More   <i class="fa-solid fa-circle-arrow-right"></i></a>
                    </div>
                </div>
                <div class="asrama-putra-image-wrapper">
                    <img src="../img/asrama-putra.jpg" alt="Asrama Putra" class="asrama-putra-image active">
                    <img src="../img/asrama-putra-2.jpg" alt="Asrama Putra" class="asrama-putra-image">
                    <img src="../img/asrama-putra-3.jpg" alt="Asrama Putra" class="asrama-putra-image">
                </div>
            </div>
            <div class="pop-up-asrama-putra" id="pop-up-asrama-putra">
                <div class="pop-up-asrama-putra-content">
                    <a href="#" class="pop-up-back-button">← Kembali</a>
                    <div class="pop-up-asrama-putra-image">
                        <img src="../img/asrama-putra.jpg" alt="Asrama Putra" class="asrama-putra-image">
                        <img src="../img/asrama-putra-2.jpg" alt="Asrama Putra" class="asrama-putra-image">
                        <img src="../img/asrama-putra-3.jpg" alt="Asrama Putra" class="asrama-putra-image">
                    </div>
                    <div class="pop-up-asrama-putra-header">
                        <h1>Asrama Putra</h1>
                    </div>
                    <div class="pop-up-asrama-putra-details">
                        <p><?php echo e($asramaPutra->jumlah_asrama); ?> rooms remaining for <?php echo e($asramaPutra->total_kapasitas); ?> people left.</p>
                        <p>Harga Bulanan: Rp <?php echo e(number_format($asramaPutra->harga_bulanan, 0, ',', '.')); ?></p>
                        <p>Harga Tahunan: Rp <?php echo e(number_format($asramaPutra->harga_tahunan, 0, ',', '.')); ?></p>
                        <strong>Fasilitas:</strong>
                        <ul>
                            <?php $__currentLoopData = $asramaPutra->fasilitas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $f): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><?php echo e($f); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="asrama-putri-section">
            <div class="section-content">
                <div class="asrama-putri-image-wrapper">
                    <img src="../img/asrama-putri.jpg" alt="Asrama Putri" class="asrama-putri-image active">
                    <img src="../img/asrama-putri-2.jpg" alt="Asrama Putri" class="asrama-putri-image">
                    <img src="../img/asrama-putri-3.jpg" alt="Asrama Putri" class="asrama-putri-image">
                </div>
                
                <div class="asrama-putri-details">
                    <h2 class="title">Asrama Putri</h2>
                    <h3 class="subtitle">Pesantren Mahasiswa Internasional KH. Mas Mansur juga menyediakan asrama khusus mahasiswa putri berbasis Islam kemuhammadiyahan sebagai salah satu program unggulan UMS. Lingkungan yang Islami, nyaman, dan mendukung pembinaan akhlak mulia menjadikan mahasiswa berkembang baik secara akademik maupun spiritual.</h3>
                    <p class="description">Each room accommodates 3 students<br>Only <?php echo e($asramaPutri->jumlah_asrama); ?> rooms left</p>
                    <div class="buttons">
                        <a href="#pop-up-asrama-putri" class="button for more">For More <i class="fa-solid fa-circle-arrow-right"></i>
                    </a>
                </div>
            </div>
            <div class="pop-up-asrama-putri" id="pop-up-asrama-putri">
                <div class="pop-up-asrama-putri-content">
                    <a href="#" class="pop-up-back-button">← Kembali</a>
                    <div class="pop-up-asrama-putri-image">
                        <img src="../img/asrama-putri.jpg" alt="Asrama Putri" class="asrama-putri-image">
                        <img src="../img/asrama-putri-2.jpg" alt="Asrama Putri" class="asrama-putri-image">
                        <img src="../img/asrama-putri-3.jpg" alt="Asrama Putri" class="asrama-putri-image">
                    </div>
                    <div class="pop-up-asrama-putri-header">
                        <h1>Asrama Putri</h1>
                    </div>
                    <div class="pop-up-asrama-putri-details">
                        <p><?php echo e($asramaPutri->jumlah_asrama); ?> rooms remaining for <?php echo e($asramaPutri->total_kapasitas); ?> people left.</p>
                        <p>Harga Bulanan: Rp <?php echo e(number_format($asramaPutri->harga_bulanan, 0, ',', '.')); ?></p>
                        <p>Harga Tahunan: Rp <?php echo e(number_format($asramaPutri->harga_tahunan, 0, ',', '.')); ?></p>
                        <strong>Fasilitas:</strong>
                        <ul>
                            <?php $__currentLoopData = $asramaPutri->fasilitas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $f): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li><?php echo e($f); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script src="../js/index.js"></script>
</body>
<?php /**PATH C:\xampp\htdocs\pesma\resources\views/facility/asrama.blade.php ENDPATH**/ ?>