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
        $stage = $_POST['stage'];
        $content = $_POST['content'];
        $img1_link = $_POST['img1_link'];
        $img1_alt = $_POST['img1_alt'];
        $img1_description = $_POST['img1_description'];
        $img2_link = $_POST['img2_link'];
        $img2_alt = $_POST['img2_alt'];
        $img2_description = $_POST['img2_description'];

        $sql = "INSERT INTO biography (stage,content,img1_link,img1_alt,img1_description, img2_link,img2_alt,img2_description) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        
        if ($stmt) {
            $stmt->bind_param("ssssssss", $stage, $content, $img1_link, $img1_alt, $img1_description,$img2_link, $img2_alt, $img2_description);

            if ($stmt->execute()) {
                header("Location: LifeStory.php");
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
            height: 1cm;
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
            <h1>Life Story</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
        <div>
            <form action="#" method="POST" class="table">
                </br><h3>Add Life Story</h3>
                </br>
                <div >                                   
                    <label class="td" for="stage">Stage:</label> 
                     <textarea id="stage" name="stage" type="text" class=""></textarea>
                </div></br>
                
                <div >                                     
                    <label class="td" for="content">Content:</label> 
                     <textarea id="content" name="content" type="text" class=""></textarea>
                </div></br>

                <div >
                    <label class="td" for="img1_link">link img1:</label> 
                    <textarea id="img1_link" name="img1_link" type="text" class="" ></textarea>
                </div></br>
                
                <div >
                    <label class="td" for="img1_alt">Alt img1:</label> 
                    <input id="img1_alt" name="img1_alt" type="text" class=""/>
                </div></br>
                
                <div>
                    <label class="td" for="img1_description">Description img1:</label> 
                    <textarea id="img1_description" name="img1_description" type="text" class=""></textarea>
                </div></br>

                <div >
                    <label class="td" for="img2_link">link img2:</label> 
                    <textarea id="img2_link" name="img2_link" type="text" class="" ></textarea>
                </div></br>
                
                <div >
                    <label class="td" for="img2_alt">Alt img2:</label> 
                    <input id="img2_alt" name="img2_alt" type="text" class=""/>
                </div></br>
                
                <div >
                    <label class="td" for="img2_description">Description img2:</label> 
                    <textarea id="img2_description" name="img2_description" type="text" class=""></textarea>
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