<?php
	session_start();
	include_once('db/connect.php');
 ?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Thời trang</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />

	<!-- Custom-Files -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Main css -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- pop-up-box -->
	<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
	<!-- web fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web fonts -->
	<style>
		/* Phần footer chính */
.footer {
    padding: 50px 0;
}

/* Phần các liên kết */
.links {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.links a {
    color: #333; /* Màu chữ cho các liên kết */
    text-decoration: none; /* Loại bỏ gạch chân dưới các liên kết */
    margin-bottom: 10px; /* Khoảng cách giữa các liên kết */
    display: block;
}

/* Phần tiêu đề của các cột */
.footer-column-title {
    font-size: 18px;
    font-weight: bold;
    color: #333; /* Màu chữ cho tiêu đề */
    margin-bottom: 20px; /* Khoảng cách giữa các tiêu đề và nội dung */
}

/* Phần thông tin liên hệ */
.contact-info {
    font-size: 14px;
    color: #555; /* Màu chữ cho thông tin liên hệ */
}

/* Phần hình ảnh */
.footer-image {
    max-width: 100%;
    height: auto;
}

/* Phần dòng chia */
.divider {
    border-top: 1px solid #ccc; /* Màu và kiểu nét của dòng chia */
    margin: 20px 0; /* Khoảng cách trên và dưới của dòng chia */
}

/* Phần bản quyền */
.copyright {
    font-size: 14px;
    color: #666; /* Màu chữ cho thông tin bản quyền */
    text-align: center; /* Căn giữa nội dung */
}
	</style>
</head>

<body>
	<?php
	include('include/topbar.php'); 
	include('include/menu.php');
	include('include/slider.php');

	if(isset($_GET['quanly'])){
		$tam = $_GET['quanly'];
	}else{
		$tam = '';
	}

	if($tam=='danhmuc'){
		include('include/danhmuc.php');
	}elseif($tam=='chitietsp'){
		include('include/chitietsp.php');
	}elseif($tam=='giohang') {
		include('include/giohang.php');
	}elseif ($tam=='timkiem') {
		include('include/timkiem.php');
	}elseif ($tam=='xemdonhang') {
		include('include/xemdonhang.php');
	}elseif ($tam=='doimatkhau') {
		include('include/doimatkhau.php');
	}elseif ($tam=='gioithieu') {
		include('include/gioithieu.php');
	}elseif ($tam=='lienhe') {
		include('include/lienhe.php');
	}
	else{
		include('include/home.php'); 
	}
	 
	include('include/footer.php'); 
	?>
	<!-- js-files -->
	<!-- jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //jquery -->

	<!-- nav smooth scroll -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //nav smooth scroll -->

	<!-- popup modal (for location)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //popup modal (for location)-->

	<!-- cart-js -->
	<!--  <script src="js/minicart.js"></script> -->
	<script>
		paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

		paypals.minicarts.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- imagezoom -->
	<script src="js/imagezoom.js"></script>
	<!-- //imagezoom -->

	<!-- flexslider -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

	<script src="js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->
	<!-- //password-script -->
	
	<!-- scroll seller -->
	<script src="js/scroll.js"></script>
	<!-- //scroll seller -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->
</body>

</html>