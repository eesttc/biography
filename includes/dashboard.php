<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Admin</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; }
        .container { width: 80%; margin: auto; padding: 20px; }
        .header { display: flex; justify-content: space-between; align-items: center; border-bottom: 2px solid #ccc; padding-bottom: 10px; }
        .header h1 { margin: 0; }
        .header .logout { text-decoration: none; color: #d9534f; font-weight: bold; }
        .menu a { display: block; padding: 10px; margin: 5px 0; background-color: #5cb85c; color: white; text-decoration: none; border-radius: 4px; }
        .menu a:hover { background-color: #4cae4c; }
    </style>
</head>
<body>
    <?php
    session_start();
    if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
        header("location: login.php");
        exit;
    }
    ?>
    <div class="container">
        <div class="header">
            <h1>Hi, <?php echo htmlspecialchars($_SESSION['username'] ?? 'Admin'); ?>!</h1>
            <a href="logout.php" class="logout">Logout</a>
        </div>
        <div class="menu">
            <h2>Manage Content</h2>
            <a href="manage_biography.php">Biography</a>
            <a href="manage_achievements.php">Achievements</a>
            <a href="manage_research.php">Researches</a>
            <a href="manage_selectedwork.php">Role previously held</a>
            <a href="manage_ref.php">References</a>
            <a href="manage_images.php">Images</a>
            <a href="manage_person.php">Index content</a>
            <?php if ($_SESSION['role'] == 'super_admin'): ?>
                <a href="create_admin.php">Create admin account</a>
            <?php endif; ?>
        </div>
    </div>
</body>
</html>