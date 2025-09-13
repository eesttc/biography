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
    $sql = "SELECT highlight, link, description FROM ref ORDER BY reference_id ASC";

    $references_data = [];
    if ($result = $conn->query($sql)) {
        while ($row = $result->fetch_assoc()) {
            $references_data[] = $row;
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
    <div class="read-background biography-content">
    <?php
      if (!empty($references_data)) {
          foreach ($references_data as $reference) {
              echo "<p>";
              echo "<a href='" . htmlspecialchars($reference['link']) . "'>";
              echo htmlspecialchars($reference['highlight']);
              echo "</a>";
              echo " " . nl2br(htmlspecialchars($reference['description']));
              echo "</p>";
          }
      } else {
          echo "<p>No references found.</p>";
      }
      ?>
    </div>
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