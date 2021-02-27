<?php
session_start();
include('../connect.php');
?>
<?php
if (isset($_POST['dangnhap'])) {
    $taikhoan = $_POST['taikhoan'];
    $matkhau = ($_POST['matkhau']);
    if ($taikhoan == '' || $matkhau == '') {
        echo '<p>Xin nhập đủ</p>';
    } else {
        $sql_select_admin = mysqli_query($con, "SELECT * FROM tbl_admin WHERE email='$taikhoan' AND password='$matkhau' LIMIT 1");
        $count = mysqli_num_rows($sql_select_admin);
        $row_dangnhap = mysqli_fetch_array($sql_select_admin);
        if ($count > 0) {
            $_SESSION['dangnhap'] = $row_dangnhap['admin_name'];
            $_SESSION['admin_id'] = $row_dangnhap['admin_id'];
            header('Location: dashboard.php');
        } else {
            echo '<p>Tài khoản hoặc mật khẩu sai</p>';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Đăng nhập Admin</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body style="width: 100%; height: 100vh; display: flex; align-items: center">
    <div class="col-md-2" style="display: flex; justify-content: center;margin: 0 auto;">
        <div class="form-group">
            <h2 style="margin-top: 50px" align="center">Đăng nhập Admin</h2>
            <form action="" method="POST">
                <label>Tài khoản</label>
                <input type="text" name="taikhoan" placeholder="Vui lòng điền tài khoản" class="form-control"><br>
                <label>Mật khẩu</label>
                <input type="password" name="matkhau" placeholder="Vui lòng điền mật khẩu" class="form-control"><br>
                <input type="submit" name="dangnhap" class="btn btn-primary" value="Đăng nhập">
            </form>
        </div>
    </div>
</body>

</html>