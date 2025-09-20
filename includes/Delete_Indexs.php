<?php
session_start();
include "Biography_db.php";
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = getConnection();
$person_id = $_GET['person_id'] ?? 0;

if ($person_id == 0) {
    die("Lỗi: information not found! ");
}

$sql = "DELETE FROM person WHERE person_id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Lỗi chuẩn bị truy vấn: " . $conn->error);
}

$stmt->bind_param("i", $person_id);

if ($stmt->execute()) {
    header("Location: Admins.php");
    exit();
} else {
    echo "Lỗi khi xóa: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
