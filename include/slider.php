<!-- banner -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <!-- Indicators-->

    <div class="carousel-inner">
        <?php
        $sql_slider = mysqli_query($con,"SELECT * FROM tbl_slider WHERE slider_active='1' ORDER BY slider_id");
        $first_slide = true; // Biến để kiểm tra xem đã có mục đầu tiên hay chưa
        while($row_slider = mysqli_fetch_array($sql_slider)){ 
            ?>
            <div class="carousel-item item1 <?php echo $first_slide ? 'active' : ''; ?>"
			style="background: url(./images/<?php echo $row_slider['slider_image'] ?>) no-repeat center;background-size: cover"
			>
                <div class="container">
                    <div class="w3l-space-banner">
                        <!-- <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                            <p><?php echo $row_slider['slider_caption'] ?></p>
                        </div> -->
                    </div>
                </div>
            </div>
            <?php
            $first_slide = false; // Đánh dấu đã có một mục được đặt active
        } 
        ?>
    </div>
</div>
<!-- //banner -->
