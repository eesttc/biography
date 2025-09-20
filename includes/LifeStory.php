<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM biography";
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
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="../public/assets/css/style.css" />
</head>
<body>
  <div class="dashboard-container">
    <aside class="sidebar">
      <h2 class="sidebar-title">Admin</h2>
      <ul class="nav-list">
        <li><a href="Admin.php"><span>📊</span> Information</a></li>
        <li class="active"><a href="LifeStory.php"><span>📈</span> Life Story</a></li>
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
        <button class="btn primary"><a href="Login_admin.php">Logout</a></button>
      </header>
        <div>
            <table class="table"> 
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="20">ID</th>
                    <th scope="col" >STAGE</th>
                    <th scope="col" >CONTENT</th>
                    <th scope="col" >IMG1</th>
                    <th scope="col" >DESCRIPTION1</th>
                    <th scope="col" >IMG2</th>
                    <th scope="col" >DESCRIPTION2</th>
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['biography_id']); ?></td>		
                    <td><?php echo mb_strimwidth($row['stage'], 0, 20, "..."); ?></td> 
                    <td><?php echo mb_strimwidth($row['content'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['img1_alt'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['img1_description'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['img2_alt'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['img2_description'], 0, 20, "..."); ?></td>
                    <td>
                        <a href="Edit_LifeStory.php?biography_id=<?php echo urlencode($row['biography_id']); ?>" class="btn warning">Edit</a>
                    </td>
                    <td>    
                        <a href="Delete_LifeStory.php?biography_id=<?php echo urlencode($row['biography_id']); ?>" class="btn danger">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="9">No information yet</td>
                    </tr>
                <?php endif; ?>
                
            </table>
            <section class="status-buttons">
              <a href="Add_LifeStory.php" class="btn success">Add new</a>
            </section>
        </div>
    </main>
  </div>
</body>
</html>
