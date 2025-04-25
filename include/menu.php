<?php 
		$sql_category = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
	?>
<div class="navbar-inner">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="agileits-navi_search">
					<form action="#" method="post" style="font-weight:bold">
						Danh mục sản phẩm
					</form>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-3">
						<li class="nav-item active mr-lg-5 mb-lg-0 mb-2">
							<a class="nav-link" href="index.php?quanly=gioithieu" style="font-weight:bold">Giới thiệu</a>
						</li>
						<li class="nav-item active mr-lg-5 mb-lg-0 mb-2">
							<a class="nav-link" href="index.php" style="font-weight:bold">Trang chủ</a>
						</li>
						<?php 
							$sql_category_danhmuc = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC limit 6'); // max danh mục
							while($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)){
						?>
						<li style="font-weight:bold" class="nav-item  mr-lg-5 mb-lg-0 mb-2">

							<a class="nav-link " href="?quanly=danhmuc&id=<?php echo $row_category_danhmuc['category_id'] ?>" role="button"  aria-haspopup="true" aria-expanded="false">
								<?php echo $row_category_danhmuc['category_name'] ?>
							</a>
							
						</li>
						<?php
						} 
						?>
					

						
					
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->