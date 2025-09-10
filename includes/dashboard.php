<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php
    session_start();
    require_once 'config.php'; 
    require_once '../public/assets/css/style.php';
  ?>

  <div class="dashboard-container">
    <aside class="sidebar">
      <div class="sidebar-header">
          <h3>Admin Dashboard</h3>
      </div>
      <nav class="sidebar-nav">
          <ul>
              <li><a href="#" class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
              <li><a href="#"><i class="fas fa-user-edit"></i> Quản lý Tiểu sử</a></li>
              <li><a href="#"><i class="fas fa-cog"></i> Cài đặt</a></li>
              <li><a href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a></li>
          </ul>
        </nav>
    </aside>

    <main class="main-content">
      <header class="main-header">
          <h2>Dashboard</h2>
          <div class="user-info">
              <span>Xin chào, Admin!</span>
              <i class="fas fa-user-circle"></i>
          </div>
      </header>

      <section class="dashboard-content">
        <div class="dashboard-card">
            <h4>Tổng số Tiểu sử</h4>
            <p>150</p>
        </div>
        <div class="dashboard-card">
            <h4>Đang chờ duyệt</h4>
            <p>5</p>
        </div>
        <div class="dashboard-card">
            <h4>Số lượng thành viên</h4>
            <p>25</p>
        </div>
        </section>
      </main>
    </div>
</body>
</html>