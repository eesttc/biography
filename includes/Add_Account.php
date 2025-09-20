<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $password_hash = password_hash($_POST['password_hash'], PASSWORD_DEFAULT);
        $email = $_POST['email'];
        $role = $_POST['role'];

        $sql = "INSERT INTO admins (username, password_hash, email, role) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        
        if ($stmt) {
            $stmt->bind_param("ssss", $username, $password_hash, $email, $role);

            if ($stmt->execute()) {
                header("Location: Admin_Account.php");
                exit();
            } else {
                echo "Ero: " . $stmt->error;
            }
        } else {
            echo "Lỗi khi chuẩn bị truy vấn!";
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
    <title>Admin Account</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
    <style>
        label {
        display: inline-block;
        width: 100px;
        text-align: right;
        margin-right: 10px;
        }
        .save{
            margin-left:50%;
        }
        h3{
            margin-left:50%;
        }
    </style>
</head>
<body>
  <div class="dashboard-container">
    <aside class="sidebar">
      <h2 class="sidebar-title">Admin</h2>
      <ul class="nav-list">
        <li><a href="Admin.php"><span>📊</span> Information</a></li>
        <li><a href="LifeStory.php"><span>📈</span> Life Story</a></li>
        <li><a href="Award.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearch.php"><span>📈</span> Research Works</a></li>
        <li><a href="Role.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallery.php"><span>📈</span> Gallery</a></li>
        <li><a href="Admin_Account.php"><span>👥</span> Admin Account</a></li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Admin Account</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
        <div>
            <form action="#" method="POST" class="table">
                </br><h3>Add Account</h3>
                </br>
                <div >
                    <label class="td" for="username">Username:</label> 
                    <input id="username" name="username" type="text" class="" required/>
                </div></br>
                
                <div >
                    <label class="td" for="password_hash">Password:</label> 
                    <input id="password_hash" name="password_hash" type="text" class="" required/>
                </div></br>
                
                <div>
                    <label class="td" for="email">Email:</label> 
                    <input id="email" name="email" type="email" class="" required/>
                </div></br>
                
                <div>
                    <label class="td" for="role">Role:</label> 
                    <select name="role" id="role">
                        <option value="admin">Admin</option>
                        <option value="editor" selected>Editor</option>
                    </select>
                </div>
                </br></br>
                <div class="save">
                    <button type="submit" class="btn warning">Add Now</button>
                </div>
            </form>
        </div>    
    </main>
  </div>
</body>
</html>