<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM ref";
    $result = $conn->query($sql);
    if (!$result) {
        die("Query failed: " . $conn->error);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Account</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
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
        <li class="active"><a href="aGallery.php"><span>📈</span> Gallery</a></li>
        <li><a href="Admin_Account.php"><span>👥</span> Admin Account</a></li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside> 

    <main class="main-content">
        <header class="header">
            <h1>Gallery</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
    
        <div>
            <table class="table">
                <thead>
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="30">ID</th>
                    <th scope="col" >HIGHLIGHT</th>
                    <th scope="col" >LINK</th>
                    <th scope="col" >DESCRIPTION</th> 
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['reference_id']); ?></td>		
                    <td><?php echo htmlspecialchars($row['highlight']); ?></td>
                    <td><?php echo htmlspecialchars($row['link']); ?></td>
                    <td><?php echo mb_strimwidth($row['description'], 0, 50, "..."); ?></td>
                    <td>
                        <a href="Edit_Ref.php?reference_id=<?php echo urlencode($row['reference_id']); ?>" class="btn warning">Edit</a>
                    </td>
                    <td>
                        <a href="Delete_Ref.php?reference_id=<?php echo urlencode($row['reference_id']); ?>" class="btn danger">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="8">No award yet</td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
        </div>
        <section class="status-buttons">
            <a href="Add_Ref.php" class="btn success">Add new</a> <!-- Sửa lồng thẻ -->
        </section>
        </br></br>
        <?php
            $conn = getConnection();
            if (!$conn) {
                die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT * FROM gallery";
            $result = $conn->query($sql);
            if (!$result) {
                die("Query failed: " . $conn->error);
            }
        ?>
        <div>
            <table class="table">
                <thead>
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="30">ID</th>
                    <th scope="col" >URL IMG</th>
                    <th scope="col" >CAPTION</th>
                    <th scope="col" >UPLOAD DATE</th>
                    <th scope="col" >CREATED AT</th>
                    <th scope="col" >UPDATE AT</th> 
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['image_id']); ?></td>		
                    <td><?php echo htmlspecialchars($row['image_url']); ?></td>
                    <td><?php echo htmlspecialchars($row['caption']); ?></td>
                    <td><?php echo htmlspecialchars($row['upload_date']); ?></td>
                    <td><?php echo htmlspecialchars($row['created_at']); ?></td>
                    <td><?php echo htmlspecialchars($row['updated_at']); ?></td>
                    <td>
                        <a href="Edit_Img.php?image_id=<?php echo urlencode($row['image_id']); ?>" class="btn warning">Edit</a>
                    </td>
                    <td>
                        <a href="Delete_Img.php?image_id=<?php echo urlencode($row['image_id']); ?>" class="btn danger">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="8">No information yet</td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
        </div>

        <section class="status-buttons">
            <a href="Add_Img.php" class="btn success">Add new</a> <!-- Sửa lồng thẻ -->
        </section>
    </main>
  </div>
<?php $conn->close(); ?> <!-- Đóng kết nối -->
</body>
</html>