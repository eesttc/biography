<?php
$ip = $_SERVER['REMOTE_ADDR'];
$user_agent = $_SERVER['HTTP_USER_AGENT'];
$page_url = $_SERVER['REQUEST_URI'];
$sql = "INSERT INTO Visits (ip_address, page_url, user_agent) VALUES ('$ip', '$page_url', '$user_agent')";
$conn->query($sql);

$visit_count = $conn->query("SELECT COUNT(*) AS count FROM Visits")->fetch_assoc()['count'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
  <title>Header</title>
</head>
<body>
    <div id="visit-count">Visits: <?php echo $visit_count; ?></div>

    <div class="header-container1">
        <ul class="list-header1">
            <li>
                <h1>Marie Curie - Pioneer of Radioactivity</h1>
            </li>
            <li class="logo-header"><a href="/biography/index.php">
                <img id="logo" src="/biography/public/assets/images/logo-header.jpg" alt="Marie Curie Logo">
            </a></li>
        </ul>
    </div>
    <div class="header-container2">
    <ul class="menu">
        <li class="brand">
            <a href="/biography/includes/biography.php">Life story</a>
        </li>
        <li class="brand">
            <a href="/biography/includes/research.php">Research works contributed</a>
        </li>
        <li class="brand">
            <a href="/biography/includes/awardsAndHonors.php">Awards and achievements</a>
        </li>
        <li class="brand">
            <a href="/biography/includes/selectedWorks.php">Roles previously held</a>
        </li>
        <li class="brand">
            <a href="/biography/includes/gallery.php">Gallery</a>
        </li>
        <li class="brand">
            <a href="/biography/includes/siteMap.php">Site Map</a>
        </li>
    </ul>
    </div>
</body>
</html>