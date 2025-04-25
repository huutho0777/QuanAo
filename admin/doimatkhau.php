<?php
	include('../db/connect.php');
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
		<div style="display:flex;justify-content:center">

<form id="changePasswordForm" style="background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 800px; text-align: center;">
	  
		<label for="newPassword" style="display: block; margin-bottom: 8px;">Mật khẩu mới:</label>
		<input type="password" id="newPassword" name="newPassword" required style="width: 100%; padding: 8px; margin-bottom: 16px; box-sizing: border-box;">

		<label for="confirmPassword" style="display: block; margin-bottom: 8px;">Nhập lại mật khẩu mới:</label>
		<input type="password" id="confirmPassword" name="confirmPassword" required style="width: 100%; padding: 8px; margin-bottom: 16px; box-sizing: border-box;">

		<button type="button" onclick="changePassword()" style="background-color: #4caf50; color: #fff; padding: 10px; border: none; border-radius: 4px; cursor: pointer; width: 100%;">Change Password</button>
</form>
</div>

	</div>
	
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
function changePassword() {
	var newPassword = $("#newPassword").val();
	var confirmPassword = $("#confirmPassword").val();

	if (newPassword !== confirmPassword) {
		alert("Mật khẩu mới và nhập lại mật khẩu mới không khớp.");
		return;
	}

	$.ajax({
		type: "POST",
		url: "changepassadmin.php", // Đường dẫn tới file PHP của bạn
		data: { 
			newPassword: newPassword,
			user: "<?php echo(1) ?>"
		},
		success: function(response) {
			alert("Mật khẩu đã được cập nhật thành công!");
			console.log(response);
			window.location.href = "index.php";
		},
		error: function(xhr, status, error) {
			alert("Đã có lỗi xảy ra: " + error);
		}
	});
}
</script>