<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Create An Admin Account</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .form-container { background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 400px; }
        .form-container h2 { text-align: center; }
        .form-container label { display: block; margin-top: 10px; }
        .form-container input, .form-container select { width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ccc; border-radius: 4px; }
        .form-container button { width: 100%; padding: 10px; background-color: #5cb85c; border: none; color: white; border-radius: 4px; cursor: pointer; margin-top: 20px; }
        .form-container button:hover { background-color: #4cae4c; }
        .message { text-align: center; color: green; }
        .error { text-align: center; color: red; }
    </style>
</head>
<body>
    <?php
    session_start();
    if (!isset($_SESSION['loggedin']) || $_SESSION['role'] !== 'super_admin') {
        header("location: dashboard.php");
        exit;
    }

    require 'config.php';
    $message = '';
    $error = '';

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $role = $_POST['role'];
        $password_hash = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO admins (username, password_hash, email, role) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $username, $password_hash, $email, $role);

        if ($stmt->execute()) {
            $message = "Success!";
        } else {
            $error = "Oops! : " . $stmt->error;
        }
        $stmt->close();
    }
    $conn->close();
    ?>
    <div class="form-container">
        <h2>Create An Admin Account</h2>
        <?php if (!empty($message)) echo "<p class='message'>$message</p>"; ?>
        <?php if (!empty($error)) echo "<p class='error'>$error</p>"; ?>
        <form action="create_admin.php" method="post">
            <label for="username">Admin:</label>
            <input type="text" id="username" name="username" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <label for="role">Role:</label>
            <select id="role" name="role">
                <option value="editor">Editor</option>
                <option value="super_admin">Super Admin</option>
                <option value="viewer">Viewer</option>
            </select>
            <button type="submit">Create</button>
        </form>
        <a href="dashboard.php">Back to Dashboard</a>
    </div>
</body>
</html>