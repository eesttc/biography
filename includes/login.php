<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Login Admin</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .login-container { background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 300px; }
        .login-container h2 { text-align: center; color: #333; }
        .login-container input[type="text"], .login-container input[type="password"] { width: calc(100% - 20px); padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 4px; }
        .login-container input[type="submit"] { width: 100%; padding: 10px; background-color: #5cb85c; border: none; color: white; border-radius: 4px; cursor: pointer; }
        .login-container input[type="submit"]:hover { background-color: #4cae4c; }
        .error { color: red; text-align: center; }
    </style>
</head>
<body>
    <?php
    session_start();
    require 'config.php';

    $error = '';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT admin_id, password_hash, role FROM admins WHERE username = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows > 0) {
            $stmt->bind_result($admin_id, $password_hash, $role);
            $stmt->fetch();
            
            if (password_verify($password, $password_hash)) {
                $_SESSION['loggedin'] = true;
                $_SESSION['admin_id'] = $admin_id;
                $_SESSION['role'] = $role;
                header("location: dashboard.php");
            } else {
                $error = "password is incorrect.";
            }
        } else {
            $error = "This admin does not exist.";
        }
        $stmt->close();
    }
    $conn->close();
    ?>
    <div class="login-container">
        <h2>Login Admin</h2>
        <?php if (!empty($error)) { echo "<p class='error'>$error</p>"; } ?>
        <form action="login.php" method="post">
            <input type="text" name="username" placeholder="Admin..." required>
            <input type="password" name="password" placeholder="Password..." required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>