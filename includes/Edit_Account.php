<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$admin_id = $_GET['admin_id'] ?? 0;
if ($admin_id == 0) {
    die("Error: information not found!");
}

// Lấy thông tin admin
$sql = "SELECT * FROM admins WHERE admin_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $admin_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if (!$row) {
    die("Error: information not found!");
}

// Xử lý cập nhật admin
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'] ?? '';
    $email = $_POST['email'] ?? '';
    $role = $_POST['role'] ?? '';

    // Nếu có nhập password mới thì hash lại, nếu không thì giữ nguyên
    if (!empty($_POST['password_hash'])) {
        $password_hash = password_hash($_POST['password_hash'], PASSWORD_DEFAULT);
    } else {
        $password_hash = $row['password_hash'];
    }

    $update_sql = "UPDATE admins SET username = ?, password_hash = ?, email = ?, role = ? WHERE admin_id = ?";
    $stmt = $conn->prepare($update_sql);
    $stmt->bind_param("ssssi", $username, $password_hash, $email, $role, $admin_id);

    if ($stmt->execute()) {
        header("Location: Admin_Account.php");
        exit();
    } else {
        echo "Update error: " . $stmt->error;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Edit Admin Account</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
    <style>
        label {
            display: inline-block;
            width: 100px;
            margin-left:20%;
            font-size: 16px;
        }
        input{
            font-size: 16px;
            height: 20;
            width: 8cm;
        }
        select{
            font-size: 16px;
            height: 20;
            width: 4cm;
        }
        .save{
            margin-left:50%;
        }
        h3{
            margin-left:50%;
            font-size: 25px;
        }
    </style>
</head>
<body>
  <div class="dashboard-container">
    <aside class="sidebar">
      <h2 class="sidebar-title">Admin</h2>
      <ul class="nav-list">
        <li><a href="../Admin.php"><span>📊</span> Information</a></li>
        <li><a href="LifeStory.php"><span>📈</span> Life Story</a></li>
        <li><a href="Award.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearch.php"><span>📈</span> Research Works</a></li>
        <li><a href="Role.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallery.php"><span>📈</span> Gallery</a></li>
        <li><a href="../Admin_Account.php"><span>👥</span> Admin Account</a></li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Edit Admin Account</h1>
            <button class="btn primary" ><a href="Login_admin.php">Logout</a></button>
        </header>

        <form action="" method="POST" class="table">
            </br><h3>Edit Account</h3>
            <br/>

            <div>
                <label for="username">Username:</label> 
                <input id="username" name="username" type="text" 
                       value="<?= htmlspecialchars($row['username']) ?>" required/>
            </div>
            </br>
            <div>
                <label for="password_hash">Password:</label> 
                <input id="password_hash" name="password_hash" type="password" 
                       placeholder="Leave blank to keep old password"/>
            </div>
            </br>
            <div>
                <label for="email">Email:</label> 
                <input id="email" name="email" type="email" 
                       value="<?= htmlspecialchars($row['email']) ?>" required/>
            </div>
            </br>
            <div>
                <label for="role">Role:</label> 
                <select name="role" id="role">
                    <option value="admin" <?= $row['role'] == 'admin' ? 'selected' : '' ?>>Admin</option>
                    <option value="editor" <?= $row['role'] == 'editor' ? 'selected' : '' ?>>Editor</option>
                </select>
            </div>
            <br/></br>

            <div class="save">
                <button type="submit" class="btn warning" style="font-size: 14px;">Save Now</button>
            </div>
        </form>
    </main>
  </div>
</body>
</html>
