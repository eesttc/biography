<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$id = $_GET['visit_id'] ?? 0;

if ($id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM visits WHERE visit_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    header("Location: Admins.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
