<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$selectedWork_id = $_GET['selectedWork_id'] ?? 0;

if ($selectedWork_id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM selectedwork WHERE selectedWork_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $selectedWork_id);

if ($stmt->execute()) {
    header("Location: Roles.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
