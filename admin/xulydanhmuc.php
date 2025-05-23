<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themdanhmuc'])){
		$tendanhmuc = $_POST['danhmuc'];
		
		$sql_insert = mysqli_query($con,"INSERT INTO tbl_category(category_name) values ('$tendanhmuc')");
	}elseif(isset($_POST['capnhatdanhmuc'])){
		$id_post = $_POST['id_danhmuc'];
		$tendanhmuc = $_POST['danhmuc'];
		$sql_update = mysqli_query($con,"UPDATE tbl_category SET category_name='$tendanhmuc' WHERE category_id='$id_post'");
		header('Location:xulydanhmuc.php');
	}
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_category WHERE category_id='$id'");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Danh mục</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
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
			<?php
			if(isset($_GET['quanly'])=='capnhat'){
				$id_capnhat = $_GET['id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_category WHERE category_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				?>
				<div class="col-md-4">
				<h4>Cập nhật danh mục</h4>
				<label>Tên danh mục</label>
				<form action="" method="POST">
					<input type="text" class="form-control" name="danhmuc" value="<?php echo $row_capnhat['category_name'] ?>"><br>
					<input type="hidden" class="form-control" name="id_danhmuc" value="<?php echo $row_capnhat['category_id'] ?>">

					<input type="submit" name="capnhatdanhmuc" value="Cập nhật danh mục" class="btn btn-default">
				</form>
				</div>
			<?php
			}else{
				?>
				<div class="col-md-4">
				<h4>Thêm danh mục</h4>
				<label>Tên danh mục</label>
				<form action="" method="POST">
					<input type="text" class="form-control" name="danhmuc" placeholder="Tên danh mục"><br>
					<input type="submit" name="themdanhmuc" value="Thêm danh mục" class="btn btn-default">
				</form>
				</div>
				<?php
			} 
			
				?>
			<div class="col-md-8">
				<h4>Liệt kê danh mục</h4>
				<?php
				$sql_select = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
				?>
				<table class="table table-bordered ">
					<tr>
						<th>Thứ tự</th>
						<th>Tên danh mục</th>
						<th>Quản lý</th>
					</tr>
					<?php
					$i = 0;
					while($row_category = mysqli_fetch_array($sql_select)){ 
						$i++;
					?>
					<tr>
						<td><?php echo $i; ?></td>
						<td><?php echo $row_category['category_name'] ?></td>
						<td><a href="?xoa=<?php echo $row_category['category_id'] ?>">Xóa</a> || <a href="?quanly=capnhat&id=<?php echo $row_category['category_id'] ?>">Cập nhật</a></td>
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