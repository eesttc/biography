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
  ?>
  <header>
    <?php       
      // Include the header file for common HTML structure
      require_once '../biography/includes/header.php';
    ?>
  </header>
  <main>
    <div class="biography-content">
      <h1 class="header-title-index"><a href="/biography/includes/biography.php">Life Story</a></h1>
      <p>

      </p>
      <div class="biography-images-container">
        <div class="index-images">
          <a href="/biography/includes/biography.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
        <div class="index-images">
          <a href="/biography/includes/biography.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
    <hr>
    <div class="biography-content">
    <h1 class="header-title-index"><a href="/biography/includes/selectedWorks.php">Roles Previously Held</a></h1>
    <p>
      
    </p>
      <div class="biography-images-container">
        <div class="index-images">
          <a href="/biography/includes/selectedWorks.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
        <div class="index-images">
          <a href="/biography/includes/selectedWorks.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
      </div>
    </div>

    <div class="biography-content">
    <h1 class="header-title-index"><a href="/biography/includes/research.php">Research Works Contributed</a></h1>
    <p>
      
    </p>
      <div class="biography-images-container">
        <div class="index-images">
          <a href="/biography/includes/research.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
        <div class="index-images">
          <a href="/biography/includes/research.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
      </div>
    </div>

    <div class="biography-content">
    <h1 class="header-title-index"><a href="/biography/includes/awardsAndHonors.php">Awards and Achievements</a></h1>
    <p>
      
    </p>
      <div class="biography-images-container">
        <div class="index-images">
          <a href="/biography/includes/awardsAndHonors.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
        <div class="index-images">
          <a href="/biography/includes/awardsAndHonors.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
      </div>
    </div>

    <div class="biography-content last-content-container">
    <h1 class="header-title-index"><a href="/biography/includes/references.php">References</a></h1>
    <p>
      
    </p>
      <div class="biography-images-container">
        <div class="index-images">
          <a href="/biography/includes/references.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
        <div class="index-images">
          <a href="/biography/includes/references.php">
            <img src="./public/assets/images/logo-header.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </main>
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