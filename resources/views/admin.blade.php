<?php
session_start();

// Redirect jika sudah login
if(isset($_SESSION['admin_logged_in']) && $_SESSION['admin_logged_in'] == true) {
    header('Location: dashboard.php');
    exit();
}

$error_message = '';

if ($_POST) {
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';
    
    // Validasi login sederhana (ganti dengan database authentication)
    if ($username === 'admin' && $password === 'password123') {
        $_SESSION['admin_logged_in'] = true;
        $_SESSION['admin_username'] = $username;
        header('Location: dashboard.php');
        exit();
    } else {
        $error_message = 'Username atau password salah!';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Admin - Pesantren Mahasiswa KH. Mas Mansur</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Poppins:wght@300;400;500;600&display=swap');
      /* Tambahkan CSS custom login form dari kode awal */
     body {
        font-family: 'Poppins', sans-serif;
        background-color: #f8f9fa;
        min-height: 100vh;
        background: url('img/background.png') no-repeat center center fixed;
        background-size: cover; /* supaya memenuhi layar */
    }

      .main-content {
          min-height: calc(100vh - 120px);
          display: flex;
          align-items: center;
          justify-content: center;
          padding: 40px 20px;
      }

      .login-container {
          background: white;
          border-radius: 20px;
          box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
          padding: 40px;
          width: 100%;
          max-width: 400px;
          border: 1px solid rgba(74, 78, 168, 0.1);
      }

      .login-header {
          text-align: center;
          margin-bottom: 30px;
      }

      .login-icon {
          width: 80px;
          height: 80px;
          background: #2f2185;
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          margin: 0 auto 20px;
          color: white;
          font-size: 2rem;
      }

      .login-title {
          color: #2f2185;
          font-size: 1.8rem;
          font-weight: 700;
      }

      .login-subtitle {
          color: #6c757d;
          font-size: 0.9rem;
      }

      .form-group {
          margin-bottom: 20px;
      }

      .form-group label {
          display: block;
          color: #2f2185;
          font-weight: 600;
          margin-bottom: 8px;
          font-size: 0.9rem;
      }

      .input-wrapper {
          position: relative;
      }

      .form-group input {
          width: 100%;
          padding: 15px 15px 15px 45px;
          border: 1px solid #dee2e6;
          border-radius: 8px;
          font-size: 1rem;
          background: #f8f9fa;
      }

      .input-icon {
          position: absolute;
          left: 15px;
          top: 50%;
          transform: translateY(-50%);
          color: #2f2185;
      }

      .login-btn {
          width: 100%;
          padding: 15px;
          background: #2f2185;
          color: white;
          border: none;
          border-radius: 8px;
          font-size: 1rem;
          font-weight: 600;
          cursor: pointer;
          text-transform: uppercase;
      }

      .login-btn:hover {
          background: #2f2185;
      }

      .error-message {
          background: #f8d7da;
          color: #721c24;
          padding: 12px 15px;
          border-radius: 8px;
          margin-bottom: 20px;
          border: 1px solid #f5c6cb;
          font-size: 0.9rem;
          text-align: center;
      }

      .footer-text {
          text-align: center;
          margin-top: 30px;
          color: #6c757d;
          font-size: 0.8rem;
      }

  </style>
</head>
<body>
  <nav>
    <div class="">
        <img src="img/UMS.png" alt="Logo UMS">
        <h2 class="logo-text">PESANTREN MAHASISWA<br>KH. MAS MANSUR</h2>
    </div>
    <ul>
        <li><a href="{{ url('/') }}">Home</a></li>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Organizational Structure</a></li>
        <li><a href="{{ url('facility/asrama') }}">Facility</a></li>
        <li><a href="#">News</a></li>
    </ul>
  </nav>

  <!-- Main Content -->
  <div class="main-content">
      <div class="login-container">
          <div class="login-header">
              <h1 class="login-title">Welcome!</h1>
              <p class="login-subtitle">Admin</p>
              <p class="login-subtitle">Pesantren Mahasiswa LH. MAS MANSUR</p>
          </div>

          <?php if ($error_message): ?>
              <div class="error-message">
                  <?php echo $error_message; ?>
              </div>
          <?php endif; ?>

          <form method="POST" action="">
              <div class="form-group">
                  <label for="username">Username</label>
                  <div class="input-wrapper">
                      <input type="text" id="username" name="username" required placeholder="Masukkan username Anda">
                      <i class="fas fa-user input-icon"></i>
                  </div>
              </div>

              <div class="form-group">
                  <label for="password">Password</label>
                  <div class="input-wrapper">
                      <input type="password" id="password" name="password" required placeholder="Masukkan password Anda">
                      <i class="fas fa-lock input-icon"></i>
                  </div>
              </div>

              <button type="submit" class="login-btn">Masuk</button>
          </form>

          <div class="footer-text">
              © 2025 Pesantren Mahasiswa KH. Mas Mansur<br>
              Sistem Administrasi Internal
          </div>
      </div>
  </div>
</body>
</html>
