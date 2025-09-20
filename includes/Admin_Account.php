<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM admins";
    $result = $conn->query($sql);
    if (!$result) {
        die("Query failed: " . $conn->error);
    }
    $password = "mypassword";
    $hashed = password_hash($password, PASSWORD_DEFAULT);
    $display_hash = substr($hashed, 0, 20) . "..."; 
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
        <li><a href="aGallery.php"><span>📈</span> Gallery</a></li>
        <li class="active"><span>👥</span> Admin Account</li>
        <li><span>⚙️</span> Settings</li>
      </ul>
    </aside>

    <main class="main-content">
        <header class="header">
            <h1>Admin Account</h1>
            <a href="Login_admin.php" class="btn primary">Logout</a>
        </header>
    
        <div>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col" style="text-align: center;" width="20">ID</th>
                    <th scope="col" width="50">USER NAME</th>
                    <th scope="col" width="50">EMAIL</th>
                    <th scope="col" width="60">ROLE</th>
                    <th scope="col" width="70">LAST LOGIN</th>
                    <th scope="col" width="50">FAILED LOGIN</th>
                    <th scope="col" width="100">&nbsp;</th>
                </tr>
                </thead>
                <tbody>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['admin_id']); ?></td>		
                    <td><?php echo htmlspecialchars($row['username']); ?></td>
                    <td><?php echo htmlspecialchars($row['email']); ?></td>
                    <td><?php echo htmlspecialchars($row['role']); ?></td>
                    <td><?php echo htmlspecialchars($row['last_login'] ?? ''); ?></td>
                    <td style="text-align: center;"><?php echo htmlspecialchars($row['failed_login_attempts']); ?></td>
                    <td>
                        <a href="Edit_Account.php?admin_id=<?php echo urlencode($row['admin_id']); ?>" class="btn warning">Edit</a>
                        <a href="Delete_Account.php?admin_id=<?php echo urlencode($row['admin_id']); ?>" class="btn danger">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="8">No account yet</td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>
        </div>

        <section class="status-buttons">
            <a href="Add_Account.php" class="btn success">Add new</a> <!-- Sửa lồng thẻ -->
        </section>
    </main>
  </div>
<?php $conn->close(); ?> <!-- Đóng kết nối -->
</body>
</html>