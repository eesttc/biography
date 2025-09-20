<?php
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("location: login.php");
    exit;
}

require 'config.php';

$message = '';
$error = '';
$person_data = ['biography' => '', 'achievement' => '', 'research' => '', 'selectedWork' => '', 'ref' => ''];
$person_id = 1; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $biography = $_POST['biography'];
    $achievement = $_POST['achievement'];
    $research = $_POST['research'];
    $selectedWork = $_POST['selectedWork'];
    $ref = $_POST['ref'];

    $check_sql = "SELECT person_id FROM person WHERE person_id = ?";
    $check_stmt = $conn->prepare($check_sql);
    $check_stmt->bind_param("i", $person_id);
    $check_stmt->execute();
    $check_stmt->store_result();
    
    if ($check_stmt->num_rows > 0) {
        $sql = "UPDATE person SET biography=?, achievement=?, research=?, selectedWork=?, ref=? WHERE person_id=?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssssi", $biography, $achievement, $research, $selectedWork, $ref, $person_id);
    } else {
        $sql = "INSERT INTO person (biography, achievement, research, selectedWork, ref, person_id) VALUES (?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssssi", $biography, $achievement, $research, $selectedWork, $ref, $person_id);
    }
    
    if ($stmt->execute()) {
        $message = "Modify Succes!";
    } else {
        $error = "Oops: " . $stmt->error;
    }
    $stmt->close();
    $check_stmt->close();
    
    header("location: manage_person.php?message=" . urlencode($message) . "&error=" . urlencode($error));
    exit;
}

$sql = "SELECT * FROM person WHERE person_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $person_id);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows > 0) {
    $person_data = $result->fetch_assoc();
}
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Manage Home Content</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px; }
        .container { max-width: 800px; margin: auto; background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #0275d8; }
        .message { text-align: center; color: green; font-weight: bold; }
        .error { text-align: center; color: red; font-weight: bold; }
        .back-btn { display: inline-block; margin-bottom: 20px; padding: 10px 15px; background-color: #5cb85c; color: white; text-decoration: none; border-radius: 4px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        textarea { width: calc(100% - 22px); padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-submit { padding: 10px 20px; background-color: #0275d8; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn-submit:hover { background-color: #025aa5; }
    </style>
</head>
<body>

<div class="container">
    <a href="dashboard.php" class="back-btn">← Back to Dashboard</a>
    <h1>Home Content</h1>

    <?php 
    if (isset($_GET['message']) && !empty($_GET['message'])) {
        echo "<p class='message'>" . htmlspecialchars($_GET['message']) . "</p>";
    }
    if (isset($_GET['error']) && !empty($_GET['error'])) {
        echo "<p class='error'>" . htmlspecialchars($_GET['error']) . "</p>";
    }
    ?>

    <form action="manage_person.php" method="post">
        <div class="form-group">
            <label for="biography">Biography:</label>
            <textarea id="biography" name="biography" rows="5"><?php echo htmlspecialchars($person_data['biography']); ?></textarea>
        </div>
        <div class="form-group">
            <label for="achievement">Achievements:</label>
            <textarea id="achievement" name="achievement" rows="5"><?php echo htmlspecialchars($person_data['achievement']); ?></textarea>
        </div>
        <div class="form-group">
            <label for="research">Researches:</label>
            <textarea id="research" name="research" rows="5"><?php echo htmlspecialchars($person_data['research']); ?></textarea>
        </div>
        <div class="form-group">
            <label for="selectedWork">Roles previously held:</label>
            <textarea id="selectedWork" name="selectedWork" rows="5"><?php echo htmlspecialchars($person_data['selectedWork']); ?></textarea>
        </div>
        <div class="form-group">
            <label for="ref">References:</label>
            <textarea id="ref" name="ref" rows="5"><?php echo htmlspecialchars($person_data['ref']); ?></textarea>
        </div>
        <button type="submit" class="btn-submit">Save</button>
    </form>
</div>

</body>
</html>