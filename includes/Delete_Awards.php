<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$achievement_id = $_GET['achievement_id'] ?? 0;

if ($achievement_id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM achievements WHERE achievement_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $achievement_id);

if ($stmt->execute()) {
    header("Location: Awards.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
