<?php
	include('../db/connect.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Khách hàng</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
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
      
        <div class="container-fluid"><br><br>
	<div class="container">
		<div class="row">
			
			<div class="col-md-12">
				<h4>Khách hàng</h4>
				<?php
				$sql_select_khachhang = mysqli_query($con,"SELECT * FROM tbl_khachhang,tbl_giaodich WHERE tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id GROUP BY tbl_giaodich.magiaodich ORDER BY tbl_khachhang.khachhang_id DESC"); 
				?> 
				<table class="table table-bordered ">
					<tr>
						<th>Thứ tự</th>
						<th>Tên khách hàng</th>
						<th>Số điện thoại</th>
						<th>Địa chỉ</th>
						<th>Email</th>
						<th>Thời gian mua</th>
						<th>Quản lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_khachhang = mysqli_fetch_array($sql_select_khachhang)){ 
						$i++;
					?> 
					<tr>
						<td><?php echo $i; ?></td>
						
						<td><?php echo $row_khachhang['name']; ?></td>
						<td><?php echo $row_khachhang['phone']; ?></td>
						<td><?php echo $row_khachhang['address']; ?></td>
						
						<td><?php echo $row_khachhang['email'] ?></td>
						<td><?php echo $row_khachhang['ngaythang'] ?></td>
						<td><a href="?quanly=xemgiaodich&khachhang=<?php echo $row_khachhang['magiaodich'] ?>">Xem giao dịch</a></td>
					</tr>
					 <?php
					} 
					?> 
				</table>
			</div>

			<div class="col-md-12">
				<h4>Liệt kê lịch sử đơn hàng</h4>
				<?php
				if(isset($_GET['khachhang'])){
					$magiaodich = $_GET['khachhang'];
				}else{
					$magiaodich = '';
				}
				$sql_select = mysqli_query($con,"SELECT * FROM tbl_giaodich,tbl_khachhang,tbl_sanpham WHERE tbl_giaodich.sanpham_id=tbl_sanpham.sanpham_id AND tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id AND tbl_giaodich.magiaodich='$magiaodich' ORDER BY tbl_giaodich.giaodich_id DESC"); 
				?> 
				<table class="table table-bordered ">
					<tr>
						<th>Thứ tự</th>
						<th>Mã giao dịch</th>
						<th>Tên sản phẩm</th>
						<th>Ngày đặt</th>
						
					</tr>
					<?php
					$i = 0;
					while($row_donhang = mysqli_fetch_array($sql_select)){ 
						$i++;
					?> 
					<tr>
						<td><?php echo $i; ?></td>
						
						<td><?php echo $row_donhang['magiaodich']; ?></td>
					
						<td><?php echo $row_donhang['sanpham_name']; ?></td>
						
						<td><?php echo $row_donhang['ngaythang'] ?></td>
					
					</tr>
					 <?php
					} 
					?> 
				</table>
			</div>
		</div>
	</div>
	
</body>
</html>