<?php
session_start();
include_once('db/connect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $newPassword = md5($_POST['newPassword']);
    $user = $_POST['user'];
    $sql = "UPDATE tbl_khachhang SET password='$newPassword' WHERE `khachhang_id`='$user'";
    $result = mysqli_query($con, $sql);

   

    if ($result) {
        // Cập nhật thành công
        echo json_encode(['status' => 'success']);
    } else {
        // Cập nhật thất bại
        echo json_encode(['status' => 'error', 'message' => 'Đã xảy ra lỗi khi cập nhật mật khẩu.']);
    }


    // Đóng kết nối
    $con->close();
    return json_encode($newPassword);

} else {
    // Đáp ứng không hợp lệ
    echo json_encode(['status' => 'error', 'message' => 'Yêu cầu không hợp lệ.']);
}
?>