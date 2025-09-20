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
        $title = $_POST['title'];
        $description = $_POST['description'];

        $sql = "INSERT INTO selectedwork (title,description) VALUES (?, ?)";
        $stmt = $conn->prepare($sql);
        
        if ($stmt) {
            $stmt->bind_param("ss", $title, $description);

            if ($stmt->execute()) {
                header("Location: Roles.php");
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
            margin-left:0%;
            font-size: 16px;
        }
        textarea{
            font-size: 16px;
            height: auto;
            width: 10cm;
        }
        input{
            font-size: 16px;
            height: 1cm;
            width: 10cm  ;
        }
        select{
            font-size: 16px;
            height: 20;
            width: 4cm;
        }
        .save{
            margin-left:40%;
        }
        h3{
            margin-left:45%;
            font-size: 25px;
        }
    </style>
</head>
<body>
  <div class="dashboard-container">
    <aside class="sidebar">
      <h2 class="sidebar-title">Admin</h2>
      <ul class="nav-list">
        <li><a href="Admins.php"><span>📊</span> Information</a></li>
        <li><a href="LifeStorys.php"><span>📈</span> Life Story</a></li>
        <li ><a href="Awards.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearchs.php"><span>📈</span> Research Works</a></li>
        <li><a href="Roles.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallerys.php"><span>📈</span> Gallery</a></li>
        <li><span>👥</span> Admin Account</li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Award</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
        <div>
            <form action="#" method="POST" class="table">
                </br><h3>Add Life Award</h3>
                </br>
                <div>                                   
                    <label class="td" for="title">Title:</label> 
                     <input id="title" name="title" type="text" class=""/>
                </div>
                </br>
                <div>
                    <label class="td" for="description">Description:</label> 
                    <textarea id="description" name="description" type="text" class=""></textarea>
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