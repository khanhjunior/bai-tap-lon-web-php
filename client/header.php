<?php
if (isset($_POST['dangnhap_home'])) {
    $taikhoan = $_POST['email_login'];
    $matkhau = md5($_POST['password_login']);
    if ($taikhoan == '' || $matkhau == '') {
        echo '<script>alert("Làm ơn không để trống")</script>';
    } else {
        $sql_select_admin = mysqli_query($con, "SELECT * FROM tbl_khachhang WHERE email='$taikhoan' AND password='$matkhau' LIMIT 1");
        $count = mysqli_num_rows($sql_select_admin);
        $row_dangnhap = mysqli_fetch_array($sql_select_admin);
        if ($count > 0) {
            $_SESSION['dangnhap_home'] = $row_dangnhap['name'];
            $_SESSION['khachhang_id'] = $row_dangnhap['khachhang_id'];
            header('Location: index.php');
        } else {
            echo '<script>alert("Tài khoản mật khẩu sai")</script>';
        }
    }
} elseif (isset($_POST['dangky'])) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $address = $_POST['address'];
    $giaohang = $_POST['giaohang'];

    $sql_khachhang = mysqli_query($con, "INSERT INTO tbl_khachhang(name,phone,email,address,giaohang,password) values ('$name','$phone','$email','$address','$giaohang','$password')");
    $sql_select_khachhang = mysqli_query($con, "SELECT * FROM tbl_khachhang ORDER BY khachhang_id DESC LIMIT 1");
    $row_khachhang = mysqli_fetch_array($sql_select_khachhang);
    $_SESSION['dangnhap_home'] = $name;
    $_SESSION['khachhang_id'] = $row_khachhang['khachhang_id'];
    header('Location:index.php');
}
?>
<div class="agile-main-top">
    <div class="container-fluid">
        <div style="display: flex; justify-content: center;" class="row main-top-w3l py-2">
            <div style="text-align: center" class="col-lg-8 header-right mt-lg-0 mt-2">
                <ul>
                    <?php
                    if (isset($_SESSION['dangnhap_home'])) {
                        echo '<li class="text-center text-white">Xin chào: ' . $_SESSION['dangnhap_home'] . '</li>';
                        echo '<li class="text-center border-right text-white"><a class="text-white" href="index.php?quanly=giohang&dangxuat=1">Đăng xuất</a></li>';

                        echo '
                            <li class="text-center text-white">
                            <a class="text-white" href="index.php?quanly=giohang" >';
                        echo '<i class="fas fa-truck mr-2"></i>Giỏ hàng';
                        echo '</a></li>';


                        echo '<li class="text-center text-white">';
                        echo '<a class="text-white" href="index.php?quanly=xemdonhang&khachhang=' . $_SESSION['khachhang_id'] . '">';
                        echo '<i class="fas fa-shopping-cart mr-2"></i>Xem đơn hàng';
                        echo '</a></li>';
                    } else {
                        echo '
                            <li class="text-center border-right text-white">
                                <a href="#" data-toggle="modal" data-target="#dangnhap" class="text-white">
                                <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập </a>
                            </li>
                            <li class="text-center text-white">
                                <a href="#" data-toggle="modal" data-target="#dangky" class="text-white">
                                    <i class="fas fa-sign-out-alt mr-2"></i>Đăng ký </a>
                            </li>';
                    }
                    ?>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="dangnhap" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div style="border: unset;" class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-center">Đăng nhập</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="text" class="form-control" placeholder=" " name="email_login" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="password_login" required="">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" name="dangnhap_home" value="Đăng nhập">
                    </div>

                    <p class="text-center dont-do mt-3">Chưa có tài khoản?
                        <a href="#" data-toggle="modal" data-target="#dangky">
                            Đăng ký</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="dangky" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div style="border: unset;" class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Đăng ký</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Tên khách hàng</label>
                        <input type="text" class="form-control" placeholder=" " name="name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="email" class="form-control" placeholder=" " name="email" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Phone</label>
                        <input type="text" class="form-control" placeholder=" " name="phone" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Address</label>
                        <input type="text" class="form-control" placeholder=" " name="address" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder=" " name="password" required="">
                        <input type="hidden" class="form-control" placeholder="" name="giaohang" value="0">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" name="dangky" value="Đăng ký">
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<?php
$sql_category = mysqli_query($con, 'SELECT * FROM tbl_category ORDER BY category_id DESC');
?>
<div class="navbar-inner">
    <div class="container">
        <nav style="padding: unset;" class="navbar navbar-expand-lg navbar-light bg-light">
            <div style="display: flex; justify-content: space-between" class="collapse navbar-collapse" id="navbarSupportedContent">
                <div style="width: 70px; height: 70%" class="logo-box">
                    <a style="display: inline-block; width: 100%; height: 100%" href="index.php">
                        <img style="width: 70%;display: block;height: 100%;" src="public/img/logo-index.jpg" alt="logo">
                    </a>
                </div>
                <div class="col-md-6 header mb-4 mt-4">
                    <div class="row">
                        <div class="col-10 agileits_search">
                            <form class="form-inline" action="index.php?quanly=timkiem" method="POST">
                                <input class="form-control mr-sm-2" name="search_product" type="search" placeholder="Tìm kiếm sản phẩm" aria-label="Search" required>
                                <button style="background: #0879C9" class="btn my-2 my-sm-0" name="search_button" type="submit">Tìm kiếm</button>
                            </form>
                        </div>
                    </div>
                </div>
                <ul class="navbar-nav text-center">
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="index.php">Trang chủ
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <?php
                    $sql_category_danhmuc = mysqli_query($con, 'SELECT * FROM tbl_category ORDER BY category_id DESC');
                    while ($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)) {
                    ?>
                        <li class="nav-item  mr-lg-2 mb-lg-0 mb-2">
                            <a class="nav-link " href="?quanly=danhmuc&id=<?php echo $row_category_danhmuc['category_id'] ?>" role="button" aria-haspopup="true" aria-expanded="false">
                                <?php echo $row_category_danhmuc['category_name'] ?>
                            </a>

                        </li>
                    <?php
                    }
                    ?>
                </ul>
                <style>
                    .nav-item:hover {
                        background-color: #E5E5E5
                    }
                </style>
            </div>
        </nav>
    </div>
</div>