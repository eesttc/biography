<?php
session_start();
$ip = $_SERVER['REMOTE_ADDR'];
$user_agent = $_SERVER['HTTP_USER_AGENT'];
$page_url = $_SERVER['REQUEST_URI'];
$sql = "INSERT INTO Visits (ip_address, page_url, user_agent) VALUES ('$ip', '$page_url', '$user_agent')";
$conn->query($sql);

$visit_count = $conn->query("SELECT COUNT(*) AS count FROM Visits")->fetch_assoc()['count'];

$person = $conn->query("SELECT * FROM Person LIMIT 1")->fetch_assoc();

// Kiểm tra nếu tìm thấy person_id hợp lệ
$person_id = (is_array($person) && isset($person['person_id'])) ? $person['person_id'] : null;

// Chỉ thực hiện các truy vấn này nếu person_id tồn tại
if ($person_id !== null) {
    $education = $conn->query("SELECT * FROM Education WHERE person_id = $person_id");
    $career = $conn->query("SELECT * FROM Career WHERE person_id = $person_id");
    $research = $conn->query("SELECT * FROM Research WHERE person_id = $person_id");
    $awards = $conn->query("SELECT * FROM Awards WHERE person_id = $person_id");
    $works = $conn->query("SELECT * FROM Works WHERE person_id = $person_id");
    $gallery = $conn->query("SELECT * FROM Gallery WHERE person_id = $person_id");
    $references = $conn->query("SELECT * FROM `References` WHERE person_id = $person_id");
} else {
    // Nếu không tìm thấy person_id, gán các biến bằng một kết quả rỗng
    // để tránh các lỗi tiếp theo khi bạn sử dụng chúng
    $education = $conn->query("SELECT * FROM Education WHERE 1=0");
    $career = $conn->query("SELECT * FROM Career WHERE 1=0");
    $research = $conn->query("SELECT * FROM Research WHERE 1=0");
    $awards = $conn->query("SELECT * FROM Awards WHERE 1=0");
    $works = $conn->query("SELECT * FROM Works WHERE 1=0");
    $gallery = $conn->query("SELECT * FROM Gallery WHERE 1=0");
    $references = $conn->query("SELECT * FROM `References` WHERE 1=0");
}
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
   <header>
        <div id="visit-count">Visits: <?php echo $visit_count; ?></div>

        <div class="header-container1">
            <ul class="list-header1">
                <li class="logo-header"><a href="/biography/index.php">
                    <img id="logo" src="/biography/public/assets/images/logo-header.jpg" alt="Marie Curie Logo">
                </a></li>
                <li>
                    <h1>Marie Curie - Pioneer of Radioactivity</h1>
                </li>
                <li id="search-header" class="header-empty">
                    <form action="../includes/search-product.php" method="GET" class="search-container">
                        <input type="text" name="query" class="search" placeholder="Search" required>
                        <i class="bi bi-search"></i>
                        <button type="submit" class="search-button">Search</button>
                    </form>
                </li>
            </ul>
        </div>
        <div class="header-container2">
        <ul class="menu">
            <li class="brand">
                <a href="/biography/includes/biography.php">Biography</a>
                    <ul class="submenu">
                        
                    </ul>
            </li>
            <li class="brand">
                <a href="/biography/includes/research.php">Research</a>
                    <ul class="submenu">

                    </ul>
            </li>
            <li class="brand">
                <a href="/biography/includes/awardsAndHonors.php">Awards and Honors</a>
                    <ul class="submenu">
                        
                    </ul>
            </li>
            <li class="brand">
                <a href="/biography/includes/selectedWorks.php">Selected Works</a>
                    <ul class="submenu">

                    </ul>
            </li>
            <li class="brand">
                <a href="/biography/includes/references.php">References</a>
                    <ul class="submenu">

                    </ul>
            </li>
            <li class="brand">
                <a href="/biography/includes/siteMap.php">Site Map</a>
                    <ul class="submenu">

                    </ul>
            </li>
        </ul>
        </div>
    </header>
</body>
</html>