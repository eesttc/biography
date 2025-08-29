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
  // Include the configuration file to establish a database connection
  require_once 'config.php';
  
  // Include the header file for common HTML structure
  require_once 'header.php';

  require_once '../public/assets/css/style.php';
  ?>

    <h1>Site map</h1>

  <?php
  // Close the database connection if needed
  $conn->close();
  ?>
</body>
</html>