<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$biography_id = $_GET['biography_id'] ?? 0;

if ($biography_id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM biography WHERE biography_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $biography_id);

if ($stmt->execute()) {
    header("Location: LifeStory.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
