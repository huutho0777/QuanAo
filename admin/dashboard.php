<?php
	session_start();
	if(!isset($_SESSION['dangnhap'])){
		header('Location: index.php');
	} 
	if(isset($_GET['login'])){
 	$dangxuat = $_GET['login'];
	 }else{
	 	$dangxuat = '';
	 }
	 if($dangxuat=='dangxuat'){
	 	session_destroy();
	 	header('Location: index.php');
	 }
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welcome Admin</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel='stylesheet'>
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<style type="text/css">
      a{
        text-decoration: none;
      }
    </style>
</head>
<body>
	<p>Xin chào : <?php echo $_SESSION['dangnhap'] ?> <a href="?login=dangxuat">Đăng xuất</a></p>
	<div class="sidebar-container">
        <div class="sidebar-logo">
            Quản trị
        </div>
        <ul class="sidebar-navigation">
          <li class="header">Admin</li>
          <li>
            <a href="dashboard.php">
              <i class="fa fa-home" aria-hidden="true"></i> Trang chủ
            </a>
          </li>
		  <li class="header"></li>Menu</li>
		  <li>
            <a href="xulydonhang.php">
              <i class="fa fa-cog" aria-hidden="true"></i> Đơn hàng
            </a>
		  </li>
		  <li>
            <a href="xulydanhmuc.php">
              <i class="fa fa-cog" aria-hidden="true"></i> Danh mục
            </a>
		  </li>
		  <li>
            <a href="xulysanpham.php">
              <i class="fa fa-cog" aria-hidden="true"></i> Sản phẩm
            </a>
          </li>
          <li>
            <a href="xulykhachhang.php">
              <i class="fa fa-cog" aria-hidden="true"></i> Khách hàng
            </a>
          </li>
          <li>
            <a href="doimatkhau.php">
              <i class="fa fa-cog" aria-hidden="true"></i> Đổi mật khẩu
            </a>
          </li>
        </ul>
      </div>
      
      <div class="content-container">
      
        <div class="container-fluid">
			<H1 align="center">CHÀO MỪNG TRỞ LẠI</H1>
	      
	    </ul>
	  </div>
	</nav>
</body>
</html>