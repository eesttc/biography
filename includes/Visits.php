<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$visit_id = $_GET['visit_id'] ?? 0;
if ($visit_id == 0) {
    die("Error: information not found!");
}

// Lấy thông tin 
$sql = "SELECT * FROM visits WHERE visit_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $visit_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();

if (!$row) {
    die("Error: information not found!");
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
            width: 130px;
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
            height: max-content;
            width: auto;
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
            <h1>Life Story</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
        <div>
             <form action="#" method="POST" class="table">
                </br><h3>Add Life Story</h3></br>
                </br>
                <div >                                   
                    <label class="td" for="id">Id:</label> 
                    <?php echo htmlspecialchars($row['visit_id']) ?>
                </div>
                </br>
                <div >                                     
                    <label class="td" for="Time">Time:</label> 
                    <?php echo htmlspecialchars($row['visit_time']) ?>
                </div>
                </br>
                <div >
                    <label class="td" for="Ip Address">Ip Address:</label> 
                    <?= htmlspecialchars($row['ip_address']) ?>
                </div>
                </br>
                <div >
                    <label class="td" for="Url Page">Url Page:</label> 
                    <?= htmlspecialchars($row['page_url']) ?>
                </div>
                </br>
                <div >
                    <label class="td" for="User Agent">User Agent:</label> 
                    <?= htmlspecialchars($row['user_agent']) ?>
                </div>
                </br></br>
                <div class="save">
                    <button type="submit" class="btn warning"><a href="Admins.php">Back</a></button>
                </div>
            </form>
        </div>    
    </main>
  </div>
</body>
</html>