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
    $sql = "SELECT link, alt, description FROM images ORDER BY image_id ASC";

    $image_data = [];
    if ($result = $conn->query($sql)) {
        // Lấy tất cả các dòng dữ liệu vào một mảng
        while ($row = $result->fetch_assoc()) {
            $image_data[] = $row;
        }
        $result->free();
    }
  ?>
  <header>
    <?php
      require_once 'header.php';
    ?>
  </header>
  <main class="container mt-4">
    <div class="row">
      <img src="" alt="">
        <?php
        // Kiểm tra xem có dữ liệu nào không
        if (!empty($image_data)) {
            // Lặp qua từng phần tử trong mảng
            foreach ($image_data as $image) {
                // Hiển thị nội dung theo cấu trúc Bootstrap Card
                echo '<div class="col-lg-4 col-md-6 mb-4">';
                echo '<div class="card h-100 shadow-sm">';
                echo '<img src="' . htmlspecialchars($image['link']) . '" class="card-img-top" alt="' . htmlspecialchars($image['alt']) . '">';
                echo '<div class="card-body">';
                echo '<p class="card-text">' . htmlspecialchars($image['description']) . '</p>';
                echo '</div>';
                echo '</div>';
                echo '</div>';
            }
        } else {
            echo "<p class='text-center'>No references found.</p>";
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
  // Close the database connection if needed
  $conn->close();
  ?>
</body>
</html>