-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2024 lúc 05:20 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `ngaydang` datetime NOT NULL,
  `ngaysua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_user`, `id_product`, `noidung`, `ngaydang`, `ngaysua`) VALUES
(5, 1, 90, 'Áo đẹp', '2023-11-21 18:38:31', NULL),
(6, 4, 80, 'long', '2023-11-22 07:48:47', NULL),
(8, 1, 1, 'Ahihi', '2023-11-29 13:17:18', NULL),
(9, 1, 9, 'Hahaha', '2023-11-29 15:12:43', NULL),
(11, 1, 90, 'Huhu', '2023-12-07 19:40:38', NULL),
(12, 1, 9, '123', '2023-12-08 08:39:14', NULL),
(13, 1, 90, 'Alo', '2024-04-17 14:27:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatrooms`
--

CREATE TABLE `chatrooms` (
  `id` int(11) NOT NULL,
  `User1ID` int(11) NOT NULL,
  `User2ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chatrooms`
--

INSERT INTO `chatrooms` (`id`, `User1ID`, `User2ID`) VALUES
(1, 1, 6),
(2, 8, 6),
(3, 9, 6),
(4, 1, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_variants` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `id_donhang`, `id_product`, `id_variants`, `soluong`, `total`) VALUES
(11, 13, 1, 11, 1, 400.00),
(12, 14, 1, 7, 1, 400.00),
(13, 15, 2, 17, 1, 350.00),
(14, 15, 1, 13, 1, 400.00),
(15, 16, 1, 13, 2, 800.00),
(16, 16, 1, 10, 2, 800.00),
(17, 16, 1, 7, 1, 400.00),
(18, 16, 1, 5, 1, 400.00),
(19, 17, 1, 9, 2, 800.00),
(20, 17, 1, 6, 2, 800.00),
(21, 18, 9, 82, 1, 249.00),
(22, 19, 1, 6, 1, 400.00),
(23, 20, 8, 73, 1, 175.00),
(24, 21, 1, 9, 4, 1600.00),
(30, 26, 1, 9, 1, 400.00),
(31, 26, 8, 70, 2, 350.00),
(32, 27, 8, 73, 1, 175.00),
(33, 27, 7, 63, 1, 400.00),
(40, 75, 2, 18, 1, 350.00),
(41, 76, 5, 44, 1, 269.00),
(42, 77, 1, 8, 2, 800.00),
(43, 78, 2, 16, 1, 350.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Đen'),
(2, 'Trắng'),
(3, 'Xám');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `star` int(11) NOT NULL,
  `ngaydang` datetime NOT NULL,
  `ngaysua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_user`, `id_product`, `noidung`, `star`, `ngaydang`, `ngaysua`) VALUES
(5, 1, 1, 'Áo đẹp', 5, '2023-11-27 12:18:54', NULL),
(6, 1, 9, 'Áo đẹp', 5, '2023-12-08 08:38:57', NULL),
(7, 1, 2, 'Great', 5, '2023-12-08 09:19:34', NULL),
(8, 1, 8, 'Tuyệt vời', 5, '2023-12-08 09:23:10', NULL),
(9, 1, 5, 'kkk', 5, '2023-12-08 09:27:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `motadanhmuc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `ngaytao`, `motadanhmuc`) VALUES
(1, 'Áo Hoodie', '2023-11-07 04:58:41', 'Áo hoodie là một loại áo phổ biến trong thời trang hiện đại'),
(2, 'Quần Short', '2023-11-07 04:59:01', 'Quần short là một kiểu quần ngắn thường được mặc trong môi trường nóng'),
(3, 'Áo Sơ Mi', '2023-11-07 04:59:41', 'Áo sơ mi là một loại áo mang phong cách truyền thống và lịch sự'),
(4, 'Áo Thun', '2023-11-07 04:59:57', 'Áo thun là một loại áo phổ biến và thông dụng trong thời trang hàng ngày'),
(5, 'Áo Khoác', '2023-11-07 05:00:24', 'Áo khoác là một loại trang phục được thiết kế để mặc bên ngoài'),
(6, 'Quần Dài', '2023-11-07 05:00:40', 'Quần dài là một loại trang phục dài, che chắn từ hông đến chân'),
(7, 'Áo Len', '2023-11-07 05:01:04', 'Áo len là một loại áo được làm từ chất liệu len, tức là sợi len được dệt thành vải'),
(8, 'Áo Vest', '2023-11-07 05:01:51', 'Áo vest là một loại áo không có tay, thường có phần trước mở'),
(9, 'Giày', '2023-11-07 05:02:13', 'Giày là một loại giày dép được đặt lên chân để bảo vệ'),
(10, 'Mũ', '2023-11-07 05:02:29', 'Mũ là một phụ kiện đầu được đặt trên đầu để bảo vệ đầu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `ngaygiaohang` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `pay` varchar(255) NOT NULL,
  `tong` decimal(10,2) NOT NULL,
  `danhgia` varchar(255) DEFAULT 'not',
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `ngaydathang`, `ngaygiaohang`, `address`, `phone`, `hoten`, `pay`, `tong`, `danhgia`, `trangthai`) VALUES
(13, 1, '2023-11-25 07:53:59', '2023-11-28 07:53:59', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 400.00, 'yet', 'Đã giao hàng'),
(14, 1, '2023-11-25 08:04:06', '2023-11-28 08:04:06', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán online', 400.00, 'not', 'Đã giao hàng'),
(15, 1, '2023-11-27 08:36:26', '2023-11-30 08:36:26', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán bằng thẻ visa', 750.00, 'yet', 'Đã giao hàng'),
(16, 1, '2023-11-29 02:10:31', '2023-12-02 02:10:31', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán bằng thẻ visa', 2400.00, 'not', 'Đã hủy'),
(17, 1, '2023-11-29 10:39:00', '2023-12-02 10:39:00', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 1610.00, 'not', 'Đã hủy'),
(18, 1, '2023-11-30 05:09:04', '2023-12-02 05:09:04', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 259.00, 'yet', 'Đã giao hàng'),
(19, 1, '2023-12-01 01:52:02', '2023-12-04 01:52:01', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán online', 410.00, 'not', 'Đã hủy'),
(20, 1, '2023-12-01 02:05:33', '2023-12-04 02:05:33', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 185.00, 'yet', 'Đã hủy'),
(21, 1, '2023-12-01 02:44:14', '2023-12-04 02:44:14', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 1610.00, 'not', 'Đã giao hàng'),
(26, 1, '2023-12-05 15:25:32', '2023-12-08 15:25:32', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán bằng thẻ visa', 760.00, 'not', 'Đã giao hàng'),
(27, 1, '2023-12-07 06:54:31', '2023-12-10 06:54:31', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 585.00, 'not', 'Đang chờ xác nhận'),
(75, 1, '2023-12-08 09:11:55', '2023-12-11 09:11:55', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 360.00, 'not', 'Đang chuẩn bị hàng'),
(76, 1, '2023-12-08 09:26:29', '2023-12-11 09:26:29', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 279.00, 'yet', 'Đang giao hàng'),
(77, 1, '2024-01-08 18:19:43', '2024-01-11 18:19:43', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 810.00, 'not', 'Đang chờ xác nhận'),
(78, 1, '2024-01-08 18:21:37', '2024-01-11 18:21:37', 'Tân Minh Thường Tín Hà Nội', '0388205794', 'Lê Văn Long', 'Thanh toán khi nhận hàng', 360.00, 'not', 'Đang giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_variants` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `name`, `email`, `message`) VALUES
(3, 'Long', 'le7929590@gmail.com', 'Quần áo đẹp'),
(4, 'Lê Văn Long', 'le7929590@gmail.com', 'Sản phẩm có thể giặt máy được không?'),
(5, 'Longlv', 'longlvph39851@fpt.edu.vn', 'Bạn có hỗ trợ giao hàng nhanh không?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `MessageText` varchar(255) DEFAULT NULL,
  `MessageTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `roomid`, `SenderID`, `MessageText`, `MessageTime`) VALUES
(1, 1, 1, 'Long', '2023-12-04 08:00:57'),
(2, 1, 6, '?????', '2023-12-04 08:02:46'),
(3, 1, 1, 'LÔ', '2023-12-08 07:40:01'),
(4, 2, 8, 'fsdg', '2023-12-08 07:56:59'),
(5, 2, 6, 'long', '2023-12-08 07:57:28'),
(6, 2, 8, 'đfdg', '2023-12-08 07:57:43'),
(7, 4, 1, 'Alo', '2023-12-08 08:37:01'),
(8, 4, 6, 'kkk', '2023-12-08 08:37:07'),
(9, 4, 1, 'test', '2023-12-08 08:37:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `des` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `ngaycapnhat` datetime DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `id_dm` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `des`, `price`, `quantity`, `img`, `ngaytao`, `ngaycapnhat`, `luotxem`, `id_dm`, `id_user`) VALUES
(1, 'Áo khoác hoodie ZIP - Cream', 'Điều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 400.00, 0, '../image/aohoodie9.jpg', '2023-11-07 05:08:42', '2023-12-08 02:35:16', 310, 1, 1),
(2, 'Áo Hoodie Xanh Bluebaby', '✅Bảng size áo Hoodie Vstyle\r\nM : Dài 68 Rộng 64 / 1m40-1m55, 35-50Kg\r\nL : Dài 72 Rộng 65,5 / 1m50 - 1m70, 45-65Kg\r\nXL : Dài 76 Rộng 67 / 1m65 - 1m85, 55-80Kg\r\n( Bảng trên mang tính chất tham khảo, tuỳ vào sở thích mặc vừa/mặc rộng của các bạn )', 350.00, 98, '../image/aohoodie8.jpg', '2023-11-07 05:09:22', '2023-12-08 01:22:24', 18, 1, 1),
(3, 'Áo Hoodie BASIC - Xanh Oliu', 'Chất vải: Nỉ chân cua Cotton 100% dày dặn\r\n\r\nĐiều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 400.00, 98, '../image/aohoodie7.jpg', '2023-11-07 05:10:14', '2023-12-08 01:22:35', 3, 1, 1),
(4, 'Áo Hoodie BASIC - Đen', 'Chất vải: Nỉ chân cua Cotton 100% dày dặn\r\n\r\nĐiều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 269.00, 2, '../image/aohoodie6.jpg', '2023-11-07 05:10:55', NULL, 4, 1, 1),
(5, 'Áo Hoodie BASIC - Nâu', 'Chất vải: Nỉ Cotton 100% dày dặn\r\n\r\nĐiều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 269.00, 0, '../image/aohoodie5.jpg', '2023-11-07 05:11:31', '2023-12-08 03:43:00', 3, 1, 1),
(6, 'Áo Hoodie BASIC - Xám', 'Chất liệu: Nỉ bông cotton 100% dày dặn\r\n\r\nĐiều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 269.00, 1, '../image/aohoodie4.jpg', '2023-11-07 05:13:28', NULL, 5, 1, 1),
(7, 'Áo khoác hoodie ZIP - Trắng', 'Điều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 400.00, 0, '../image/aohoodie3.jpg', '2023-11-07 05:14:22', NULL, 11, 1, 1),
(8, 'Áo Hoodie Local Brand - Hồng', '✅Bảng size áo Hoodie Vstyle\r\nM : Dài 68 Rộng 64 / 1m40-1m55, 35-50Kg\r\nL : Dài 72 Rộng 65,5 / 1m50 - 1m70, 45-65Kg\r\nXL : Dài 76 Rộng 67 / 1m65 - 1m85, 55-80Kg\r\n( Bảng trên mang tính chất tham khảo, tuỳ vào sở thích mặc vừa/mặc rộng của các bạn )', 175.00, 2, '../image/aohoodie2.jpg', '2023-11-07 05:15:08', '2023-12-07 06:53:44', 13, 1, 1),
(9, 'Áo Hoodie BASIC - Mint', 'Điều đầu tiên bạn sẽ thấy khi cầm vào chiếc áo hoodie UDAS đó chính là lớp vải mềm, mướt tay nhưng dày dặn, độ bắt màu tốt và ít nhăn. Chất liệu ngang hàng với những thương hiệu có tiếng nhưng giá thành không quá đau ví.\r\n\r\nChẳng cần nói quá nhiều vì chúng mình tự tin vào chất liệu nỉ cotton này có thể làm chiều lòng ngay cả những khách hàng khó tính nhất. Và nếu chất liệu áo không giống như mô tả, chúng mình sẵn sàng hoàn trả toàn bộ số tiền mà bạn bỏ ra để trải nghiệm chiếc áo với chất liệu sánh ngang hàng hiệu này.', 249.00, 0, '../image/aohoodie1.jpg', '2023-11-07 05:15:47', '2023-11-07 07:57:11', 22, 1, 1),
(10, 'Quần Dù Ống Rộng', 'Quần Dù Ống Rộng SAIGONESE  Parachute Pants Túi Hộp Unisex Nam Nữ\r\n\r\nChất liệu: Vải Dù cao cấp\r\n\r\nThiết kế : Quần Dù Ống Rộng dáng suông lưng thun thoải mái năng động\r\n\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\n\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch ngoài ra rất là dễ phối đồ cho những bạn mặc theo phong cách freestyle , unisex\r\n\r\n- Đặc điểm:  Parachute Pants Túi Hộp có dây rút có thể điều chỉnh độ rút , form quần đứng nên rộng rải thoải mái', 220.00, 1, '../image/quandai9.jpg', '2023-11-07 06:57:07', NULL, 0, 6, 1),
(11, 'Quần Nhung Tăm Ống Rộng', 'Sản Phẩm: Quần Nhung Tăm Ống Rộng SGES Baggy Lưng Thun Unisex Nam Nữ\r\n\r\nChất liệu: Vải Nhung Tăm, mặc thông thoáng, co giãn tốt\r\n\r\nThiết kế : Quần suông ống rộng lưng thun thoải mái năng động\r\n\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\n\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch ngoài ra rất là dễ phối đồ cho những bạn mặc theo phong cách freestyle , unisex\r\n\r\nXuất xứ: Việt Nam', 440.00, 2, '../image/quandai8.jpg', '2023-11-07 06:57:53', NULL, 2, 6, 1),
(12, 'Quần caro plaid pants', '???? Bảng SIZE: Quần / Áo form châu Âu rộng rộng nhé các cậu \r\n(Bảng size mang tính chất tham khảo và phù hợp 80-90% sở thích các cậu ạ. Các bạn muốn chọn size phù hợp có thể xem hình feedback các khách đã mua hoặc inbox cho SAIGONESE nhé ^^)\r\n-Size S: dưới 47kg, Cao dưới 1m60 \r\n-Size M: dưới 53kg, Cao dưới 1m60\r\n-Size L: từ 54-63kg , Cao 1m61 - 1m70\r\n-Size XL: từ 64-70kg, Cao : 1m71 trở lên\r\n ???? ???? Ngập tràn mẫu mới ???? ????\r\n ???? Quần Caro, Quần Plaid Pants', 335.00, 3, '../image/quandai7.jpg', '2023-11-07 06:58:35', NULL, 0, 6, 1),
(13, 'Quần cargo pants kem', 'Thông tin sản phẩm Quần cargo pants JOG kem kaki túi hộp nam nữ ống rộng phong cách đường phố:\r\n– Hàng chuẩn JOG sản xuất, tem mác chuẩn chính hãng.\r\n– Chất liệu KAKI cao cấp co giãn mặc mát thoải mái\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. \r\n- Dễ mix đồ với nhiều loại trang phục.\r\n– Thiết kế hiện đại, trẻ trung, năng động.', 256.00, 2, '../image/quandai6.jpg', '2023-11-07 06:59:51', NULL, 0, 6, 1),
(14, 'Quần Baggy Denim', 'Quần Baggy Denim SAIGONESE Quần Jean Dài Ống Suông Form Rộng Unisex Nam Nữ / Xanh Nhạt\r\n\r\nChất liệu: Vải Jean Denim cao cấp\r\n\r\nThiết kế : Quần suông ống rộng lưng thun thoải mái năng động\r\n\r\nKiểu dáng gọn nhẹ, trẻ trung, năng động basic dễ mặc\r\n\r\nPhù hợp nhiều hoàn cảnh: mặc nhà, đi học, đi chơi, du lịch ngoài ra rất là dễ phối đồ cho những bạn mặc theo phong cách freestyle , unisex\r\n\r\n- Đặc điểm: quần dài ống suông có dây rút có thể điều chỉnh độ rút , form quần đứng nên rộng rải thoải mái', 195.00, 1, '../image/quandai5.jpg', '2023-11-07 07:00:49', NULL, 0, 6, 1),
(15, 'Quần Jogger', 'Thông tin sản phẩm Quần JOGGER JOG Nam Kaki 4 Túi Hộp Co Giãn thể thao nam nữ phong cách đường phố:\r\n\r\n– Hàng chuẩn JOG sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu:\r\n\r\n– KAKI cao cấp co giãn 4 chiều mặc mát thoải mái\r\n\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Dễ mix đồ với nhiều loại trang phục.\r\n\r\n– Thiết kế hiện đại, trẻ trung, năng động.', 240.00, 2, '../image/quandai4.jpg', '2023-11-07 07:01:39', NULL, 0, 6, 1),
(16, 'Quần Cargo Pants', 'Thông tin sản phẩm Quần Cargo Pants JOG Túi Hộp Nam Chất Kaki Ống Rộng phong cách đường phố:\r\n\r\n– Hàng chuẩn JOG sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu:\r\n\r\n– KAKI cao cấp co giãn 4 chiều mặc mát thoải mái\r\n\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Dễ mix đồ với nhiều loại trang phục.\r\n\r\n– Thiết kế hiện đại, trẻ trung, năng động.', 256.00, 1, '../image/quandai3.jpg', '2023-11-07 07:02:36', NULL, 0, 6, 1),
(17, 'Quần Cargo Pants Basic', 'Thông tin sản phẩm Quần Cargo Pants Basic JOGGER Nam Kaki Túi Hộp Ống Rộng phong cách đường phố:\r\n\r\n\r\n\r\n– Hàng chuẩn JOGGER sản xuất, tem mác chuẩn chính hãng.\r\n\r\n\r\n\r\n– Chất liệu KAKI cao cấp co giãn 4 chiều mặc mát thoải mái\r\n\r\n\r\n\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n\r\n\r\n– Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Dễ mix đồ với nhiều loại trang phục.\r\n\r\n\r\n\r\n– Thiết kế hiện đại, trẻ trung, năng động.', 252.00, 3, '../image/quandai2.jpg', '2023-11-07 07:03:41', NULL, 0, 6, 1),
(18, 'Quần Basic Pants', 'Thông tin sản phẩm Quần Basic Pants JOGGER Unisex Nam Nữ Kaki Ống Rộng Co Giãn:\r\n\r\n\r\n\r\n– Hàng chuẩn JOG sản xuất, tem mác chuẩn chính hãng.\r\n\r\n– Chất liệu: KAKI cao cấp co giãn 4 chiều mặc mát thoải mái\r\n\r\n– Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n– Mặc ở nhà, Mặc đi chơi, Mặc đi học, hoặc khi vận động thể thao. \r\n\r\n- Dễ mix đồ với nhiều loại trang phục áo phông, áo khoác và giày thể thao. \r\n\r\n– Thiết kế hiện đại, trẻ trung, năng động.\r\n\r\n- Form Unisex Cho Cả Nam Và Nữ', 250.00, 1, '../image/quandai1.jpg', '2023-11-07 07:06:04', '2023-11-07 13:41:27', 0, 6, 1),
(19, 'Quần Short hoạt hình Tokago', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và thun\r\n\r\n* Kích thước: XS S M L XL 2XL 3XL', 144.00, 2, '../image/quanshort9.jpg', '2023-11-07 07:07:50', '2023-12-06 14:30:59', 1, 2, 1),
(20, 'Quần Short Kuromi', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và thun\r\n\r\n* Kích thước: XS S M L XL 2XL 3XL', 144.00, 2, '../image/quanshort8.jpg', '2023-11-07 07:08:45', NULL, 0, 2, 1),
(21, 'Mndgms Y2 OG Lưới Ngắn', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và spandex\r\n\r\n* Kích thước: XS SML XL 2XL 3XL', 144.00, 1, '../image/quanshort7.jpg', '2023-11-07 07:11:07', NULL, 0, 2, 1),
(22, 'Eric Emanuel EE Quần Short', '* Quần in 3D mới\r\n\r\n* Chất liệu : Polyester và thun\r\n\r\n* Kích thước “ XS S M L XL 2XL 3XL', 115.00, 1, '../image/quanshort6.jpg', '2023-11-07 07:12:16', NULL, 0, 2, 1),
(23, 'Quần Short Thể Thao', '* Quần in 3D mới\r\n\r\n* Chất liệu : Polyester và thun\r\n\r\n* Kích thước “ XS S M L XL 2XL 3XL', 144.00, 2, '../image/quanshort5.jpg', '2023-11-07 07:13:25', NULL, 0, 2, 1),
(24, 'Quần Short Thể Thao Đi Biển', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và spandex\r\n\r\n* Kích thước: XS SML XL 2XL 3XL', 144.00, 2, '../image/quanshort4.jpg', '2023-11-07 07:14:02', NULL, 0, 2, 1),
(25, 'Quần Short Đường Phố', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và spandex\r\n\r\n* Kích thước: XS SML XL 2XL 3XL', 144.00, 2, '../image/quanshort3.jpg', '2023-11-07 07:14:53', NULL, 0, 2, 1),
(26, 'Quần short bóng rổ thoáng mát', '* Quần in 3D mới\r\n\r\n* Chất liệu : Polyester và thun\r\n\r\n* Kích thước: XS S M L XL 2XL 3XL', 144.00, 2, '../image/quanshort2.jpg', '2023-11-07 07:15:37', NULL, 0, 2, 1),
(27, 'Quần Short In Họa Tiết Cổ Điển', '* Mới: Quần in 3D\r\n\r\n* Chất liệu: Polyester và thun\r\n\r\n* Kích thước: XS S M L XL 2XL 3XL', 115.00, 2, '../image/quanshort1.jpg', '2023-11-07 07:16:41', NULL, 0, 2, 1),
(28, 'Áo sơ mi nam dài tay cao cấp', '⏩ Thông tin sản phẩm:\r\n\r\n???? Chất liệu: vải nhung tăm cao cấp, thấm hút mồ hôi tốt.\r\n\r\n???? mặc cực thoải mái, ít nhăn\r\n\r\n???? Chất vải đẹp, không xù lông, không phai màu\r\n\r\n???? Đường may cực tỉ mỉ cực đẹp\r\n\r\n???? Có thể mặc đi chơi, dễ phối đồ, cổ cách điệu cực chất\r\n\r\n???? Kiểu dáng: Thiết kế theo form rộng vừa,đơn giản , dễ mặc ..Tôn lên được sự trẻ trung năng động cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.', 199.00, 2, '../image/aosomi9.jpg', '2023-11-07 07:18:44', NULL, 0, 3, 1),
(29, 'Áo Sơ Mi Tay Ngắn Cho Mùa Hè', '* Thông tin sản phẩm:\r\n- Chất liệu: chất lụa mềm mịn\r\n- Áo thấm hút mồ hôi tốt\r\n- Form rộng vừa, đứng form áo cực kỳ trẻ trung năng động\r\n- Chất vải dày đẹp, không xù lông, không phai màu\r\n- Đường may cực tỉ mỉ cực đẹp\r\n- Có thể mặc đi làm, đi chơi, đi tiệc sự kiện', 179.00, 2, '../image/aosomi8.jpg', '2023-11-07 07:20:05', NULL, 0, 3, 1),
(30, 'Áo sơ mi tay ngắn In họa tiết', 'Thông tin sản phẩm:\r\n\r\nChất liệu: Chất vải kate, thấm hút mồ hôi tốt.\r\n\r\nKiểu dáng: Thiết kế theo form chuẩn, thích hợp phối với quần jean dài, jean short, quần tây dài, tây short để đi tiệc, đi làm công sở, đi chơi, dạo phố...Tôn lên được sự trẻ trung, thanh lịch cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.\r\n\r\nXuất xứ: VIỆT NAM.', 179.00, 3, '../image/aosomi7.jpg', '2023-11-07 07:20:44', NULL, 0, 3, 1),
(31, 'Áo sơ mi nam tay ngắn sang trọng', '⏩ Thông tin sản phẩm:\r\n\r\n???? Chất liệu: chất mago mềm mịn , thoáng mát\r\n\r\n???? Áo thấm hút mồ hôi tốt\r\n\r\n???? Form rộng vừa, đứng form áo cực kỳ trẻ trung năng động\r\n\r\n???? Chất vải dày đẹp, không xù lông, không phai màu\r\n\r\n???? Đường may cực tỉ mỉ cực đẹp\r\n\r\n???? Có thể mặc đi làm, đi chơi, đặc biệt đi tiệc sự kiện , cực sang trọng\r\n\r\n???? Xuất xứ: VIỆT NAM', 159.00, 3, '../image/aosomi6.jpg', '2023-11-07 07:21:41', NULL, 0, 3, 1),
(32, 'Áo sơ mi in họa tiết cao cấp', '* Thông tin sản phẩm:\r\n\r\n- Chất liệu: chất lụa mềm mịn\r\n\r\n- Áo thấm hút mồ hôi tốt\r\n\r\n- Form rộng vừa, đứng form áo cực kỳ trẻ trung năng động\r\n\r\n- Chất vải dày đẹp, không xù lông, không phai màu\r\n\r\n- Đường may cực tỉ mỉ cực đẹp\r\n\r\n- Có thể mặc đi làm, đi chơi, đi tiệc sự kiện', 189.00, 2, '../image/aosomi5.jpg', '2023-11-07 07:22:46', '2023-11-07 07:55:43', 10, 3, 1),
(33, 'Áo sơ mi có túi cao cấp', '⏩ Thông tin sản phẩm:\r\n\r\n???? Chất liệu: vải nhung tăm cao cấp, thấm hút mồ hôi tốt.\r\n\r\n???? mặc cực thoải mái, ít nhăn\r\n\r\n???? Chất vải đẹp, không xù lông, không phai màu\r\n\r\n???? Đường may cực tỉ mỉ cực đẹp, có túi\r\n\r\n???? Có thể mặc đi chơi, dễ phối đồ, cổ cách điệu cực chất\r\n\r\n???? Kiểu dáng: Thiết kế theo form rộng vừa,đơn giản , dễ mặc ..Tôn lên được sự trẻ trung năng động cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.', 179.00, 3, '../image/aosomi4.jpg', '2023-11-07 07:23:44', NULL, 0, 3, 1),
(34, 'Áo sơ mi hoạ tiết đường phố', '???? Chất liệu: chất lụa mềm mịn , thoáng mát\r\n\r\n???? Áo thấm hút mồ hôi tốt\r\n\r\n???? Form rộng vừa, đứng form áo trẻ trung năng động\r\n\r\n???? Chất vải dày đẹp, không xù lông, không phai màu\r\n\r\n???? Đường may cực tỉ mỉ cực đẹp\r\n\r\n???? Có thể mặc đi làm, đi chơi, đặc biệt đi tiệc sự kiện , cực sang trọng', 179.00, 3, '../image/aosomi3.jpg', '2023-11-07 07:24:34', NULL, 0, 3, 1),
(35, 'Áo Sơ Mi Họa Tiết Cò Lã', '* Thông tin sản phẩm:\r\n\r\n- Chất liệu: chất lụa mềm mịn\r\n\r\n- Áo thấm hút mồ hôi tốt\r\n\r\n- Form rộng vừa, đứng form áo cực kỳ trẻ trung năng động\r\n\r\n- Chất vải dày đẹp, không xù lông, không phai màu\r\n\r\n- Đường may cực tỉ mỉ cực đẹp\r\n\r\n- Có thể mặc đi làm, đi chơi, đi tiệc sự kiện', 179.00, 3, '../image/aosomi2.jpg', '2023-11-07 07:25:22', NULL, 0, 3, 1),
(36, 'Áo sơ mi mango Hàn Quốc', '???? Chất liệu: chất mago mềm mịn , thoáng mát\r\n\r\n???? Áo thấm hút mồ hôi tốt\r\n\r\n???? Form rộng vừa, đứng form áo cực kỳ trẻ trung năng động\r\n\r\n???? Chất vải dày đẹp, không xù lông, không phai màu\r\n\r\n???? Đường may cực tỉ mỉ cực đẹp\r\n\r\n???? Có thể mặc đi làm, đi chơi, đặc biệt đi tiệc sự kiện , cực sang trọng', 159.00, 2, '../image/aosomi1.jpg', '2023-11-07 07:26:12', NULL, 0, 3, 1),
(37, 'Áo Khoác Collection Jacket', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Xanh phối kem\r\n\r\n- Thiết kế: Khoá kéo, in lụa cao cấp', 550.00, 2, '../image/aokhoac9.jpg', '2023-11-07 07:29:01', '2023-11-07 13:42:36', 3, 5, 1),
(38, 'Áo Khoác Vintage Sport', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Xanh phối trắng\r\n\r\n- Thiết kế: Khoá kéo, in lụa cao cấp', 275.00, 4, '../image/aokhoac8.jpg', '2023-11-07 07:30:46', NULL, 0, 5, 1),
(39, 'Áo Khoác Private Collection', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen phối trắng\r\n\r\n- Thiết kế: Khoá kéo, in lụa cao cấp', 275.00, 2, '../image/aokhoac7.jpg', '2023-11-07 07:31:22', NULL, 0, 5, 1),
(40, 'Áo Khoác United AK067', 'Thông tin sản phẩm:\r\n\r\n- Chất liệu: Gió dù\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen\r\n\r\n- Thiết kế: In lụa', 285.00, 2, '../image/aokhoac6.jpg', '2023-11-07 07:34:24', NULL, 0, 5, 1),
(41, 'Áo khoác Legacy Line', 'Thông tin sản phẩm:\r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen\r\n\r\n- Thiết kế: In lụa', 285.00, 3, '../image/aokhoac5.jpg', '2023-11-07 07:35:38', NULL, 0, 5, 1),
(42, 'Áo Khoác Active-Jacket', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp cải tiến\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Xám phối đen\r\n\r\n- Thiết kế: In lụa cao cấp', 285.00, 2, '../image/aokhoac4.jpg', '2023-11-07 07:37:17', NULL, 0, 5, 1),
(43, 'Áo Khoác Design Studio', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen phối xám\r\n\r\n- Thiết kế: Khoá kéo, in lụa cao cấp', 275.00, 2, '../image/aokhoac3.jpg', '2023-11-07 07:38:22', NULL, 0, 5, 1),
(44, 'Áo Khoác Sporty A/W 2022', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen phối trắng, xám nhạt\r\n\r\n- Thiết kế: Khoá kéo, in lụa cao cấp', 275.00, 2, '../image/aokhoac2.jpg', '2023-11-07 07:38:55', NULL, 0, 5, 1),
(45, 'Áo Khoác Signature Windbreaker', 'Thông tin sản phẩm: \r\n\r\n- Chất liệu: Gió dù 2 lớp\r\n\r\n- Form: Oversize\r\n\r\n- Màu sắc: Đen\r\n\r\n- Thiết kế: Khoá kéo, có mũ, in lụa cao cấp', 275.00, 3, '../image/aokhoac1.jpg', '2023-11-07 07:40:48', NULL, 1, 5, 1),
(46, 'Áo thun UNDER Song Ngư', '+ THÔNG TIN SẢN PHẨM\r\n\r\nThương hiệu: UNDER\r\n\r\nMã sản phẩm: UTS026\r\n\r\nChất liệu: 100% Cotton\r\n\r\nMàu sắc: Green (Xanh Lá)', 350.00, 3, '../image/ao9.jpg', '2023-11-07 07:41:46', NULL, 0, 4, 1),
(47, 'Áo thun UNDER Hà Nội (Trắng)', 'THÔNG TIN SẢN PHẨM:\r\n\r\n- Hàng chuẩn thương hiệu UNDER sản xuất, có tem mác chính hãng.\r\n\r\n- Chất liệu: thun cotton 100%, co giãn 2 chiều giữ form, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\n\r\nTHÔNG SỐ CHỌN SIZE:\r\n\r\n- Size M: 1m50-1m65 (50-60kg) \r\n\r\n- Size L: 1m65-1m72 (55-65kg) \r\n\r\n- Size XL: 1m72- 1m85 (60-75kg) ', 199.00, 2, '../image/ao8.jpg', '2023-11-07 07:43:06', NULL, 0, 4, 1),
(48, 'Áo thun UNDER Cự Giải', '+ THÔNG TIN SẢN PHẨM\r\n\r\nThương hiệu: UNDER\r\n\r\nMã sản phẩm: UTS018\r\n\r\nChất liệu: 100% Cotton\r\n\r\nMàu sắc: Blue (Xanh Dương)', 350.00, 4, '../image/ao7.jpg', '2023-11-07 07:44:08', NULL, 0, 4, 1),
(49, 'Áo thun UNDER Signature (Cream)', 'THÔNG TIN SẢN PHẨM:\r\n\r\n- Hàng chuẩn thương hiệu UNDER sản xuất, có tem mác chính hãng.\r\n\r\n- Chất liệu: thun cotton 100%, co giãn 2 chiều giữ form, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\n\r\nTHÔNG SỐ CHỌN SIZE:\r\n\r\n- Size M: 1m50-1m65 (50-60kg) \r\n\r\n- Size L: 1m65-1m72 (55-65kg) \r\n\r\n- Size XL: 1m72- 1m85 (60-75kg) ', 250.00, 3, '../image/ao6.jpg', '2023-11-07 07:45:29', NULL, 0, 4, 1),
(50, 'Áo thun UNDER Thần Nông', '+ THÔNG TIN SẢN PHẨM\r\n\r\nThương hiệu: UNDER\r\n\r\nMã sản phẩm: UTS022\r\n\r\nChất liệu: 100% Cotton\r\n\r\nMàu sắc: Black (Đen)', 350.00, 3, '../image/ao5.jpg', '2023-11-07 07:46:42', NULL, 0, 4, 1),
(51, 'Áo thun UNDER Higher (Trắng)', 'THÔNG TIN SẢN PHẨM:\r\n\r\n- Hàng chuẩn thương hiệu UNDER sản xuất, có tem mác chính hãng.\r\n\r\n- Chất liệu: thun cotton 100%, co giãn 2 chiều giữ form, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\n\r\nTHÔNG SỐ CHỌN SIZE:\r\n\r\n- Size M: 1m50-1m65 (50-60kg) \r\n\r\n- Size L: 1m65-1m72 (55-65kg) \r\n\r\n- Size XL: 1m72- 1m85 (60-75kg) ', 250.00, 3, '../image/ao4.jpg', '2023-11-07 07:47:16', NULL, 0, 4, 1),
(52, 'Áo thun UNDER Higher (Đen)', 'THÔNG TIN SẢN PHẨM:\r\n\r\n- Hàng chuẩn thương hiệu UNDER sản xuất, có tem mác chính hãng.\r\n\r\n- Chất liệu: thun cotton 100%, co giãn 2 chiều giữ form, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\n\r\nTHÔNG SỐ CHỌN SIZE:\r\n\r\n- Size M: 1m50-1m65 (50-60kg) \r\n\r\n- Size L: 1m65-1m72 (55-65kg) \r\n\r\n- Size XL: 1m72- 1m85 (60-75kg) ', 250.00, 3, '../image/ao3.jpg', '2023-11-07 07:51:12', NULL, 0, 4, 1),
(53, 'Áo thun UNDER Bạch Dương', '+ THÔNG TIN SẢN PHẨM\r\n\r\nThương hiệu: UNDER\r\n\r\nMã sản phẩm: UTS015\r\n\r\nChất liệu: 100% Cotton\r\n\r\nMàu sắc: Brown (Nâu)', 350.00, 1, '../image/ao2.jpg', '2023-11-07 07:52:09', NULL, 0, 4, 1),
(54, 'Áo thun UNDER Signature (Đen)', 'THÔNG TIN SẢN PHẨM:\r\n\r\n- Hàng chuẩn thương hiệu UNDER sản xuất, có tem mác chính hãng.\r\n\r\n- Chất liệu: thun cotton 100%, co giãn 2 chiều giữ form, vải mềm, vải mịn, thoáng mát, không xù lông.\r\n\r\n- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.\r\n\r\n- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.\r\n\r\n- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.\r\n\r\n\r\n\r\nTHÔNG SỐ CHỌN SIZE:\r\n\r\n- Size M: 1m50-1m65 (50-60kg) \r\n\r\n- Size L: 1m65-1m72 (55-65kg) \r\n\r\n- Size XL: 1m72- 1m85 (60-75kg) ', 250.00, 4, '../image/ao1.jpg', '2023-11-07 07:52:54', NULL, 0, 4, 1),
(55, 'Converse CHUCK 70', 'Tuyên bố từ chối trách nhiệm về kích thước:\r\n\r\nCó thể có chênh lệch 1-2cm về số đo tùy thuộc vào quá trình phát triển và sản xuất.\r\n\r\nTuyên bố từ chối trách nhiệm về màu sắc:\r\n\r\nMàu sắc thực tế có thể khác nhau. Điều này là do mỗi màn hình máy tính có khả năng hiển thị màu sắc khác nhau nên chúng tôi không thể đảm bảo rằng màu sắc bạn nhìn thấy phản ánh chính xác màu sắc thực sự của sản phẩm.', 200.00, 3, '../image/giay1.jpg', '2023-11-07 08:05:14', '2023-11-07 13:47:37', 1, 9, 1),
(56, 'Giày Converse Women Chuck', 'Phần trên bằng vải bạt và đế xếp chồng đôi nâng tầm vẻ ngoài cao cấp mang tính biểu tượng. Với các yếu tố thiết kế Chuck Taylor All Star cổ điển, như miếng vá mắt cá chân hình ngôi sao và bản vá \"All Star\" ở gót chân. Đệm EVA giữ cho giày thoải mái. Giúp bạn nâng chiều cao.\r\n\r\n\r\n\r\nGiày đế cao, đế bằng vải canvas\r\n\r\nĐế nâng cao để tăng thêm chiều cao\r\n\r\nMiếng dán mắt cá chân hình ngôi sao cổ điển\r\n\r\nPhong cách buộc dây để điều chỉnh vừa vặn\r\n\r\nĐệm EVA tạo sự thoải mái', 200.00, 1, '../image/giay2.jpg', '2023-11-07 08:32:48', NULL, 0, 9, 1),
(57, 'Giày Thể Thao Converse', 'Tuyên bố miễn trừ trách nhiệm về kích thước:\r\n\r\nCó thể có sự khác biệt 1-2cm về số đo tùy thuộc vào quá trình phát triển và sản xuất.\r\nTuyên bố miễn trừ trách nhiệm về màu sắc:\r\n\r\nMàu sắc thực tế có thể thay đổi. Điều này là do mỗi màn hình máy tính có khả năng hiển thị màu sắc khác nhau, chúng tôi không thể đảm bảo rằng màu sắc mà bạn nhìn thấy phản ánh chính xác màu sắc thực của sản phẩm.', 180.00, 2, '../image/giay3.jpg', '2023-11-07 08:35:34', NULL, 0, 9, 1),
(58, 'Giày Converse Chuck Taylor', 'Về kích thước:\r\n\r\nCó thể có sai số kích thước 1-2 cm tùy thuộc vào quá trình phát triển và sản xuất.\r\n\r\nVề màu sắc:\r\n\r\nMàu sắc của sản phẩm thực tế và hình ảnh có thể khác nhau. Do mỗi màn hình máy tính có khả năng hiển thị màu sắc khác nhau, chúng tôi không thể đảm bảo rằng màu sắc của hình ảnh mà bạn thấy thể hiện chính xác màu sắc thực tế của sản phẩm.', 240.00, 1, '../image/giay4.jpg', '2023-11-07 08:38:26', NULL, 0, 9, 1),
(59, 'Giày Thể Thao Converse CTAS', 'PHONG CÁCH CYBERPUNK\r\n\r\nChuck Taylor All Star đưa bạn đến một tương lai xứng đáng với khoa học viễn tưởng. Các yếu tố phản chiếu và màu sắc tương phản sẽ tạo điểm nhấn cho phong cách của bạn. Đồ họa thông tin thuyết duy lợi thể hiện về hậu tận thế với một ý nghĩa lạc quan: Phá vỡ các rào cản trong khi bạn hướng nội và tiến về phía trước.\r\n\r\nĐặc điểm và lợi ích\r\nGiày đế cao có thân trên bằng vải canvas\r\nCác chi tiết phản quang với miếng vá Chuck Taylor màu nổi\r\nLớp lót giày OrthoLite mang lại cảm giác thoải mái liên tục.', 250.00, 2, '../image/giay5.jpg', '2023-11-07 08:41:10', NULL, 0, 9, 1),
(60, 'Giày Thể Thao Converse Chuck 70 Plus', 'THIẾT KẾ ĐỘC ĐÁO. PHONG CÁCH KHÔNG NGỪNG.\r\n\r\n\r\n\r\nMột bản cập nhật bất ngờ về kiểu dáng cổ điển mọi thời đại, Chuck 70 Plus kết hợp các tính năng mang tính biểu tượng với kiểu dáng tương lai. Sự kết hợp của canvas có trọng lượng hỗn hợp đi kèm với các đường kẻ đậm, không đối xứng để tạo ra một cái nhìn nổi bật. Các chi tiết cao su ghép nối và miếng dán mắt cá chân thu hút mọi ánh nhìn vào bạn, trong khi đệm cao cấp giúp bạn luôn nhẹ nhàng trên đôi chân của mình. ', 250.00, 3, '../image/giay6.jpg', '2023-11-07 08:43:32', NULL, 0, 9, 1),
(61, 'Giày Thể Thao Converse Men', 'Đế giữa EVA nhẹ với đệm Eco-OrthoLite (khoảng 20% hàm lượng tái chế)\r\nĐế ngoài có lớp phủ họa tiết xương cá để tăng cường lực kéo\r\nĐế giữa bằng cao su và lớp phủ ở bàn chân trước mang lại vẻ ngoài và cảm giác bền bỉ hơn\r\nCác chi tiết mang tính kế thừa cao cấp: dây buộc polyester, khoen nhôm, miếng vá mắt cá chân đồng đều.', 250.00, 1, '../image/giay7.jpg', '2023-11-07 08:46:21', NULL, 0, 9, 1),
(62, 'Giày Thể Thao Converse Chuck', 'Tuyên bố miễn trừ trách nhiệm về kích thước:\r\n\r\nCó thể có sự khác biệt 1-2cm về số đo tùy thuộc vào quá trình phát triển và sản xuất.\r\n\r\nTuyên bố miễn trừ trách nhiệm về màu sắc:\r\n\r\nMàu sắc thực tế có thể thay đổi. Điều này là do mỗi màn hình máy tính có khả năng hiển thị màu sắc khác nhau, chúng tôi không thể đảm bảo rằng màu sắc mà bạn nhìn thấy phản ánh chính xác màu sắc thực của sản phẩm.', 250.00, 1, '../image/giay8.jpg', '2023-11-07 08:47:57', '2023-11-07 13:47:05', 0, 9, 1),
(63, 'Giày Converse Chuck 70 Unisex Adults', 'Lấy cảm hứng từ thế giới của các nghệ sĩ đường phố, đồ họa phun sơn mang đến sự tinh tế nghệ thuật để làm mới mùa hè này của Chuck 70 cao cấp. Đồ họa sơn phun và đế giữa bóng loáng tạo nên vẻ ngoài táo bạo phù hợp từ đường phố đến studio hoặc bất cứ nơi nào bạn muốn mang vào mùa hè này. Bạn sẽ tạo nên điều gì với đôi giày canvas này? \r\n  • Giày cao cổ với phần trên bằng vải\r\n  • Đệm OrthoLite cho cảm giác thoải mái cả ngày\r\n  • Đồ họa sơn phun bản in cho giao diện năng động\r\n  • Ren cotton bền và đế giữa màu trắng bóng\r\n  • Miếng vá giả da và bản dạng đúc.', 300.00, 3, '../image/giay9.jpg', '2023-11-07 08:49:58', NULL, 0, 9, 1),
(64, 'Nón Lưỡi Trai Họa Tiết Rằn Ri', 'Tên sản phẩm: Mũ bóng chày\r\n\r\nChất liệu: Bông, polyester\r\n\r\nChu vi vòng đầu: 55-60cm (có thể điều chỉnh)\r\n\r\nThích hợp để che nắng và trang trí du lịch ngoài trời\r\n\r\n1.Do đo lường thủ công, xin vui lòng cho phép một độ lệch đo lường 1-3 cm.\r\n\r\n2. Do sự khác biệt về hiệu ứng hiển thị và ánh sáng, màu sắc thực tế của mặt hàng có thể hơi khác so với màu hiển thị trong hình.\r\n\r\n3. Cảm ơn bạn đã lựa chọn sản phẩm của tôi, chúng tôi sẽ tận tâm phục vụ bạn!', 95.00, 3, '../image/mu1.jpg', '2023-11-07 11:47:12', NULL, 0, 10, 1),
(65, 'Mũ Lưỡi Trai Phong Cách hip hop', 'Tên: Mũ Hip Hop\r\n\r\nChất LIỆU: BÔNG\r\n\r\nChu vi vòng đầu: 55-60cm (có thể điều chỉnh)\r\n\r\nDo đo lường thủ công, xin vui lòng cho phép một độ lệch đo lường 1-3 cm.\r\n\r\n2. Do sự khác biệt về hiệu ứng hiển thị và ánh sáng, màu sắc thực tế của mặt hàng có thể hơi khác so với màu hiển thị trong hình.\r\n\r\n3. Cảm ơn bạn đã lựa chọn sản phẩm của tôi, chúng tôi sẽ tận tâm phục vụ bạn!', 94.00, 1, '../image/mu2.jpg', '2023-11-07 11:49:40', NULL, 0, 10, 1),
(66, 'Nón Lưỡi Trai Thể Thao', 'Phương pháp dệt: đan\r\nMô hình: Đơn sắc\r\nDanh mục sản phẩm: mũ bóng chày\r\nMàu: đen, trắng, hồng\r\nHàng có sẵn không: Có\r\nPhương pháp chế biến: vẽ tay\r\nKiểu mũ: mái vòm\r\nKích thước: Có thể điều chỉnh\r\nChất liệu: Cotton\r\nĐối tượng áp dụng: cặp đôi, người già, thanh thiếu niên, thanh niên, trung niên, cha mẹ - con cái\r\nCác yếu tố phổ biến: cơ thể nhẹ\r\nHình dạng tai nghe: nấm', 59.00, 3, '../image/mu3.jpg', '2023-11-07 11:51:36', NULL, 0, 10, 1),
(67, 'Mũ Lưỡi Trai Người Nhện Marvel', 'Loại sản phẩm: mũ bóng chày\r\nMàu: Đen, Xanh\r\nKích thước mũ: 48-52cm\r\nThích hợp cho trẻ em\r\nGói hàng bao gồm: 1 mũ\r\nMùa thích hợp: Xuân, Hạ, Thu, Đông', 72.00, 3, '../image/mu4.jpg', '2023-11-07 11:53:00', NULL, 16, 10, 1),
(68, 'Mũ Lưỡi Trai Cao Bồi', 'Tên sản phẩm: Mũ bóng chày\r\n\r\nChất liệu: Bông, polyester\r\n\r\nChu vi vòng đầu: 55-60cm (có thể điều chỉnh)\r\n\r\nThích hợp để che nắng và trang trí du lịch ngoài trời\r\n\r\n1.Do đo lường thủ công, xin vui lòng cho phép một độ lệch đo lường 1-3 cm.\r\n\r\n2. Do sự khác biệt về hiệu ứng hiển thị và ánh sáng, màu sắc thực tế của mặt hàng có thể hơi khác so với màu hiển thị trong hình.\r\n\r\n3. Cảm ơn bạn đã lựa chọn sản phẩm của tôi, chúng tôi sẽ tận tâm phục vụ bạn!', 91.00, 3, '../image/mu5.jpg', '2023-11-07 11:54:46', NULL, 0, 10, 1),
(69, 'Mũ Lưỡi Trai Họa Tiết', 'Xin chúc mừng bạn đã tìm thấy một cửa hàng của nhà máy!!Mumu Store được người mua đánh giá 4,9, chất lượng và dịch vụ xứng đáng để bạn tin tưởng!!Hãy theo dõi chúng tôi và xem các cửa hàng ZTE để tìm hiểu thêm về các sản phẩm chất lượng cao và giá cả tốt nhất!!', 52.00, 2, '../image/mu6.jpg', '2023-11-07 11:58:00', NULL, 1, 10, 1),
(70, 'Mũ Lưỡi Trai Thêu Chữ Trẻ Trung', 'Tên: Mũ Hip Hop\r\n\r\nChất LIỆU: BÔNG\r\n\r\nChu vi vòng đầu: 55-60cm (có thể điều chỉnh)\r\n\r\nDo đo lường thủ công, xin vui lòng cho phép một độ lệch đo lường 1-3 cm.\r\n\r\n2. Do sự khác biệt về hiệu ứng hiển thị và ánh sáng, màu sắc thực tế của mặt hàng có thể hơi khác so với màu hiển thị trong hình.\r\n\r\n3. Cảm ơn bạn đã lựa chọn sản phẩm của tôi, chúng tôi sẽ tận tâm phục vụ bạn!', 93.00, 1, '../image/mu7.jpg', '2023-11-07 11:59:57', NULL, 0, 10, 1),
(71, 'TIDE BEAR Mũ Lưỡi Trai', 'Loại sản phẩm: Mũ bóng chày\r\n\r\nGiới tính áp dụng: unisex / Nam và nữ\r\n\r\nChất liệu: Satin\r\n\r\nPhong cách: Ruili\r\n\r\nPhương pháp dệt: satin\r\n\r\nPhương pháp xử lý: Satin\r\n\r\nThành phần phổ biến: thêu\r\n\r\nMô hình: Chữ cái\r\n\r\nPhong cách Hattop: Taper\r\n\r\nKiểu vành: Cánh ngắn\r\n\r\nMàu: Kaki, đen, xám, xanh,\r\n\r\nKích thước: Người lớn\r\n\r\nPhong cách: Băng', 54.00, 3, '../image/mu8.jpg', '2023-11-07 12:03:34', '2023-11-07 12:09:37', 1, 10, 1),
(72, 'Nón Thời Trang Black', 'Kích thước vòng đầu: 57cm\r\nMàu sắc: màu đen\r\nThành phần: 100% Polyester\r\nVật liệu: Polyester\r\nĐường may tỉ mỉ chắc chắn\r\nChiếc mũ này là chắc chắn là Item không thể bỏ qua bạn nhé', 75.00, 2, '../image/mu9.jpg', '2023-11-07 12:05:39', '2023-11-07 13:45:49', 0, 10, 1),
(73, 'Áo vest 2 lớp cao cấp', 'Thể hiện sự chuyên nghiệp và tinh tế\r\n\r\nÁo khoác blazer 2 lớp cao cấp Áo Vest 012 HIDALGO sẽ giúp bạn thể hiện sự chuyên nghiệp và tinh tế trong mọi tình huống. Với thiết kế đẹp mắt và chi tiết tỉ mỉ, áo khoác này sẽ làm tăng giá trị ngoại hình của bạn và gửi đi thông điệp về sự quan tâm đến chi tiết và chất lượng.\r\n\r\n\r\n\r\nSự đầu tư thông minh vào phong cách', 365.00, 2, '../image/aovest1.jpg', '2023-11-07 12:13:30', NULL, 0, 8, 1),
(74, 'Áo Blazer, Vest đen 2 hàng nút', 'Với nhiều sắc màu trẻ trung, thời thượng bạn có thể dễ dàng phối hợp chiếc áo blazer này cùng các loại trang phục sáng hoặc tối màu, cực kì bảnh bao khi kết hợp cùng quần tây trơn hoặc thời trang phá cách, sáng tạo khi phối cùng quần jean baggy, quần short rộng.\r\n- Chất liệu: Vải cotton ép keo, có lót bên trong. Form áo rộng.\r\n- Size: S, M\r\n- Made in Viet Nam\r\nTham khảo thêm sizechart', 790.00, 2, '../image/aovest2.jpg', '2023-11-07 12:15:36', '2023-11-07 12:32:59', 1, 8, 1),
(75, 'Áo Blazer, Vest Beige 2 hàng nút', 'Với nhiều sắc màu trẻ trung, thời thượng bạn có thể dễ dàng phối hợp chiếc áo blazer này cùng các loại trang phục sáng hoặc tối màu, cực kì bảnh bao khi kết hợp cùng quần tây trơn hoặc thời trang phá cách, sáng tạo khi phối cùng quần jean baggy, quần short rộng.\r\n- Chất liệu: Vải cotton ép keo, có lót bên trong. Form áo rộng.\r\n- Size: S, M L\r\n- Made in Viet Nam\r\nTham khảo thêm sizechart', 709.00, 2, '../image/aovest4.jpg', '2023-11-07 12:18:37', NULL, 0, 8, 1),
(76, 'Áo Blazer Nam INF Essential 1B', '* Nổi bật - Tinh tế trên từng chi tiết mà SOMEHOW mang đến cho các bạn sự trải nghiệm đơn giản mà sang trọng. \r\n\r\n * SOMEHOW sẽ giúp bạn giải quyết vấn đề giá thành,chất lượng và mẫu mã sản phẩm tốt nhất.\r\n\r\n\r\n\r\n * Chi tiết sản phẩm Áo Vest Nam SOMEHOW\r\n\r\n    + Chât vải 100% Cotton 2 lớp  dày dặn, quan trọng độ bền màu cao\r\n\r\n    + Giặt ko đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động\r\n\r\n    + Thiệt kế cấu trúc lỗ thoáng, mắt vải mịn giúp tôn dáng cho người mặc  \r\n\r\n    + Sản xuất : Việt Nam\r\n\r\n    + Sản phẩm được đóng gói bằng Hộp hay Túi Niêm Phong có in logo riêng biệt của SOMEHOW', 850.00, 1, '../image/aovest5.jpg', '2023-11-07 12:21:38', NULL, 0, 8, 1),
(77, 'BLAZER CHUOTTRANG áo Vest nam', 'Chất liệu: Cotton Viscose, 100% wool 50% viscose Lining: 83% cotton, 17% silk silhouette., lót kate silk.\r\nÁo khoác basic blazer Chuột Trắng phom vừa slimfit và phom rộng, hãy chọn phom áo ôm hoặc rộng tùy ý khách.\r\n\r\nBlack Classic Blazer\r\n\r\nVui lòng nhắn số đo chiều cao và cân nặng của bạn vào hộp tin nhắn để nhân viên trực Online hỗ trợ bạn chọn size theo yêu cầu.', 950.00, 2, '../image/aovest3.jpg', '2023-11-07 12:23:10', '2023-11-18 14:23:34', 1, 8, 1),
(78, 'Áo Blazer Nam Numbi Kẻ 4 Túi', ' * Nổi bật - Tinh tế trên từng chi tiết mà SOMEHOW mang đến cho các bạn sự trải nghiệm đơn giản mà sang trọng. \r\n\r\n * SOMEHOW sẽ giúp bạn giải quyết vấn đề giá thành,chất lượng và mẫu mã sản phẩm tốt nhất.\r\n\r\n\r\n\r\n * Chi tiết sản phẩm Áo Vest Nam SOMEHOW\r\n\r\n    + Chât vải Cotton thoải mái , quan trọng độ bền màu cao\r\n\r\n    + Giặt ko đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động\r\n\r\n    + Thiệt kế cấu trúc lỗ thoáng, mắt vải mịn giúp tôn dáng cho người mặc  \r\n\r\n    + Sản xuất : Việt Nam\r\n\r\n    + Sản phẩm được đóng gói bằng Hộp hay Túi Niêm Phong có in logo riêng biệt của SOMEHOW', 850.00, 2, '../image/aovest7.jpg', '2023-11-07 12:25:06', NULL, 0, 8, 1),
(79, 'Áo Blazer, Vest Xanh Lá 2 hàng nút', 'Với nhiều sắc màu trẻ trung, thời thượng bạn có thể dễ dàng phối hợp chiếc áo blazer này cùng các loại trang phục sáng hoặc tối màu, cực kì bảnh bao khi kết hợp cùng quần tây trơn hoặc thời trang phá cách, sáng tạo khi phối cùng quần jean baggy, quần short rộng.\r\n- Chất liệu: Vải cotton ép keo, có lót bên trong. Form áo rộng.\r\n- Size: S M L\r\n- Made in Viet Nam\r\nTham khảo thêm sizechart', 790.00, 1, '../image/aovest8.jpg', '2023-11-07 12:27:27', '2023-11-07 13:43:39', 0, 8, 1),
(80, 'Áo Blazer, Vest xanh dương 2 hàng nút', 'Với nhiều sắc màu trẻ trung, thời thượng bạn có thể dễ dàng phối hợp chiếc áo blazer này cùng các loại trang phục sáng hoặc tối màu, cực kì bảnh bao khi kết hợp cùng quần tây trơn hoặc thời trang phá cách, sáng tạo khi phối cùng quần jean baggy, quần short rộng.\r\n- Chất liệu: Vải cotton ép keo, có lót bên trong. Form áo rộng.\r\n- Size: S, M\r\n- Made in Viet Nam\r\nTham khảo thêm sizechart', 790.00, 2, '../image/aovest9.jpg', '2023-11-07 12:29:37', '2023-11-07 13:44:36', 18, 8, 1),
(81, 'Áo Blazer Nam INF Phối Zip Grey', '* Nổi bật - Tinh tế trên từng chi tiết mà SOMEHOW mang đến cho các bạn sự trải nghiệm đơn giản mà sang trọng. \r\n\r\n * SOMEHOW sẽ giúp bạn giải quyết vấn đề giá thành,chất lượng và mẫu mã sản phẩm tốt nhất.\r\n\r\n\r\n\r\n * Chi tiết sản phẩm Áo Vest Nam SOMEHOW\r\n\r\n    + Chât vải Cotton thoải mái , quan trọng độ bền màu cao\r\n\r\n    + Giặt ko đổ lông hay bay màu, thấm hút mồ hôi và thoải mái ko gò bó khi vận động\r\n\r\n    + Thiệt kế cấu trúc lỗ thoáng, mắt vải mịn giúp tôn dáng cho người mặc  \r\n\r\n    + Sản xuất : Việt Nam\r\n\r\n    + Sản phẩm được đóng gói bằng Hộp hay Túi Niêm Phong có in logo riêng biệt của SOMEHOW', 850.00, 2, '../image/aovest6.jpg', '2023-11-07 12:45:48', '2023-11-18 14:25:39', 3, 8, 1),
(82, 'Áo sweater Dệt Kim Dài Tay', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 186.00, 3, '../image/aolen1.jpg', '2023-11-07 13:17:17', NULL, 0, 7, 1),
(83, 'Áo sweater Dệt Kim Cổ Tròn', 'Tên sản phẩm: áo len nam cổ tròn\r\n\r\n\r\n\r\nPhong cách: Thời trang\r\n\r\n\r\n\r\nLoại cổ áo: Cổ tròn\r\n\r\n\r\n\r\nChiều dài tay áo: Dài tay\r\n\r\n\r\n\r\nPhong cách cơ bản: Giới trẻ bình dân\r\n\r\n\r\n\r\nĐộ dày: Bình thường\r\n\r\n\r\n\r\nLoại tay áo: Thường xuyên\r\n\r\n\r\n\r\nPhong cách phân khu: hợp thời trang\r\n\r\n\r\n\r\nĐiểm bán sản phẩm: mềm mại và thoải mái, đơn giản và phóng khoáng, thời trang, không bóng và chống mài mòn', 212.00, 2, '../image/aolen2.png', '2023-11-07 13:18:28', NULL, 0, 7, 1),
(84, 'Magee Áo Sweater Dệt Kim Chui Đầu', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 271.00, 3, '../image/aolen3.jpg', '2023-11-07 13:19:36', NULL, 16, 7, 1),
(85, 'Magee Áo sweater Dệt Kim Dáng Rộng', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 265.00, 1, '../image/aolen4.jpg', '2023-11-07 13:20:52', NULL, 14, 7, 1),
(86, 'Áo Len Nam Dài Tay Cổ Tròn', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.\r\n\r\n-Kiểm Tra chi tiết, màu sắc và kích thước sản phẩm trước khi đặt hàng. Chúng tôi không chấp nhận đơn đặt hàng không chính xác.', 280.00, 3, '../image/aolen5.jpg', '2023-11-07 13:22:03', NULL, 5, 7, 1),
(87, 'Magee Áo sweater Dệt Kim Chui Đầu', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 312.00, 3, '../image/aolen6.jpg', '2023-11-07 13:23:56', NULL, 4, 7, 1),
(88, 'Áo Nỉ Nam Dài Tay Cổ Tròn Form Rộng', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn BẠN.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.', 222.00, 3, '../image/aolen7.jpg', '2023-11-07 13:25:14', NULL, 14, 7, 1),
(89, 'Magee Áo sweater In Chữ Phối', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.\r\n\r\n-Kiểm Tra chi tiết, màu sắc và kích thước sản phẩm trước khi đặt hàng. Chúng tôi không chấp nhận đơn đặt hàng không chính xác.', 314.00, 2, '../image/aolen8.jpg', '2023-11-07 13:26:43', '2023-11-07 13:38:37', 32, 7, 1),
(90, 'Magee Áo sweater Giáng Sinh', 'Chào mừng đến với cửa hàng của chúng tôi, Magee\r\n\r\n???? Theo dõi cửa hàng để nhận phiếu giảm giá\r\n\r\n------------------------------------------------------\r\n\r\n????  Gói sẽ được vận chuyển từ Trung Quốc.\r\n\r\n???? Nếu bạn thích sản phẩm của chúng tôi, vui lòng thêm nó vào giỏ hàng của bạn. Cảm ơn bạn.\r\n\r\n???? Cập nhật tin tức mới nhất từ cửa hàng của chúng tôi. Chúng tôi sẽ gửi cho bạn phiếu giảm giá và giảm giá.\r\n\r\n-Kiểm Tra chi tiết, màu sắc và kích thước sản phẩm trước khi đặt hàng. Chúng tôi không chấp nhận đơn đặt hàng không chính xác.', 268.00, 1, '../image/aolen9.jpg', '2023-11-07 13:27:38', '2023-11-07 13:33:26', 92, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `size_id`, `color_id`, `quantity`, `ngaytao`, `price`) VALUES
(5, 1, 1, 1, 2, '2023-11-25 05:06:59', 400.00),
(6, 1, 2, 1, 1, '2023-11-25 05:07:23', 400.00),
(7, 1, 3, 1, 1, '2023-11-25 05:07:31', 400.00),
(8, 1, 1, 2, 2, '2023-11-25 05:07:41', 400.00),
(9, 1, 2, 2, 1, '2023-11-25 05:07:53', 400.00),
(10, 1, 3, 2, 1, '2023-11-25 05:08:01', 400.00),
(11, 1, 1, 3, 1, '2023-11-25 05:08:11', 400.00),
(12, 1, 2, 3, 2, '2023-11-25 05:08:20', 400.00),
(13, 1, 3, 3, 1, '2023-11-25 05:08:29', 400.00),
(14, 2, 1, 1, 1, '2023-11-27 08:20:44', 350.00),
(15, 2, 2, 1, 1, '2023-11-27 08:20:52', 350.00),
(16, 2, 3, 1, 2, '2023-11-27 08:20:58', 350.00),
(17, 2, 1, 2, 1, '2023-11-27 08:21:10', 350.00),
(18, 2, 2, 2, 1, '2023-11-27 08:26:51', 350.00),
(19, 2, 3, 2, 1, '2023-11-27 08:28:04', 350.00),
(20, 2, 1, 3, 1, '2023-11-27 08:28:26', 350.00),
(21, 2, 2, 3, 1, '2023-11-27 08:28:37', 350.00),
(22, 2, 3, 3, 2, '2023-11-27 08:28:47', 350.00),
(23, 3, 1, 1, 1, '2023-11-29 08:14:18', 400.00),
(24, 3, 2, 1, 1, '2023-11-29 08:14:32', 400.00),
(25, 3, 3, 1, 1, '2023-11-29 08:14:40', 400.00),
(26, 3, 1, 2, 1, '2023-11-29 08:14:50', 400.00),
(27, 3, 2, 2, 1, '2023-11-29 08:15:02', 400.00),
(28, 3, 3, 2, 1, '2023-11-29 08:15:20', 400.00),
(29, 3, 1, 3, 1, '2023-11-29 08:15:32', 400.00),
(30, 3, 2, 3, 1, '2023-11-29 08:15:44', 400.00),
(31, 3, 3, 3, 1, '2023-11-29 08:15:56', 400.00),
(32, 4, 1, 1, 1, '2023-11-29 08:16:45', 269.00),
(33, 4, 2, 1, 1, '2023-11-29 08:16:56', 269.00),
(34, 4, 3, 1, 1, '2023-11-29 08:17:05', 269.00),
(35, 4, 1, 2, 1, '2023-11-29 08:17:21', 269.00),
(36, 4, 2, 2, 1, '2023-11-29 08:21:05', 269.00),
(37, 4, 3, 2, 1, '2023-11-29 08:21:12', 269.00),
(38, 4, 1, 3, 1, '2023-11-29 08:21:21', 269.00),
(39, 4, 2, 3, 1, '2023-11-29 08:22:13', 269.00),
(40, 4, 3, 3, 1, '2023-11-29 08:22:45', 269.00),
(41, 5, 1, 1, 1, '2023-11-29 08:25:28', 269.00),
(42, 5, 2, 1, 1, '2023-11-29 08:25:38', 269.00),
(43, 5, 3, 1, 1, '2023-11-29 08:26:14', 269.00),
(44, 5, 1, 2, 1, '2023-11-29 08:28:19', 269.00),
(45, 5, 2, 2, 1, '2023-11-29 08:28:35', 269.00),
(46, 5, 3, 2, 1, '2023-11-29 08:28:43', 269.00),
(47, 5, 1, 3, 1, '2023-11-29 08:29:47', 269.00),
(48, 5, 2, 3, 1, '2023-11-29 08:30:07', 269.00),
(49, 5, 3, 3, 1, '2023-11-29 08:30:18', 269.00),
(50, 6, 1, 1, 1, '2023-11-29 08:32:29', 269.00),
(51, 6, 2, 1, 1, '2023-11-29 08:33:02', 269.00),
(52, 6, 3, 1, 1, '2023-11-29 08:33:12', 269.00),
(53, 6, 1, 2, 1, '2023-11-29 08:36:03', 269.00),
(54, 6, 2, 2, 1, '2023-11-29 08:36:11', 269.00),
(55, 6, 3, 2, 1, '2023-11-29 08:36:19', 269.00),
(56, 6, 3, 2, 1, '2023-11-29 08:37:20', 269.00),
(57, 6, 1, 3, 1, '2023-11-29 08:37:28', 269.00),
(58, 6, 2, 3, 1, '2023-11-29 08:37:38', 269.00),
(59, 6, 3, 3, 1, '2023-11-29 08:37:47', 269.00),
(60, 7, 1, 1, 1, '2023-11-29 08:39:46', 400.00),
(61, 7, 2, 1, 1, '2023-11-29 08:39:59', 400.00),
(62, 7, 3, 1, 1, '2023-11-29 08:40:07', 400.00),
(63, 7, 1, 2, 1, '2023-11-29 08:40:14', 400.00),
(64, 7, 2, 2, 1, '2023-11-29 08:41:49', 400.00),
(65, 7, 3, 2, 1, '2023-11-29 08:41:58', 400.00),
(66, 7, 1, 3, 1, '2023-11-29 08:42:24', 400.00),
(67, 7, 2, 3, 1, '2023-11-29 08:42:37', 400.00),
(68, 7, 3, 3, 1, '2023-11-29 08:42:44', 400.00),
(69, 8, 1, 1, 1, '2023-11-29 08:45:04', 175.00),
(70, 8, 2, 1, 1, '2023-11-29 08:45:15', 175.00),
(71, 8, 3, 1, 1, '2023-11-29 08:45:23', 175.00),
(72, 8, 1, 2, 1, '2023-11-29 08:50:03', 175.00),
(73, 8, 2, 2, 1, '2023-11-29 08:51:50', 175.00),
(74, 8, 3, 2, 1, '2023-11-29 08:52:00', 175.00),
(75, 8, 1, 3, 1, '2023-11-29 08:52:06', 175.00),
(76, 8, 2, 3, 1, '2023-11-29 08:52:13', 175.00),
(77, 8, 3, 3, 1, '2023-11-29 08:52:22', 175.00),
(78, 9, 1, 1, 1, '2023-11-29 08:54:02', 249.00),
(79, 9, 2, 1, 1, '2023-11-29 08:55:28', 249.00),
(80, 9, 3, 1, 1, '2023-11-29 08:55:35', 249.00),
(81, 9, 1, 2, 1, '2023-11-29 08:55:40', 249.00),
(82, 9, 2, 2, 1, '2023-11-29 08:57:16', 249.00),
(83, 9, 3, 2, 1, '2023-11-29 08:57:51', 249.00),
(84, 9, 1, 3, 1, '2023-11-29 08:57:59', 249.00),
(85, 9, 2, 3, 1, '2023-11-29 08:58:08', 249.00),
(86, 9, 3, 3, 1, '2023-11-29 08:58:14', 249.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, 'L'),
(2, 'XL'),
(3, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `ngaytao` datetime NOT NULL,
  `vaitro` varchar(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `hoten`, `phone`, `ngaytao`, `vaitro`, `avatar`) VALUES
(1, 'LongLV', 'longlv123', 'le7929590@gmail.com', 'Lê Văn Long', '0388205794', '2023-11-07 05:05:14', 'admin', '../image/avatar/avatar.jpg'),
(3, 'LeLong', 'longlvph123', 'longlvph39851@fpt.edu.vn', 'Lê Long', '0987654732', '2023-11-22 01:27:44', 'khachhang', '../image/avatar/dog.jpg'),
(4, 'Long1112', 'longlvph321', 'Long@1234.com', 'Lê Văn Long1', '0987654732', '2023-11-22 01:38:37', 'nhanvien', '../image/avatar/9x01_YGEO.jpg'),
(6, 'lonhchat', 'longtd123', 'Long@123.com', 'Long12', '0987654732', '2023-12-04 01:57:21', 'chat', '../image/avatar/karate.jpg'),
(7, 'Long87', 'longhka87', 'longlvph39851@fpt.edu.vn', 'Lê Văn LongG', '0987654754', '2023-12-08 00:32:26', 'khachhang', '../image/avatar/sp2.png'),
(8, 'Sontungmtp', 'sontung123456', 'Tung@123.com', 'Thanh Tùng', 'sontung199ty', '2023-12-08 00:38:32', 'khachhang', '../image/avatar/xahoi2.jpg'),
(9, 'LeLong12', 'longty123', 'le7929590@gmail.com', 'Lê Văn Long134', '0388206793', '2023-12-08 02:26:03', 'khachhang', '../image/avatardefaul.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User1ID` (`User1ID`),
  ADD KEY `User2ID` (`User2ID`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donhang` (`id_donhang`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_variants` (`id_variants`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_variants` (`id_variants`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomid` (`roomid`),
  ADD KEY `SenderID` (`SenderID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `fk_product_dm` (`id_dm`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD CONSTRAINT `chatrooms_ibfk_1` FOREIGN KEY (`User1ID`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `chatrooms_ibfk_2` FOREIGN KEY (`User2ID`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_3` FOREIGN KEY (`id_variants`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_3` FOREIGN KEY (`id_variants`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `chatrooms` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`SenderID`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_dm` FOREIGN KEY (`id_dm`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
