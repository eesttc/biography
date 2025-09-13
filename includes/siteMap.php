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
  ?>
  <header>
    <?php
      require_once 'header.php';
    ?>
  </header>
  <main>
    <div>
      <img src="/biography/public/assets/images/siteMap.png" alt="">
    </div>
    <div class="biography-content read-background">
      <ul>
        <h1><a href="/biography/">Index</a></h1>
        <li><a href="/biography/includes/biography.php">Life story</a></li>
        <li><a href="/biography/includes/research.php">Research works contributed</a></li>
        <li><a href="/biography/includes/awardsAndHonors.php">Awards and achievements</a></li>
        <li><a href="/biography/includes/selectedWorks.php">Roles previously held</a></li>
        <li>
          <ol>
            <a href="/biography/includes/gallery.php">Gallery</a>
            <li><a href="/biography/includes/gallery-images.php">Images</a></li>
            <li><a href="/biography/includes/gallery-references.php">References</a></li>
          </ol>
        </li>
          <li><a href="https://www.fb.com/">Facebook</a></li>
          <li><a href="https://www.instagram.com/">Instagram</a></li>
          <li><a href="https://www.youtube.com/">Youtube</a></li>
          <li><a href="https://www.x.com/">X</a></li>
          <li><a href="mailto:lilcuries@gmail.com">lilcuries@gmail.com</a></li>
        </li>
      </ul>
    </div>
  </main>
  <footer>
    <?php
      require_once 'footer.php';
    ?>
  </footer>
  <?php
  // Close the database connection if needed
  $conn->close();
  ?>
</body>
</html>