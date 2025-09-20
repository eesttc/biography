<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM selectedwork";
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
        <li><a href="Admins.php"><span>📊</span> Information</a></li>
        <li><a href="LifeStorys.php"><span>📈</span> Life Story</a></li>
        <li><a href="Awards.php"><span>📈</span> Awards</a></li>
        <li><a href="aResearchs.php"><span>📈</span> Research Works</a></li>
        <li class="active"><a href="Roles.php"><span>📈</span> Roles</a></li>
        <li><a href="aGallerys.php"><span>📈</span> Gallery</a></li>
        <li><span>👥</span> Admin Account</li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Admin Award</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
    
        <div>
            <table class="table">
                <thead>
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="30">ID</th>
                    <th scope="col" >TITLE</th>
                    <th scope="col" >DESCRIPTION</th> 
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['selectedWork_id']); ?></td>		
                    <td><?php echo htmlspecialchars($row['title']); ?></td>
                    <td><?php echo mb_strimwidth($row['description'], 0, 50, "..."); ?></td>
                    <td>
                        <a href="Edit_Roles.php?selectedWork_id=<?php echo urlencode($row['selectedWork_id']); ?>" class="btn warning">Edit</a>
                    </td>
                    <td>
                        <a href="Delete_Roles.php?selectedWork_id=<?php echo urlencode($row['selectedWork_id']); ?>" class="btn danger">Delete</a>
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
            <a href="Add_Roles.php" class="btn success">Add new</a> <!-- Sửa lồng thẻ -->
        </section>
    </main>
  </div>
<?php $conn->close(); ?> <!-- Đóng kết nối -->
</body>
</html>