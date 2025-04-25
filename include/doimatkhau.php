<div style="display:flex;justify-content:center">

    <form id="changePasswordForm" style="background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 300px; text-align: center;">
          
            <label for="newPassword" style="display: block; margin-bottom: 8px;">Mật khẩu mới:</label>
            <input type="password" id="newPassword" name="newPassword" required style="width: 100%; padding: 8px; margin-bottom: 16px; box-sizing: border-box;">
    
            <label for="confirmPassword" style="display: block; margin-bottom: 8px;">Nhập lại mật khẩu mới:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required style="width: 100%; padding: 8px; margin-bottom: 16px; box-sizing: border-box;">
    
            <button type="button" onclick="changePassword()" style="background-color: #4caf50; color: #fff; padding: 10px; border: none; border-radius: 4px; cursor: pointer; width: 100%;">Change Password</button>
    </form>
</div>
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
            url: "changepass.php", // Đường dẫn tới file PHP của bạn
            data: { 
                newPassword: newPassword,
                user: "<?php echo($_SESSION['khachhang_id']) ?>"
            },
            success: function(response) {
                alert("Mật khẩu đã được cập nhật thành công!");
                console.log(response);
                // window.location.href = "index.php";
            },
            error: function(xhr, status, error) {
                alert("Đã có lỗi xảy ra: " + error);
            }
        });
    }
</script>