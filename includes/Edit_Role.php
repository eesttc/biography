<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$selectedWork_id = $_GET['selectedWork_id'] ?? 0;
if ($selectedWork_id == 0) {
    die("Error: information not found!");
}

// Lấy thông tin 
$sql = "SELECT * FROM selectedwork WHERE selectedWork_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $selectedWork_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if (!$row) {
    die("Error: information not found!");
}

// Xử lý cập nhật
if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $title = $_POST['title'] ;
        $description = $_POST['description'];

    $update_sql = "UPDATE selectedwork SET title = ?,description = ? WHERE selectedWork_id = ?";
    $stmt = $conn->prepare($update_sql);
    $stmt->bind_param("ssi", $title, $description, $selectedWork_id);

    if ($stmt->execute()) {
        header("Location: Role.php");
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
    <title>Admin Account</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
    <style>
        label {
            display: inline-block;
            width: 100px;
            margin-left:20%;
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
        <li><a href="Admin.php"><span>📊</span> Information</a></li>
        <li><a href="LifeStory.php"><span>📈</span> Life Story</a></li>
        <li><a href="Award.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearch.php"><span>📈</span> Research Works</a></li>
        <li class="active"><a href="Role.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallery.php"><span>📈</span> Gallery</a></li>
        <li><a href="Admin_Account.php"><span>👥</span> Admin Account</a></li>
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
                </br><h3>Add Award</h3></br>
                </br>
                <div >                                   
                    <label class="td" for="title">Title:</label> 
                     <input id="title" name="title" type="text" class="" value="<?= htmlspecialchars($row['title']) ?>"/>
                </div>
                </br>
                <div >
                    <label class="td" for="description">Description:</label> 
                    <textarea id="description" name="description" type="text" class=""><?= htmlspecialchars($row['description']) ?></textarea>
                </div>
                </br></br>
                <div class="save">
                    <button type="submit" class="btn warning">Save Now</button>
                </div>
            </form>
        </div>    
    </main>
  </div>
</body>
</html>