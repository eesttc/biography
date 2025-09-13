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
    $sql = "SELECT title, description FROM selectedWork ORDER BY selectedWork_id ASC";

    $selected_works = [];
    if ($result = $conn->query($sql)) {
        // Lấy tất cả các dòng dữ liệu vào một mảng
        while ($row = $result->fetch_assoc()) {
            $selected_works[] = $row;
        }
        $result->free();
    }
  ?>
  <header>
    <?php
      require_once 'header.php';
    ?>
  </header>
  <main>
    <?php
    if (!empty($selected_works)) {
        foreach ($selected_works as $index => $work) {
            echo "<div class='biography-content read-background'>";
            echo "<h1>" . htmlspecialchars($work['title']) . "</h1>";
            echo "<p>" . nl2br(htmlspecialchars($work['description'])) . "</p>";
            echo "</div>";
            if ($index < count($selected_works) - 1) {
                echo "<hr>";
            }
        }
    } else {
        echo "<p>No selected works found.</p>";
    }
    ?>
  </main>
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