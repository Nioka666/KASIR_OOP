
<?php
session_start();
include('../function/config.php');
$db = new Database();

$result = $db->login($_POST['email'], $_POST['password']);

if ($result === "OK:LOGGED") {
    $user = $db->query("SELECT * FROM user WHERE email LIKE ?", array($_POST['email']), true);
    $_SESSION['user'] = $user;

    // Cek jika user adalah admin
    if ($user['role'] === 'admin') {
        $_SESSION['admin'] = $user;
        echo "<script> window.location.href = '../pages/admin' </script>";
    } else {
        // Jika bukan admin, arahkan ke dashboard biasa
        echo "<script> window.location.href = '../pages/petugas' </script>";
    }
} else if ($result === "ERROR:EMAIL_OR_PASS_NOT_VALID") {
    unset($_SESSION);
    session_destroy();
    echo "<script> window.location.href = 'index.php?pesan=gagal' </script>";
}
?>