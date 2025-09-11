<?php
session_start();
require_once 'config.php';
require_once '../public/assets/css/style.php'; // Đảm bảo đã sửa file này thành .css và liên kết như hướng dẫn trước

// Kiểm tra xem người dùng đã đăng nhập chưa
// if (!isset($_SESSION['admin_id'])) {
//     header("Location: dashboard-signin.php");
//     exit();
// }


// Truy vấn dữ liệu từ bảng 'biography'
$sql = "SELECT biography_id, stage, SUBSTRING(content, 1, 100) as content_preview, img1_link, img1_alt FROM biography";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Tiểu sử - Dashboard</title>
    <link rel="stylesheet" href="/biography/public/assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>

<div class="dashboard-container">
    <aside class="sidebar">
        <div class="sidebar-header">
            <h3>Admin Dashboard</h3>
        </div>
        <nav class="sidebar-nav">
            <ul>
                <li><a href="dashboard.php"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                <li><a href="dashboard-biography.php" class="active"><i class="fas fa-user-edit"></i> Life story</a></li>
                <li><a href="#"><i class="fas fa-cog"></i> Research works contributed</a></li>
                <li><a href="#"><i class="fas fa-cog"></i> Awards and achievements</a></li>
                <li><a href="#"><i class="fas fa-cog"></i> Roles previously held</a></li>
                <li><a href="#"><i class="fas fa-cog"></i> Gallery</a></li>
                <li><a href="#"><i class="fas fa-cog"></i> Site map</a></li>
                <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a></li>
            </ul>
        </nav>
    </aside>

    <main class="main-content">
        <header class="main-header">
            <h2>Quản lý Tiểu sử</h2>
            <div class="user-info">
                <span>Xin chào, <?php echo htmlspecialchars($_SESSION['username']); ?>!</span>
                <i class="fas fa-user-circle"></i>
            </div>
        </header>

        <section class="admin-table-section">
            <a href="#" class="add-new-btn">Thêm mới</a>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Giai đoạn</th>
                        <th>Nội dung</th>
                        <th>Hình ảnh 1</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["biography_id"] . "</td>";
                            echo "<td>" . htmlspecialchars($row["stage"]) . "</td>";
                            echo "<td>" . htmlspecialchars($row["content_preview"]) . "...</td>";
                            echo "<td><img src='" . htmlspecialchars($row["img1_link"]) . "' alt='" . htmlspecialchars($row["img1_alt"]) . "' style='width: 100px;'></td>";
                            echo "<td>";
                            echo "<a href='#' class='edit-btn'>Sửa</a> | ";
                            echo "<a href='#' class='delete-btn'>Xóa</a>";
                            echo "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='5'>Không có dữ liệu tiểu sử.</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </section>
    </main>
</div>

<?php $conn->close(); ?>
</body>
</html>