<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
  <title>Home</title>
</head>
<body>
  <?php
  // Include the configuration file to establish a database connection
  session_start();
  require_once '../biography/includes/config.php';
  require_once '../biography/public/assets/css/style.php';

  $biographyData = "";
    $selectedWorkData = "";
    $researchData = "";
    $refData = "";

    $sql = "SELECT biography, selectedWork, research, ref FROM person LIMIT 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Lấy hàng dữ liệu đầu tiên
        $row = $result->fetch_assoc();
        $biographyData = $row['biography'];
        $selectedWorkData = $row['selectedWork'];
        $researchData = $row['research'];
        $refData = $row['ref'];
    }
  ?>
  <header>
    <?php       
      // Include the header file for common HTML structure
      require_once '../biography/includes/header.php';
    ?>
  </header>
  <div class="main-container">
    <nav class="sidebar">
        <h2>Index</h2>
        <ul>
          <?php
          echo '<ul>';
          echo '<li><a href="#biography">Life Story</a></li>';
          echo '<li><a href="#selectedWork">Roles Previously Held</a></li>';
          echo '<li><a href="#research">Research Works Contributed</a></li>';
          echo '<li><a href="#references">References</a></li>';
          echo '</ul>';
          ?>
        </ul>
    </nav>
  <main>
    <div class="biography-content read-background">
        <h1 id="biography" class="header-title-index"><a href="/biography/includes/biography.php">Life Story</a></h1>
        <p>
          <?php echo nl2br(htmlspecialchars($biographyData)); ?>
        </p>
      </div>
    <hr>
    <div class="biography-content read-background">
      <h1 id="selectedWork" class="header-title-index"><a href="/biography/includes/selectedWorks.php">Roles Previously Held</a></h1>
      <p>
        <?php echo nl2br(htmlspecialchars($selectedWorkData)); ?>
      </p>
    </div>

    <div class="biography-content read-background">
      <h1 id="research" class="header-title-index"><a href="/biography/includes/research.php">Research Works Contributed</a></h1>
      <p>
        <?php echo nl2br(htmlspecialchars($researchData)); ?>
      </p>
    </div>

    <div class="biography-content last-content-container read-background">
      <h1 id="references" class="header-title-index"><a href="/biography/includes/references.php">References</a></h1>
      <p>
        <?php echo nl2br(htmlspecialchars($refData)); ?>
      </p>
    </div>
  </main>
  </div>
  <footer>
    <?php       
      require_once '../biography/includes/footer.php';
    ?>
  </footer>
  <?php
  $conn->close();
  ?>
</body>
</html>