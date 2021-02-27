<?php
	session_start();
	include_once('connect.php');
 ?>
<!DOCTYPE html>
<html lang="us">

<head>
<title>Bài tập lớn - Phát triển ứng dụng trên nền Web</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="assets/css/fontawesome-all.css">
    <link href="assets/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
	<?php
	include('includes/header.php'); 

	if(isset($_GET['quanly'])){
		$tam = $_GET['quanly'];
	}else{
		$tam = '';
	}

	if($tam=='danhmuc'){
		include('includes/danhmuc.php');
	}elseif($tam=='chitietsp'){
		include('includes/chitietsp.php');
	}elseif($tam=='giohang') {
		include('includes/giohang.php');
	}elseif ($tam=='timkiem') {
		include('includes/timkiem.php');
	}elseif ($tam=='xemdonhang') {
		include('includes/xemdonhang.php');
	}else{
		include('includes/home.php'); 
	}
	include('includes/footer.php');
	?>
	<script src="assets/js/jquery-2.2.3.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</body>

</html>