<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <nav>
        <div class="">
            <img src="img/UMS.png" alt="Logo UMS">
            <h2 class="logo-text">PESANTREN MAHASISWA<br>KH. MAS MANSUR</h2>
        </div>
        <ul>
            <li>
                <a href="{{ url('/') }}">Home</a>
            </li>
            <li>
                <a href="#">About Us</a>
            </li>
            <li>
                <a href="#">Organizational Structure</a>
            </li>
            <li>
                <a href="{{ url('facility/asrama') }}">Facility</a>
            </li>
            <li>
                <a href="#">News</a>
            </li>
        </ul>
    </nav>
<section class="more">
    <h1>Akses Layanan Kami</h1>
    <div class="layanan-wrapper">
    <div class="layanan">
    
    <a href="#"><i class="fa-solid fa-book"></i></a>
    <h3>LMS</h3>
    <a href="#">Selengkapnya →</a>
  </div>

  <div class="layanan">
    <a href="#"><i class="fa-solid fa-server"></i></a>
    <h3>My Pesma</h3>
    <a href="#">Selengkapnya →</a>
  </div>

  <div class="layanan">
    <a href="#"><i class="fa-solid fa-user-group"></i></a>
    <h3>PMB</h3>
    <a href="#">Selengkapnya →</a>
  </div>

  <div class="layanan">
    <a href="#"><i class="fa-brands fa-square-whatsapp"></i></a>
    <h3>Call Center</h3>
    <a href="#">Selengkapnya →</a>
  </div>
</div>
        
        <h1>Information for International Students</h1>
        <div class="information-wrapper">
        <div class="information">
        
            <a href="#"><i class="fa-solid fa-file-lines"></i></a>
            <h3>Regulation</h3>
            <a href="#">For More →</a>
        </div>
        <div class="information">
            <a href="#"><i class="fa-solid fa-building-columns"></i> </a>
            <h3>International Office</h3>
            <a href="#">For More →</a>
        </div>
        <div class="information">
            <a href="{{ url('facility/asrama') }}"><i class="fa-solid fa-couch"></i></a>
            <h3>Facility</h3>
            <a href="{{ url('facility/asrama') }}">For More →</a>
        </div>
        <div class="information">
            <a href="#"><i class="fa-solid fa-user-plus"></i> </a>
            <h3>New Student Admission</h3>
            <a href="#">For More →</a>
        </div>
    
</section>
</body>
</html>