<?php
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("location: login.php");
    exit;
}

require 'config.php';

$action = $_GET['action'] ?? null;
$id = $_GET['id'] ?? null;
$message = '';
$error = '';

// Xử lý các yêu cầu POST (Thêm/Sửa)
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $link = $_POST['link'];
    $alt = $_POST['alt'];
    $description = $_POST['description'];

    if (isset($_POST['action_type']) && $_POST['action_type'] == 'add') {
        $sql = "INSERT INTO images (link, alt, description) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $link, $alt, $description);
        if ($stmt->execute()) {
            $message = "Add Success!";
        } else {
            $error = "Oops: " . $stmt->error;
        }
    } else if (isset($_POST['action_type']) && $_POST['action_type'] == 'edit' && isset($_POST['id'])) {
        $edit_id = $_POST['id'];
        $sql = "UPDATE images SET link=?, alt=?, description=? WHERE image_id=?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssi", $link, $alt, $description, $edit_id);
        if ($stmt->execute()) {
            $message = "Modify Success!";
        } else {
            $error = "Oops: " . $stmt->error;
        }
    }
    header("location: manage_images.php?message=" . urlencode($message) . "&error=" . urlencode($error));
    exit;
}

// Xử lý yêu cầu GET (Xóa)
if ($action == 'delete' && $id) {
    $sql = "DELETE FROM images WHERE image_id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        $message = "Delete Success!";
    } else {
        $error = "Oops: " . $stmt->error;
    }
    header("location: manage_images.php?message=" . urlencode($message) . "&error=" . urlencode($error));
    exit;
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Manage Images</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px; }
        .container { max-width: 1200px; margin: auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1, h2 { text-align: center; color: #0275d8; }
        .message { text-align: center; color: green; font-weight: bold; }
        .error { text-align: center; color: red; font-weight: bold; }
        .back-btn { display: inline-block; margin-bottom: 20px; padding: 10px 15px; background-color: #5cb85c; color: white; text-decoration: none; border-radius: 4px; }
        .form-section { border: 1px solid #ccc; padding: 20px; border-radius: 8px; margin-bottom: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], textarea { width: calc(100% - 22px); padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-submit { padding: 10px 20px; background-color: #0275d8; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn-submit:hover { background-color: #025aa5; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        table, th, td { border: 1px solid #ccc; }
        th, td { padding: 10px; text-align: left; vertical-align: top; }
        th { background-color: #f2f2f2; }
        .actions a { text-decoration: none; padding: 5px 10px; border-radius: 4px; color: white; margin-right: 5px; }
        .edit { background-color: #5bc0de; }
        .delete { background-color: #d9534f; }
        img { max-width: 150px; height: auto; display: block; }
    </style>
</head>
<body>

<div class="container">
    <a href="dashboard.php" class="back-btn">← Back to Dashboard</a>
    <h1>Images</h1>

    <?php 
    if (isset($_GET['message']) && !empty($_GET['message'])) {
        echo "<p class='message'>" . htmlspecialchars($_GET['message']) . "</p>";
    }
    if (isset($_GET['error']) && !empty($_GET['error'])) {
        echo "<p class='error'>" . htmlspecialchars($_GET['error']) . "</p>";
    }
    ?>

    <div class="form-section">
        <h2>Add/Modify</h2>
        <?php
        $current_image = ['image_id' => '', 'link' => '', 'alt' => '', 'description' => ''];
        $form_action_type = 'add';
        
        if ($action == 'edit' && $id) {
            $sql = "SELECT * FROM images WHERE image_id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                $current_image = $result->fetch_assoc();
                $form_action_type = 'edit';
            }
            $stmt->close();
        }
        ?>

        <form action="manage_images.php" method="post">
            <input type="hidden" name="action_type" value="<?php echo $form_action_type; ?>">
            <input type="hidden" name="id" value="<?php echo htmlspecialchars($current_image['image_id']); ?>">

            <div class="form-group">
                <label for="link">Link:</label>
                <input type="text" id="link" name="link" value="<?php echo htmlspecialchars($current_image['link']); ?>" required>
            </div>
            <div class="form-group">
                <label for="alt">Alt:</label>
                <input type="text" id="alt" name="alt" value="<?php echo htmlspecialchars($current_image['alt']); ?>" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="5" required><?php echo htmlspecialchars($current_image['description']); ?></textarea>
            </div>
            
            <button type="submit" class="btn-submit"><?php echo ($form_action_type == 'edit' ? 'Modify' : 'Add'); ?></button>
            <a href="manage_images.php" class="btn-submit" style="background-color: #f0ad4e;">Cancel</a>
        </form>
    </div>

    <h2>Images</h2></h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Link</th>
                <th>Alt</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = "SELECT * FROM images ORDER BY image_id ASC";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($row['image_id']) . "</td>";
                    echo "<td><img src='" . htmlspecialchars($row['link']) . "' alt='" . htmlspecialchars($row['alt']) . "'></td>";
                    echo "<td>" . htmlspecialchars($row['link']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['alt']) . "</td>";
                    echo "<td class='actions'>";
                    echo "<a href='manage_images.php?action=edit&id=" . $row['image_id'] . "' class='edit'>Modify</a>";
                    echo "<a href='manage_images.php?action=delete&id=" . $row['image_id'] . "' class='delete' onclick=\"return confirm('Are you sure to delete?');\">Delete</a>";
                    echo "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='5' style='text-align:center;'>Nothing.</td></tr>";
            }
            $conn->close();
            ?>
        </tbody>
    </table>
</div>

</body>
</html>