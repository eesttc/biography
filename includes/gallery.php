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
    <div class="container-gallery">
      <a href="/biography/includes/gallery-images.php">
        <div class="gallery-images"></div>
      </a>
      <a href="/biography/includes/gallery-references.php">
        <div class="gallery-references"></div>
      </a>
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