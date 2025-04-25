sysmangashop-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2024 lúc 04:45 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '123456', 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(14, 'Balo & Túi'),
(23, 'Áo'),
(24, 'Quần'),
(26, 'Áo khoác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(73, 85, 2, '6225', 49, '2024-12-09 03:27:13', 1, 0),
(74, 96, 1, '6225', 49, '2024-12-09 03:27:13', 1, 0),
(75, 110, 1, '4392', 49, '2024-12-09 03:27:07', 1, 0),
(76, 54, 1, '4392', 49, '2024-12-09 03:27:07', 1, 0),
(77, 86, 1, '4392', 49, '2024-12-09 03:27:07', 1, 0),
(78, 94, 1, '9906', 49, '2024-12-09 03:27:18', 1, 0),
(79, 72, 1, '9906', 49, '2024-12-09 03:27:18', 1, 0),
(80, 84, 1, '9906', 49, '2024-12-09 03:27:18', 1, 0),
(81, 75, 1, '917', 49, '2024-12-09 03:27:16', 1, 0),
(82, 92, 1, '917', 49, '2024-12-09 03:27:16', 1, 0),
(83, 86, 1, '6688', 49, '2024-12-09 03:32:13', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(50, 85, 2, '6225', '2024-12-09 03:27:13', 49, 1, 0),
(51, 96, 1, '6225', '2024-12-09 03:27:13', 49, 1, 0),
(52, 110, 1, '4392', '2024-12-09 03:27:07', 49, 1, 0),
(53, 54, 1, '4392', '2024-12-09 03:27:07', 49, 1, 0),
(54, 86, 1, '4392', '2024-12-09 03:27:07', 49, 1, 0),
(55, 94, 1, '9906', '2024-12-09 03:27:18', 49, 1, 0),
(56, 72, 1, '9906', '2024-12-09 03:27:18', 49, 1, 0),
(57, 84, 1, '9906', '2024-12-09 03:27:18', 49, 1, 0),
(58, 75, 1, '917', '2024-12-09 03:27:16', 49, 1, 0),
(59, 92, 1, '917', '2024-12-09 03:27:16', 49, 1, 0),
(60, 86, 1, '6688', '2024-12-09 03:32:13', 49, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(64, 'TÚI CLUTCH NỮ THỜI TRANG', 85, '499000', 'tui(5).jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(49, 'binh', '0935036785', 'Dn', 'aaaaaa', 'binh@gmail.com', '46f94c8de14fb36680850768ff1b7f2a', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sp_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sp_image`) VALUES
(52, 23, 'ÁO THUN W1ATN11101FOSHT', 'Thông tin sản phẩm:\r\n- Chất liệu:\r\n\r\nForm dáng\r\nOver size\r\nChất liệu: Cotton 100%\r\n- Mẫu quần ống suông này hứa hẹn là item không thể thiếu cho các tín đồ thời trang. Thiết kế cơ bản nhưng mang hơi thở hiện đại, cực kỳ tôn dáng và sành điệu. Item này có thể đồng hành cùng nàng đến văn phòng hoặc mix cùng những mẫu áo thun, croptop cho ra set đồ đi chơi cực hút mắt.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'ÁO THUN W1ATN11101FOSHT', '265000', '199000', 0, 0, 50, 'dai-dien.jpg'),
(54, 24, 'Quần Jean', 'Quần Jean Baggy ống suông cao cấp thời trang đường phố.\r\nThiết kế trơn basic simple trẻ trung dễ phối đồ.\r\nKiểu quần baggy ống rộng suông, xắn gấu quần.\r\nThích hợp dạo phố, du lịch, đi học, đi chơi,...\r\nChi tiết Quần Jean Nam Nữ Baggy màu xanh dương nhạt:\r\nChất liệu: Vải Jean.\r\nSize: S, M, L, XL, 2XL.\r\nVải dày dặn, mềm mại.\r\nThoáng khí, thấm hút mồ hôi.\r\nGiữ form sau khi giặt & không bị nhăn, không phai màu.', 'Quần Jean Baggy ống suông Nam Nữ Unisex cao cấp thời trang đường phố. Thiết kế trơn basic simple retro old school trẻ trung dễ phối đồ. Kiểu quần ...', '250000', '230000', 0, 0, 50, 'quan.jpg'),
(55, 23, 'ÁO THUN D1ATN2061001', 'Kích cỡ:\r\n\r\nM\r\n\r\nL\r\n\r\nXL', '', '265000', '230000', 0, 0, 42, 'dai-dien (1).jpg'),
(56, 23, 'ÁO THUN D1ATN2061001', '', '', '265000', '239000', 0, 0, 38, 'dai-dien (3).jpg'),
(57, 24, 'PLEATED PANTS - BLACK', '| SWE® | PLEATED PANTS \r\nCOLOR: BLACK\r\nMATERIAL: 100% POLYESTER\r\nSIZE: S/M/L\r\n\r\nPLEATED PANTS - Sử dụng chất vải có chất liệu 100% được dệt từ Polyester, định lượng 340gsm, form dáng suông, tạo sự rộng rãi, thoải mái và không kém phần lịch sự khi sử dụng.\r\n\r\nForm quần được Fit size theo form và tiêu chuẩn tương đối của người Việt Nam, nếu bạn đang cân nhắc giữa hai size, nên chọn size lớn hơn.\r\nSize S: Chiều cao dưới 1m65, cân nặng dưới 55kg\r\nSize M: Chiều cao từ 1m65 - 1m75, cân nặng dưới 65kg\r\nSize L: Chiều cao từ 1m75 - 1m85, cân nặng dưới 90kg\r\n\r\nCác bạn vui lòng tham khảo bảng size chart trước khi đặt hàng.\r\n* Lưu ý: Hạn chế sử dụng máy sấy nhiệt cao để giữ form quần\r\nNOW AVAILABLE ONLINE & IN - STORE\r\n', '', '250000', '219000', 0, 0, 43, 'pr.jpg'),
(58, 24, 'FRAYED JEANS', '| SWE® | FRAYED JEANS\r\nCOLOR: BLACK\r\nMATERIAL: DENIM\r\nSIZE: S/M/L/XL\r\n\r\nFRAYED JEANS sử dụng chất vải DENIM dày dặn 12.5 Oz và xử lý wash màu xám kèm với họa tiết chữ S W E được cào rách mặt trước của quần. Form dáng BAGGY, tạo sự rộng rãi, thoải mái khi sử dụng.\r\n\r\nForm quần được Fit size theo form và tiêu chuẩn tương đối của người Việt Nam, nếu bạn đang cân nhắc giữa hai size, nên chọn size lớn hơn.\r\nSize S: Chiều cao dưới 1m65, cân nặng dưới 55kg\r\nSize M: Chiều cao từ 1m65 - 1m75, cân nặng dưới 65kg\r\nSize L: Chiều cao từ 1m75 - 1m85, cân nặng dưới 90kg\r\nSize XL: Chiều cao từ 1m85 trở lên, cân nặng dưới 120kg\r\n\r\nCác bạn vui lòng tham khảo bảng size chart trước khi đặt hàng.\r\n* Lưu ý: Hạn chế sử dụng máy sấy nhiệt cao để giữ form quần\r\nNOW AVAILABLE ONLINE & IN - STORE', '', '279000', '239000', 0, 0, 34, 'product1.jpg'),
(59, 14, 'SWE MESSENGER BAG - BLACK', ' SWE® | SWE MESSENGER BAG - chiếc túi được tạo ra với chất liệu vải 900PU, nắp túi sử dụng khóa bấm, có lớp đệm chống shock, nhiều ngăn nhỏ tiện lợi để đựng vật dụng cá nhân, kích thước 35x29x12 (cm) chứa được laptop 13inch.\r\n \r\nChi tiết sản phẩm: \r\nChất liệu vải 900PU \r\nNắp túi sử dụng khóa bấm \r\nLogo trước túi sử dụng công nghệ thêu 2 ngăn nhỏ bên trong có khóa kéo \r\n35x29x12 (cm) \r\n \r\n* LƯU Ý: Hạn chế sử dụng máy sấy nhiệt cao để giữ form túi.', '', '279000', '199000', 0, 0, 67, 'abc.jpeg'),
(60, 14, 'TÚI XÁCH NỮ THỜI TRANG CAO CẤP', 'Thương hiệu: ELLY. Sản xuất: Trung Quốc (theo thiết kế và tiêu chuẩn chất lượng của thương hiệu ELLY). Màu sắc: Đen, đỏ, nude. Kích thước: 35/33 x 25.5 x 12 cm (chiều ngang x chiều dọc x độ dày). Chất liệu: Da tổng hợp cao cấp nhập khẩu mềm mịn, sáng bóng, chống thấm nước và bám bụi, đường chỉ may chắn chắn, tỉ mỉ nên bạn hoàn toàn an tâm về chất lượng sản phẩm. Bảo hành: 03 tháng (với lỗi do sản xuất).', '', '319000', '249000', 0, 0, 45, 'tui(7).jpg'),
(61, 14, 'PRIVATE PLANET BACKPACK', '', '', '399000', '349000', 0, 0, 44, '1_f12aff0d10f94f138c881fff8651215e_master.jpg'),
(62, 14, 'SMILE FACE CAP V2', '', '', '190000', '149000', 0, 0, 37, 'dsc00906.jpg'),
(63, 14, 'SMILE FACE CAP V2', '', '', '199000', '149000', 0, 0, 45, 'dsc00841-1.jpg'),
(64, 14, 'H-TOWNZ BUCKET HAT', '', '', '249000', '189000', 0, 0, 46, 'dsc02.jpg'),
(68, 23, 'Áo Polo Regular Nam Trơn Phối 1 Viền Vai', '', '- Tên sản phẩm: Áo Polo Nam Trơn Phối 1 Viền Vai\r\n\r\n- Độ tuổi: > 14 tuổi\r\n\r\n- Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà.\r\n\r\n- Chất liệu: Vải thun mắt chim\r\n\r\n- Họa tiết: Trơn\r\n\r\n- Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam \r\n\r\n- Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '289000', '249000', 0, 0, 23, 'dai-dien (6).jpg'),
(70, 23, 'Áo Thun Regular Nam Facesouth 2300261', '', 'Tên sản phẩm: Áo Thun Regular Nam Cổ Tròn COUNTRY MOMENT. Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà. Chất liệu: Vải thun. Họa tiết: in chữ. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '289000', '229000', 0, 0, 31, 'dai-dien (7).jpg'),
(71, 23, 'Áo Thun Regular Nam Cổ Tròn Tightens 2300227', '', 'Tên sản phẩm: Áo Thun Regular Nam Cổ Tròn TIGHTENS. Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà. Chất liệu: Vải thun. Màu sắc: Trắng/ Đen/Xanh Rêu. Họa tiết: in chữ.  Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '300000', '279000', 0, 0, 24, 'dai-dien (8).jpg'),
(72, 23, 'Áo Polo Regular Nam Td Thun Coton Mịn', '', '- Tên sản phẩm: Áo Thun Regular Nam Cổ Tròn COUNTRY MOMENT. Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà. Chất liệu: Vải thun. Họa tiết: in chữ. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '229000', '199000', 0, 0, 33, 'dai-dien (9).jpg'),
(73, 23, 'Áo Polo Regular Nam Trơn Phối 1 Viền Vai', '', '- Tên sản phẩm: Áo Thun Regular Nam Cổ Tròn COUNTRY MOMENT. Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà. Chất liệu: Vải thun. Họa tiết: in chữ. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '229000', '199000', 0, 0, 33, 'dai-dien (9).jpg'),
(74, 23, 'Áo Thun Slimfit Nữ Ct Trơn Sọc Gân Tn Bozip 2300218', '', '', '169000', '149000', 0, 0, 22, 'dai-dien (10).jpg'),
(75, 23, 'Áo Thun Slimfit Nữ Td Phối Áo Trong Đan Dây 2300213', '', '', '169000', '139000', 0, 0, 23, 'dai-dien (1).jpg'),
(76, 23, 'Áo Sweater Đồ Đôi Cổ Tròn Td Viền In Chữ Galaxies 3446', '', '', '339000', '319000', 0, 0, 0, 'dai-dien (2).jpg'),
(77, 23, 'Áo đôi nam nữ, áo phông đôi', '', '', '429000', '399000', 0, 0, 23, 'dai-dien (3).jpg'),
(79, 23, 'ÁO PHÔNG ĐÔI C2074D', '', 'Áo phông đôi Navy là một loại trang phục thời trang được nhiều người yêu thích, đặc biệt là các cặp đôi. Áo thun đôi có nhiều mẫu mã, màu sắc và chất liệu khác nhau, phù hợp với nhiều phong cách và sở thích. Áo thun đôi không chỉ giúp tăng sự gắn kết và thể hiện tình cảm của các cặp đôi, mà còn mang lại sự thoải mái và năng động cho người mặc. Áo phông đôi Navy có thể kết hợp với nhiều loại quần áo khác nhau, như quần jeans, quần short, quần jogger, chân váy, … để tạo ra những bộ cánh đẹp mắt và cá tính. Hãy cùng người ấy diện áo thun đôi để tận hưởng những ngày đi du lịch, hẹn hò thật lãng mạng nhé!\r\n\r\nSản phẩm có đủ size từ 40kg-85kg. Navy shop cung cấp sỉ và lẻ trên toàn quốc', '290000', '269000', 0, 0, 34, 'dai-dien (11).jpg'),
(80, 23, 'Áo Kiểu Thiết Kế Nữ Nhung Peplum Tay Phồng', '', '', '179000', '159000', 0, 0, 22, 'dai-dien (12).jpg'),
(81, 14, 'Túi Giữ Nhiệt Đựng Cơm Văn Phòng Nike Elite', '', 'Túi Giữ Nhiệt Đựng Cơm Văn Phòng Nike Elite. Kích thước: 20x5x27 ( Ngang x sâu x cao): kích thước nhỏ gọn để được vào balo/ túi trống, treo xe. Công dụng: Làm giỏ đựng cơm, làm giỏ đi tập gym: đựng chai nước, khăn, bóp ví điện thoại v.v… 4 ngăn chức năng tiện dụng ( có ngăn để chai nước bên hông. Quai cầm tay ( không có dây đeo) ( treo xe tiện lợi). Chất liệu: 100% Polyester ( 2 lớp chống thấm, giữ ấm/lạnh, đệm dày dặn)', '290000', '169000', 0, 0, 33, 'tui(1).jpg'),
(82, 14, 'Túi trống Adidas TGV Graphic', '', 'Túi Trống Adidas TGV Graphic là mẫu túi trống của thương hiệu Adidas, với thiết kế nhỏ gọn và tiện lợi. Thích hợp để đựng quần áo, vật dụng phụ trợ tập thể thao, hoặc những chuyến picnic dã ngoại.Túi gồm 1 ngăn chính rộng rãi. Ngăn phụ phía ngoài đựng được thêm các vật dụng phụ kiện khác.Quai đeo êm ái, có thể điều chỉnh độ dài ngắn tùy thích. Logo 3 lá Adidas được in nổi bật ở mặt trước túi. Khóa kéo bền, đẹp, chắc chắn.', '200000', '149000', 0, 0, 22, 'tui(2).jpg'),
(83, 14, 'Balo Hoa Nike SB RPM Skateboarding Backpack Floral', '', 'Balo Hoa Nike SB RPM Skateboarding Backpack Floralván trượt là dòng balo chống nước, bên trong có một khoảng không gian cho tất cả các đồ dùng hỗ trợ cho công việc và đồ dùng cá nhân của bạn, bao gồm cả ván trượt và máy tính xách tay, quần áo, hồ sơ làm việc,vv…….. của bạn.', '550000', '380000', 0, 0, 44, 'tui(3).jpg'),
(84, 14, 'Túi chéo mini Adidas GN5463', '', 'úi chéo mini Adidas GN5463 là form túi siêu tiện lợi dành cho các bạn nam nữ chỉ thích mang rất ít vật dụng ra ngoài, túi có thể đựng điện thoại, bóp ví mini, tai nghe, chìa khóa, thẻ xe….', '150000', '89000', 0, 0, 33, 'tui(4).jpg'),
(85, 14, 'TÚI CLUTCH NỮ THỜI TRANG', '', 'Clutch cầm tay xinh xắn, thanh lịch với điểm nhấn là phần khóa clutch bằng hợp kim cao cấp phối da dạng bấm thiết kế sang trọng có dập logo ELLY đẹp mắt. Dây đeo dài bằng da trẻ trung và năng động cho nàng thay đổi phong cách đeo linh hoạt.', '499000', '399000', 0, 0, 12, 'tui(5).jpg'),
(86, 14, 'TÚI CLUTCH NỮ CAO CẤP DA THẬT', '', 'Clutch cầm tay duyên dáng thiết kế tỉ mỹ và sắc sảo trong từng chi tiết nhỏ cùng chất liệu da thật cao cấp ấn tượng. Nàng có thể cầm tay ELLY – EC18 hay biến tấu với dây đeo dài, dây ngoắc da thời trang đều rất tiện dụng.', '500000', '420000', 0, 0, 14, 'tui(6).jpg'),
(87, 24, 'Quần Jeans Ống Loe Nữ 3100 Hj', '', '', '349000', '300000', 0, 0, 22, 'quan(1).jpg'),
(88, 24, 'Quần Short Jeans Ngắn Nữ Tua Lai 3101 Hh', '', 'Họa tiết: Trơn. Xuất xứ: Sản phẩm tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '200000', '160000', 0, 0, 129000, 'quan(2).jpg'),
(89, 24, 'Quần Short Kaki Lưng Gài Nam Trơn Thêu Fm', '* HƯỚNG DẪN BẢO QUẢN VÀ SỬ DỤNG\r\n- Lần đầu chỉ xả nước lạnh rồi phơi khô để đảm bảo chất và màu của sản phẩm.\r\n\r\n- Nhớ lộn trái sản phẩm khi giặt và không giặt ngâm.\r\n\r\n- Không giặt máy trong 2 tuần đầu.\r\n\r\n- Không sử dụng thuốc tẩy.\r\n\r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời.', '', '295000', '260000', 0, 0, 22, 'quan(1).jpg'),
(90, 24, 'Quần Kaki- Nam Trơn Dài', '', '', '295000', '285000', 0, 0, 33, 'quan(2).jpg'),
(91, 24, 'Quần Legging Ngắn Nữ Chất Umi Hàn', '', '', '99000', '79000', 0, 0, 45, 'quan(3).jpg'),
(92, 24, 'Quần Jeans Ống Loe Nữ Trơn', '', '', '250000', '220000', 0, 0, 44, 'quan(4).jpg'),
(93, 24, 'Quần Tây Dáng Suông Nữ Ống Rộng Lưng Kiểu', '', '', '300000', '269000', 0, 0, 45, 'quan(5).jpg'),
(94, 24, 'Quần Tây Ống Đứng Nam Trơn', '', '', '445000', '400000', 0, 0, 12, 'quan(6).jpg'),
(95, 24, 'Quần Short Thun Nam Thể Thao', '', 'Tên sản phẩm: Quần Short Thể Thao Nam Lưng Thun Trơn. Độ tuổi: > 12 tuổi. Phù hợp: Mặc đi chơi, tập thể thao, ở nhà. Chất liệu: Vải gió umi. Họa tiết: Trơn in mac FM. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam \r\n\r\n- Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '170000', '129000', 0, 0, 33, 'quan(7).jpg'),
(96, 24, 'Quần Tây Baggy Nam Trơn', '', 'Tên sản phẩm: Quần Tây Baggy Nam Trơn. Độ tuổi: > 13 tuổi. Phù hợp: Mặc đi làm, đi chơi, đi học. Chất liệu: Vải kate Hàn. Họa tiết: Trơn. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '370000', '330000', 0, 0, 48, 'quan(8).jpg'),
(97, 24, 'Quần Jeans Straight Nam Suông Rộng Trơn Ri-409 Ta', '', 'Tên sản phẩm: Áo thun Đôi Tay Lỡ Phối Màu. Độ tuổi: > 13 tuổi. Phù hợp: Mặc đi làm, đi học, đi chơi, ở nhà. Chất liệu: Vải thun. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '480000', '420000', 0, 0, 55, 'quan(9).jpg'),
(98, 26, 'Áo Khoác Kaki Croptop Nữ Tay Phối Màu', '', '', '229000', '199000', 0, 0, 45, 'khoac(1).jpg'),
(99, 26, 'Áo Khoác Dạ Nữ Tweet 2túi Viền 4nút Họa Tiết Ziczac', '', '', '245000', '220000', 0, 0, 33, 'khoac(2).jpg'),
(100, 26, 'Áo Khoác Phao Nữ Ghile Cổ Cao Kck', '', '', '279000', '249000', 0, 0, 23, 'khoac(3).jpg'),
(101, 26, 'Áo Khoác Phao Nữ Ghile Cổ Cao Kck', '', '', '279000', '249000', 0, 0, 23, 'khoac(3).jpg'),
(102, 26, 'Áo Khoác Kaki Croptop Nữ Tay Phối Màu', '', '', '230000', '210000', 0, 0, 45, 'khoac(1).jpg'),
(103, 26, 'Áo Khoác Dạ Nữ Tweet 2túi Viền 4nút Họa Tiết Ziczac', '', '', '245000', '210000', 0, 0, 56, 'khoac(2).jpg'),
(104, 26, 'Áo Khoác Phao Nữ Ghile Cổ Cao Kck', '', '', '445000', '430000', 0, 0, 40, 'khoac(3).jpg'),
(105, 26, 'Áo Khoác Chất Liệu Khác Nam Cổ Cao Lót Lông', '', '', '499000', '479000', 0, 0, 26, 'khoac(4).jpg'),
(106, 26, 'Áo Khoác Gió Nam Trơn Mũ Rời', '', '', '480000', '440000', 0, 0, 33, 'khoac(5).jpg'),
(107, 26, 'Áo Khoác Jeans Nữ Croptop 2 Túi Nắp', '', 'Tên sản phẩm: Áo khoác Jeans Nữ Croptop 2 Túi Nắp.  Phù hợp: Mặc khoác quanh năm. Chất liệu: Vải jeans. Họa tiết: Trơn. Xuất xứ: Sản phẩm tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '239000', '209000', 0, 0, 44, 'khoac(6).jpg'),
(108, 26, 'Áo Khoác Chống Nắng Ôm Nữ Chống Tia Uv', '', 'Tên sản phẩm: Áo Khoác Chống Nắng Nữ - Chống tia UV. Độ tuổi: > 12 tuổi. Phù hợp: Mặc khoác quanh năm. Chất liệu: Vải thun kim cương. Họa tiết: Trơn. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '400000', '380000', 0, 0, 50, 'khoac(7).jpg'),
(109, 26, 'Áo Khoác Bomber Nam Da Lộn Viền Tay', '', 'Tên sản phẩm: Áo Khoác Bomber Da Lộn Viền Tay. Độ tuổi: > 13 tuổi. Phù hợp: Khoác mùa xuân, thu, đông. Chất liệu: Vải da lộn. Họa tiết: Phối màu sọc tay. Xuất xứ: Tự thiết kế và sản xuất bởi FM Style tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '500000', '450000', 0, 0, 22, 'khoac(8).jpg'),
(110, 26, 'Áo Khoác Kaki Croptop Nữ Cổ Bẻ 2 Túi Nắp', '', 'Tên sản phẩm: Khoác kaki nữ cổ bẻ 2 túi nắp. Độ tuổi: > 12 tuổi. Phù hợp: Mặc khoác quanh năm. Họa tiết: Trơn. Chất liệu: Vải kaki. Xuất xứ: Tự thiết kế và sản xuất tại Việt Nam. Cam kết 100% chất lượng từ chất vải đến đường chỉ, phát hiện lỗi được hoàn trả miễn phí.', '250000', '219000', 0, 0, 23, 'khoac(9).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'background1.jpg', '', 1),
(2, 'b1.jpg', '', 1),
(3, 'b2.jpg', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`),
  ADD KEY `sanpham_id` (`sanpham_id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `tbl_donhang_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`),
  ADD CONSTRAINT `tbl_donhang_ibfk_2` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`);

--
-- Các ràng buộc cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD CONSTRAINT `tbl_giaodich_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`),
  ADD CONSTRAINT `tbl_giaodich_ibfk_2` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`);

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
