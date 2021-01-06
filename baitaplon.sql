-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 02:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baitaplonweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'khanhjunior', 'Anhkhanh1', 'Nguyễn Văn Khánh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Oppo'),
(2, 'Xiaomi'),
(3, 'Huawei'),
(4, 'Samsung'),
(5, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2),
(41, 26, 2, '3788', 29, '2021-01-06 07:01:08', 0, 1),
(42, 21, 1, '3788', 29, '2021-01-06 07:01:08', 0, 1),
(43, 24, 2, '3788', 29, '2021-01-06 07:01:08', 0, 1),
(44, 17, 1, '3788', 29, '2021-01-06 07:01:08', 0, 1),
(45, 24, 1, '8311', 29, '2021-01-06 07:01:10', 0, 1),
(46, 20, 1, '8282', 29, '2021-01-06 08:58:24', 0, 1),
(47, 27, 1, '8282', 29, '2021-01-06 08:58:24', 0, 1),
(48, 26, 1, '8526', 29, '2021-01-06 08:58:20', 0, 1),
(50, 40, 1, '7242', 30, '2021-01-06 10:00:12', 0, 0),
(51, 47, 1, '7275', 30, '2021-01-06 10:20:48', 0, 0),
(52, 44, 1, '2806', 30, '2021-01-06 10:31:20', 0, 0),
(53, 44, 1, '9723', 30, '2021-01-06 10:32:57', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaodich`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(18, 26, 2, '3788', '2021-01-06 07:01:08', 29, 0, 1),
(19, 21, 1, '3788', '2021-01-06 07:01:08', 29, 0, 1),
(20, 24, 2, '3788', '2021-01-06 07:01:08', 29, 0, 1),
(21, 17, 1, '3788', '2021-01-06 07:01:08', 29, 0, 1),
(22, 24, 1, '8311', '2021-01-06 07:01:10', 29, 0, 1),
(23, 20, 1, '8282', '2021-01-06 08:58:24', 29, 0, 1),
(24, 27, 1, '8282', '2021-01-06 08:58:24', 29, 0, 1),
(25, 26, 1, '8526', '2021-01-06 08:58:20', 29, 0, 1),
(26, 42, 1, '1245', '2021-01-06 08:59:54', 29, 0, 2),
(27, 40, 1, '7242', '2021-01-06 10:00:12', 30, 0, 0),
(28, 47, 1, '7275', '2021-01-06 10:20:48', 30, 0, 0),
(29, 44, 1, '2806', '2021-01-06 10:31:20', 30, 0, 0),
(30, 44, 1, '9723', '2021-01-06 10:32:57', 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(26, 'iPhone 11 Pro Max 256GB Silver AT&T', 37, '23950000', 'iphone11pm.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `email`, `password`, `giaohang`) VALUES
(31, '21323', '21', '21321', '213213@gmail.com', '2ffe5ae29bb6b60145835654b541b443', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
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
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(36, 5, 'iPhone 11 Pro Max 256GB Silver AT&T', 'Tặng kèm bộ sạc, cáp chính hãng trị giá 320.000đ.', 'Bản 2020 (Đã qua sử dụng)', '23950000', '19990000', 0, 0, 10, 'iphone11pm.png'),
(37, 5, 'iPhone 11 Pro Max 256GB Silver AT&T', 'Tặng kèm bộ sạc, cáp chính hãng trị giá 320.000đ.', 'Bản 2020 (Đã qua sử dụng)', '23950000', '19990000', 0, 0, 14, 'iphone11pm.png'),
(38, 0, '', '', '', '', '', 0, 0, 0, ''),
(39, 0, '', '', '', '', '', 0, 0, 0, ''),
(40, 5, 'iPhone 11 Pro Max 256GB Silver AT&T', 'Tặng kèm bộ sạc, cáp chính hãng trị giá 320.000đ.', 'Bản 2020 (Đã qua sử dụng)', '23950000', '19990000', 0, 0, 321, 'iphone11pm.png'),
(41, 5, 'iPhone 11 Pro Max 256GB Silver AT&T', '321', '321', '23950000', '19990000', 0, 0, 2, 'iphone11pm.png'),
(42, 4, 'Samsung Galaxy Galaxy Fold 2 - 256GB', 'Galaxy Z Fold2 5G - tái định hình tương lai với tuyệt tác điện thoại gập số 1 thế giới. Trao đến bạn hiệu năng mạnh mẽ, màn hình kính có thể gập mở dễ dàng và dung lượng pin khủng cho trải nghiệm bền bỉ suốt ngày dài', 'Tặng Kèm phụ kiện chính hãng trị giá 500K khi mua máyGiảm 50% khi khách hàng mua bất cứ phụ kiện ( ốp lưng , dán cường lực , sạc tích điện, thẻ nhớ ...', '36490000', '35990000', 0, 0, 22, 'samsung.jpg'),
(43, 4, 'Samsung Galaxy Galaxy Fold 2 - 256GB', 'Galaxy Z Fold2 5G - tái định hình tương lai với tuyệt tác điện thoại gập số 1 thế giới. Trao đến bạn hiệu năng mạnh mẽ, màn hình kính có thể gập mở dễ dàng và dung lượng pin khủng cho trải nghiệm bền bỉ suốt ngày dài', 'Tặng Kèm phụ kiện chính hãng trị giá 500K khi mua máyGiảm 50% khi khách hàng mua bất cứ phụ kiện ( ốp lưng , dán cường lực , sạc tích điện, thẻ nhớ ...', '36490000', '35990000', 0, 0, 22, 'samsung.jpg'),
(44, 4, 'Samsung Galaxy Galaxy Fold 2 - 256GB', 'Galaxy Z Fold2 5G - tái định hình tương lai với tuyệt tác điện thoại gập số 1 thế giới. Trao đến bạn hiệu năng mạnh mẽ, màn hình kính có thể gập mở dễ dàng và dung lượng pin khủng cho trải nghiệm bền bỉ suốt ngày dài', 'Tặng Kèm phụ kiện chính hãng trị giá 500K khi mua máyGiảm 50% khi khách hàng mua bất cứ phụ kiện ( ốp lưng , dán cường lực , sạc tích điện, thẻ nhớ ...', '36490000', '35990000', 0, 0, 22, 'samsung.jpg'),
(45, 4, 'Samsung Galaxy Galaxy Fold 2 - 256GB', 'Galaxy Z Fold2 5G - tái định hình tương lai với tuyệt tác điện thoại gập số 1 thế giới. Trao đến bạn hiệu năng mạnh mẽ, màn hình kính có thể gập mở dễ dàng và dung lượng pin khủng cho trải nghiệm bền bỉ suốt ngày dài', 'Tặng Kèm phụ kiện chính hãng trị giá 500K khi mua máyGiảm 50% khi khách hàng mua bất cứ phụ kiện ( ốp lưng , dán cường lực , sạc tích điện, thẻ nhớ ...', '36490000', '35990000', 0, 0, 22, 'samsung.jpg'),
(46, 3, 'HUAWEI MATE 20 RS', 'Công nghệ màn hình:OLED, \r\nĐộ phân giải: 2K+ (1440 x 3120 Pixels), \r\nMàn hình rộng: 6.39', 'Miễn phí vận chuyển', '46700000', '43990000', 0, 0, 1, 'huawei.jpg'),
(47, 3, 'HUAWEI MATE 20 RS', 'Công nghệ màn hình:OLED, \r\nĐộ phân giải: 2K+ (1440 x 3120 Pixels), \r\nMàn hình rộng: 6.39', 'Miễn phí vận chuyển', '46700000', '43990000', 0, 0, 1, 'huawei.jpg'),
(48, 3, 'HUAWEI MATE 20 RS', 'Công nghệ màn hình:OLED, \r\nĐộ phân giải: 2K+ (1440 x 3120 Pixels), \r\nMàn hình rộng: 6.39', 'Miễn phí vận chuyển', '46700000', '43990000', 0, 0, 1, 'huawei.jpg'),
(49, 3, 'HUAWEI MATE 20 RS', 'Công nghệ màn hình:OLED, \r\nĐộ phân giải: 2K+ (1440 x 3120 Pixels), \r\nMàn hình rộng: 6.39', 'Miễn phí vận chuyển', '46700000', '43990000', 0, 0, 1, 'huawei.jpg'),
(50, 2, 'Xiaomi Mi 10T Pro 5G', 'Mượt mà trong từng khung hình với tần số quét 144 Hz', 'Bảo hiểm rơi vỡ màn hình 6 tháng', '12990000', '11600000', 0, 0, 1, 'xiaomi.jpg'),
(51, 2, 'Xiaomi Mi 10T Pro 5G', 'Mượt mà trong từng khung hình với tần số quét 144 Hz', 'Bảo hiểm rơi vỡ màn hình 6 tháng', '12990000', '11600000', 0, 0, 1, 'xiaomi.jpg'),
(52, 2, 'Xiaomi Mi 10T Pro 5G', 'Mượt mà trong từng khung hình với tần số quét 144 Hz', 'Bảo hiểm rơi vỡ màn hình 6 tháng', '12990000', '11600000', 0, 0, 1, 'xiaomi.jpg'),
(53, 2, 'Xiaomi Mi 10T Pro 5G', 'Mượt mà trong từng khung hình với tần số quét 144 Hz', 'Bảo hiểm rơi vỡ màn hình 6 tháng', '12990000', '11600000', 0, 0, 1, 'xiaomi.jpg'),
(54, 1, 'Oppo Reno 5', 'MicroSD, hỗ trợ tối đa 256 GB', 'Trả góp 50%', '8690000', '8290000', 0, 0, 1, 'oppo.png'),
(55, 1, 'Oppo Reno 5', 'MicroSD, hỗ trợ tối đa 256 GB', 'Trả góp 50%', '8690000', '8290000', 0, 0, 1, 'oppo.png'),
(56, 1, 'Oppo Reno 5', 'MicroSD, hỗ trợ tối đa 256 GB', 'Trả góp 50%', '8690000', '8290000', 0, 0, 1, 'oppo.png'),
(57, 1, 'Oppo Reno 5', 'MicroSD, hỗ trợ tối đa 256 GB', 'Trả góp 50%', '8690000', '8290000', 0, 0, 1, 'oppo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Indexes for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
