<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';

    if (!empty($username) && !empty($password)) {
        $sql = "SELECT admin_id, username, role, password_hash, failed_login_attempts FROM admins WHERE username = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();

        if ($user) {
            if (password_verify($password, $user['password_hash'])) {
                // Cập nhật lần đăng nhập gần nhất
                $current_time = date('Y-m-d H:i:s');
                $update_sql = "UPDATE admins SET last_login = ? WHERE admin_id = ?";
                $update_stmt = $conn->prepare($update_sql);
                $update_stmt->bind_param("si", $current_time, $user['admin_id']);
                $update_stmt->execute();
                $update_stmt->close();

                // Lưu session
                $_SESSION['username'] = $user['username'];
                $_SESSION['role'] = $user['role'];
                $_SESSION['admin_id'] = $user['admin_id'];

                // Điều hướng theo role
                if ($user['role'] === 'admin') {
                    header("Location: Admin.php");
                } elseif ($user['role'] === 'editor') {
                    header("Location: Admins.php");
                }
                exit();
            } else {
                // Sai mật khẩu → tăng số lần thử sai
                $new_attempts = $user['failed_login_attempts'] + 1;
                $update_sql = "UPDATE admins SET failed_login_attempts = ? WHERE admin_id = ?";
                $update_stmt = $conn->prepare($update_sql);
                $update_stmt->bind_param("ii", $new_attempts, $user['admin_id']);
                $update_stmt->execute();
                $update_stmt->close();

                $error = "Sai mật khẩu! Số lần thử thất bại: " . $new_attempts;
            }
        } else {
            $error = "Tài khoản không tồn tại!";
        }
    } else {
        $error = "Vui lòng nhập Username và Password!";
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center; 
            align-items: center;     
            background-color: #f5f5f5;
        }
        label {
            display: inline-block;
            width: 110px;
            margin-left:0%;
            margin-top:5%;
            font-size: 18px;
            height:0.75cm;
        }
        input{
            font-size: 16px;
            height: 1cm;
            width: 6.5cm;
        }
        .error {
            color: red;
            margin-top: 10px;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <form method="POST" action="">
            <div>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required></div></br>
            <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required></div></br>
             <?php if (!empty($error)): ?>
                <div class="error"><?php echo $error; ?></div>
                <?php endif; ?></br>
            <button style="margin-left:35%; font-size: 16px;" type="submit" class="btn primary">Login</button>
        </form>
    </div>
</body>
</html>