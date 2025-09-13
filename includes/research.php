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

    $sql = "SELECT title, description, img1_link, img1_alt, img1_description, img2_link, img2_alt, img2_description FROM research ORDER BY research_id ASC";

    $research_sections = [];
    if ($result = $conn->query($sql)) {
        while ($row = $result->fetch_assoc()) {
            $research_sections[] = $row;
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
          foreach ($research_sections as $section) {
          $id = strtolower(str_replace(' ', '-', $section['title']));
          echo '<li><a href="#' . htmlspecialchars($id) . '">' . htmlspecialchars($section['title']) . '</a></li>';
          }
          ?>
        </ul>
    </nav>
  <main>
    <?php
    if (!empty($research_sections)) {
        foreach ($research_sections as $index => $section) {
            $id = strtolower(str_replace(' ', '-', $section['title']));
            echo "<div id=" . htmlspecialchars($id) . " class='biography-content read-background'>";
            echo "<h1>" . htmlspecialchars($section['title']) . "</h1>";
            echo '<div class="biography-section">';
            if(!empty($section['img1_link'])){
              echo '<div class="image-container">';
              echo '<img src="'. htmlspecialchars($section['img1_link']) .'" alt= "'.htmlspecialchars($section['img1_alt']).'">';
              echo '<p class="image-caption">'.htmlspecialchars($section['img1_description']).'</p>';
              echo '</div>';
            }
            echo '<div class="content">';
            echo "<p>" . nl2br(htmlspecialchars($section['description'])) . "</p>";
            echo "</div>";
            if(!empty($section['img2_link'])){
              echo '<div class="image-container">';
              echo '<img src="'. htmlspecialchars($section['img2_link']) .'" alt= "'.htmlspecialchars($section['img2_alt']).'">';
              echo '<p class="image-caption">'.htmlspecialchars($section['img2_description']).'</p>';
              echo '</div>';
            }
            echo "</div></div>";
            if ($index < count($research_sections) - 1) {
                echo "<hr>";
            }
        }
    } else {
        echo "<p>No research content found.</p>";
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
  // Close the database connection if needed
  $conn->close();
  ?>
</body>
</html>