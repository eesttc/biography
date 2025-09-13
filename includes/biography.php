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

    $sql = "SELECT stage, content, img1_link, img1_alt, img1_description, img2_link, img2_alt, img2_description FROM biography ORDER BY biography_id ASC";

    $biography_sections = [];
    if ($result = $conn->query($sql)) {
      while ($row = $result->fetch_assoc()) {
          $biography_sections[] = $row;
      }
      $result->free();
    }
  ?>
  <header>
    <?php  
      require_once 'header.php';
    ?>
  </header>
  <div class="main-container">
    <nav class="sidebar">
        <h2>Index</h2>
        <ul>
          <?php
          foreach ($biography_sections as $section) {
          // Tạo ID từ tiêu đề và làm sạch
          $id = strtolower(str_replace(' ', '-', $section['stage']));
          echo '<li><a href="#' . htmlspecialchars($id) . '">' . htmlspecialchars($section['stage']) . '</a></li>';
          }
          ?>
        </ul>
    </nav>
  <main>
    <?php
    if (!empty($biography_sections)) {
        foreach ($biography_sections as $index => $section) {
            $id = strtolower(str_replace(' ', '-', $section['stage']));
            ?>
            <div id="<?php echo htmlspecialchars($id) ?>" class="biography-content read-background">
            <h1><?php echo htmlspecialchars($section['stage']); ?></h1>
            <div class="biography-section">
                <?php
                if (!empty($section['img1_link'])) {
                    ?>
                    <div class="image-container">
                        <img src="<?php echo htmlspecialchars($section['img1_link']); ?>" alt="<?php echo htmlspecialchars($section['img1_alt']); ?>">
                        <p class="image-caption"><?php echo htmlspecialchars($section['img1_description']); ?></p>
                    </div>
                    <?php
                }
                ?>
                <div class="content">
                    <p><?php echo nl2br(htmlspecialchars($section['content'])); ?></p>
                </div>
                <?php
                if (!empty($section['img2_link'])) {
                    ?>
                    <div class="image-container-right">
                        <img src="<?php echo htmlspecialchars($section['img2_link']); ?>" alt="<?php echo htmlspecialchars($section['img2_alt']); ?>">
                        <p class="image-caption"><?php echo htmlspecialchars($section['img2_description']); ?></p>
                    </div>
                    <?php
                }
                ?>
            </div>
            </div>
            <?php
            if ($index < count($biography_sections) - 1) {
                echo "<hr>";
            }
        }
    } else {
        echo "<p>No biography content found.</p>";
    }
    ?>
  </main>
 </div>
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