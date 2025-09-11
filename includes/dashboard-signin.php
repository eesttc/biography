<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php 
    require_once 'config.php';
    require_once '../public/assets/css/style.php';
  ?>
  <?php
  // Bắt đầu phiên làm việc
  session_start();

  // Kiểm tra xem người dùng đã đăng nhập chưa, nếu rồi thì chuyển hướng về dashboard
  if (isset($_SESSION['admin_id'])) {
      header("Location: dashboard.php");
      exit();
  }

  // Khai báo biến
  $error_message = '';

  // Kiểm tra nếu form đã được gửi đi
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
      // Kết nối đến cơ sở dữ liệu
      $servername = "localhost";
      $username_db = "tên_người_dùng_cơ_sở_dữ_liệu";
      $password_db = "mật_khẩu_cơ_sở_dữ_liệu";
      $dbname = "biography";

      // Tạo kết nối
      $conn = new mysqli($servername, $username_db, $password_db, $dbname);

      // Kiểm tra kết nối
      if ($conn->connect_error) {
          die("Kết nối thất bại: " . $conn->connect_error);
      }

      // Lấy dữ liệu từ form và làm sạch
      $username = $conn->real_escape_string($_POST['username']);
      $password = $_POST['password'];

      // Chuẩn bị câu lệnh SQL để lấy thông tin admin
      $sql = "SELECT admin_id, username, password_hash, role FROM admins WHERE username = ?";
      
      // Sử dụng prepared statement để tránh SQL Injection
      $stmt = $conn->prepare($sql);
      $stmt->bind_param("s", $username);
      $stmt->execute();
      $result = $stmt->get_result();

      if ($result->num_rows > 0) {
          // Lấy dữ liệu của người dùng
          $row = $result->fetch_assoc();
          
          // Xác minh mật khẩu bằng password_verify
          if (password_verify($password, $row['password_hash'])) {
              // Mật khẩu đúng, tạo session và chuyển hướng
              $_SESSION['admin_id'] = $row['admin_id'];
              $_SESSION['username'] = $row['username'];
              $_SESSION['role'] = $row['role'];

              // Cập nhật thời gian đăng nhập cuối cùng
              $update_sql = "UPDATE admins SET last_login = NOW() WHERE admin_id = ?";
              $update_stmt = $conn->prepare($update_sql);
              $update_stmt->bind_param("i", $row['admin_id']);
              $update_stmt->execute();

              header("Location: dashboard.php");
              exit();
          } else {
              // Mật khẩu sai
              $error_message = "Tên đăng nhập hoặc mật khẩu không đúng.";
          }
      } else {
          // Tên người dùng không tồn tại
          $error_message = "Tên đăng nhập hoặc mật khẩu không đúng.";
      }

      $stmt->close();
      $conn->close();
  }
  ?>
  <div class="container">
        <h1>Đăng nhập để vào Dashboard</h1>
        <?php if ($error_message): ?>
            <p class="error"><?php echo htmlspecialchars($error_message); ?></p>
        <?php endif; ?>
        <form action="dashboard-signin.php" method="post">
            <div class="form-group">
                <label for="username">Tên người dùng:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Đăng nhập</button>
        </form>
    </div>

</body>
</html>