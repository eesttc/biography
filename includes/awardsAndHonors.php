<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
  <title></title>
</head>
<body>
  <?php
    session_start();
    require_once 'config.php';
    require_once '../public/assets/css/style.php';
    $sql = "SELECT title, description FROM achievements ORDER BY achievement_id ASC";

    $achievements_data = [];
    if ($result = $conn->query($sql)) {
        // Lấy tất cả các dòng dữ liệu vào một mảng
        while ($row = $result->fetch_assoc()) {
            $achievements_data[] = $row;
        }
        $result->free();
    }
  ?>
  <header>
    <?php
      require_once 'header.php';
    ?>
  </header>
  <div class="main-container">
    <nav class="sidebar">
          <h2>Index</h2>
          <ul>
            <?php
            foreach ($achievements_data as $section) {
            $id = strtolower(str_replace(' ', '-', $section['title']));
            echo '<li><a href="#' . htmlspecialchars($id) . '">' . htmlspecialchars($section['title']) . '</a></li>';
            }
            ?>
          </ul>
      </nav>
    <main>
      <?php
      if (!empty($achievements_data)) {
          foreach ($achievements_data as $index => $achievement) {
              $id = strtolower(str_replace(' ', '-', $achievement['title']));
              echo '<div id="'. htmlspecialchars($id) .'" class="biography-content read-background">';
              echo "<h1>" . htmlspecialchars($achievement['title']) . "</h1>";
              
              echo "<p>" . nl2br(htmlspecialchars($achievement['description'])) . "</p>";
              echo "</div>";
              if ($index < count($achievements_data) - 1) {
                  echo "<hr>";
              }
          }
      } else {
          echo "<p>No awards or honors found.</p>";
      }
      ?>
    </main>
  </div>
  <footer>
    <?php
      require_once 'footer.php';
    ?>
  </footer>
  <?php
  $conn->close();
  ?>
</body>
</html>