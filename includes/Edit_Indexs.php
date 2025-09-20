<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$person_id = $_GET['person_id'] ?? 0;
if ($person_id == 0) {
    die("Error: information not found!");
}

// Lấy thông tin 
$sql = "SELECT * FROM person WHERE person_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $person_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if (!$row) {
    die("Error: information not found!");
}

// Xử lý cập nhật
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $biography = $_POST['biography'] ?? '';
    $created_at = $_POST['created_at'] ?? '';
    $updated_at = $_POST['updated_at'] ?? '';
    $achievement = $_POST['achievement'] ?? '';
    $research = $_POST['research'] ?? '';
    $selectedWork = $_POST['selectedWork'] ?? '';
    $ref = $_POST['ref'] ?? '';

    $update_sql = "UPDATE person SET biography = ?,created_at = ?,updated_at = ?,achievement = ?, research = ?, selectedWork = ?, ref = ? WHERE person_id = ?";
    $stmt = $conn->prepare($update_sql);
    $stmt->bind_param("sssssssi", $biography, $created_at, $updated_at, $achievement,$research,$selectedWork,$ref, $admin_id);

    if ($stmt->execute()) {
        header("Location: Admins.php");
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
            width: 110px;
            margin-left:20%;
            font-size: 16px;
        }
        textarea{
            font-size: 16px;
            height: 3cm;
            width: 15cm;
        }
        input{
            font-size: 16px;
            height: 1cm;
            width: auto;
        }
        select{
            font-size: 16px;
            height: 20;
            width: 4cm;
        }
        .save{
            margin-left:36%;
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
        <li><a href="Awards.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearchs.php"><span>📈</span> Research Works</a></li>
        <li><a href="Roles.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallerys.php"><span>📈</span> Gallery</a></li>
        <li><span>👥</span> Admin Account</li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Edit Admin Information</h1>
            <button class="btn primary" ><a href="Login_admin.php">Logout</a></button>
        </header>

        <form action="" method="POST" class="table">
            </br><h3>Edit Index</h3></br>

            <div>
                <label for="biography">Biography:</label> 
                <textarea id="biography" name="biography" type="text" required><?= htmlspecialchars($row['biography']) ?></textarea>
            </div><br/>
            
            <div>
                <label for="created_at">Created at:</label> 
                <input id="created_at" name="created_at" type="datetime"
                       value="<?= htmlspecialchars($row['created_at']) ?>" required/>
            </div><br/>
            
            <div>
                <label for="updated_at">updated_at:</label> 
                <input id="updated_at" name="updated_at" type="datetime" 
                       value="<?= htmlspecialchars($row['updated_at']) ?>" required/>
            </div></br>

            <div>
                <label for="achievement">Achievement:</label> 
                <textarea id="achievement" name="achievement" type="text" required><?= htmlspecialchars($row['achievement']) ?></textarea>
            </div><br/>

            <div>
                <label for="research">Research:</label> 
                <textarea id="research" name="research" type="text" required><?= htmlspecialchars($row['research']) ?></textarea>
            </div><br/>

            <div>
                <label for="selectedWork">SelectedWork:</label> 
                <textarea id="selectedWork" name="selectedWork" type="text" required><?= htmlspecialchars($row['selectedWork']) ?></textarea>
            </div><br/>

            <div>
                <label for="ref">Ref:</label> 
                <input id="ref" name="ref" type="text" 
                       value="<?= htmlspecialchars($row['ref']) ?>" required/>
            </div><br/>
            
            <br/>

            <div class="save">
                <button type="submit" class="btn warning">Save Now</button>
            </div>
        </form>
    </main>
  </div>
</body>
</html>
