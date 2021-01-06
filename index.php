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
    <link href="public/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="public/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="public/css/fontawesome-all.css">
    <link href="public/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="public/css/menu.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
	<?php
	include('client/header.php'); 

	if(isset($_GET['quanly'])){
		$tam = $_GET['quanly'];
	}else{
		$tam = '';
	}

	if($tam=='danhmuc'){
		include('client/danhmuc.php');
	}elseif($tam=='chitietsp'){
		include('client/chitietsp.php');
	}elseif($tam=='giohang') {
		include('client/giohang.php');
	}elseif ($tam=='timkiem') {
		include('client/timkiem.php');
	}elseif ($tam=='xemdonhang') {
		include('client/xemdonhang.php');
	}else{
		include('client/home.php'); 
	}
	include('client/footer.php');
	?>
	<script src="public/js/jquery-2.2.3.min.js"></script>
	<script src="public/js/bootstrap.js"></script>
</body>

</html>