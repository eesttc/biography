<?php
    session_start();
    include "Biography_db.php";
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    $conn = getConnection();
    if (!$conn) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM person";
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
        <li class="active"><span>📊</span> Information</li>
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
        <h1>Information</h1>
        <button class="btn primary"><a href="Login_admin.php">Logout</a></button>
      </header>
        <div>
            <table class="table"> 
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="20">ID</th>
                    <th scope="col" >Biography</th>
                    <th scope="col" >Created at</th>
                    <th scope="col" >Updated at</th>
                    <th scope="col" >Achievement</th>
                    <th scope="col" >Research</th>
                    <th scope="col" >SelectedWork</th>
                    <th scope="col" >Ref</th>
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center; width:40px;"><?php echo htmlspecialchars($row['person_id']); ?></td>		
                    <td><?php echo mb_strimwidth($row['biography'], 0, 20, "..."); ?></td> 
                    <td><?php echo htmlspecialchars($row['created_at']); ?></td>
                    <td><?php echo htmlspecialchars($row['updated_at']); ?></td>
                    <td><?php echo mb_strimwidth($row['achievement'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['research'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['selectedWork'], 0, 20, "..."); ?></td>
                    <td><?php echo htmlspecialchars($row['ref']); ?></td>
                    <td>
                        <a href="Edit_Index.php?person_id=<?php echo urlencode($row['person_id']); ?>" class="btn warning">Edit</a>
                    </td>
                    <td>    
                        <a href="Delete_Index.php?person_id=<?php echo urlencode($row['person_id']); ?>" class="btn danger">Delete</a>
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
              <a href="Add_Index.php" class="btn success">Add new</a>
            </section>
        </div>

          </br></br><h1>Visited</h1></br>
        <?php 
          $conn = getConnection();
          if (!$conn) {
              die("Connection failed: " . $conn->connect_error);
          }

          $sql = "SELECT * FROM visits";
          $result = $conn->query($sql);
          if (!$result) {
              die("Query failed: " . $conn->error);
          }
        ?>
        <div>
            <table class="table"> 
                <tr style="height: 1.5cm;">
                    <th scope="col" style="text-align: center;" width="20">ID</th>
                    <th scope="col" >Time</th>
                    <th scope="col" >Ip Address</th>
                    <th scope="col" >Url Page</th>
                    <th scope="col" >User Agent</th>
                    <th scope="col" >&nbsp;</th>
                    <th scope="col" >&nbsp;</th>
                </tr>
                <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr height="40">
                    <td style="text-align: center; width: 50px;"><?php echo htmlspecialchars($row['visit_id']); ?></td>		
                    <td><?php echo mb_strimwidth($row['visit_time'], 0, 20, "..."); ?></td> 
                    <td><?php echo mb_strimwidth($row['ip_address'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['page_url'], 0, 20, "..."); ?></td>
                    <td><?php echo mb_strimwidth($row['user_agent'], 0, 20, "..."); ?></td>
                    <td>
                        <a href="Visit.php?visit_id=<?php echo urlencode($row['visit_id']); ?>" class="btn warning">Full</a>
                    </td>
                    <td>    
                        <a href="Delete_Visit.php?visit_id=<?php echo urlencode($row['visit_id']); ?>" class="btn danger">Delete</a>
                    </td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="6">No information yet</td>
                    </tr>
                <?php endif; ?>   
            </table>
        </div>
    </main>
  </div>
</body>
</html>
