<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$research_id = $_GET['research_id'] ?? 0;

if ($research_id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM research WHERE research_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $research_id);

if ($stmt->execute()) {
    header("Location: aResearchs.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
