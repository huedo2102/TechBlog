-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 16, 2025 lúc 06:28 PM
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
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', '2025-04-15 21:42:56', '2025-04-16 01:50:43'),
(2, 'Internet', 'internet', '2025-04-15 21:43:13', '2025-04-16 01:51:04'),
(3, 'Apps-Game', 'apps-game', '2025-04-16 01:51:39', '2025-04-16 01:51:39'),
(4, 'Khám phá', 'kham-pha', '2025-04-16 01:51:51', '2025-04-16 01:51:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 'hue do', 'hangdo50984@gmail.com', '0564362624', 'Thêm bài viết công nghệ', 'Thêm bài viết công nghệ', '2025-04-16 02:11:25', '2025-04-16 02:11:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_08_20_133225_create_categories_table', 1),
(4, '2021_08_20_133237_create_posts_table', 1),
(5, '2021_08_20_133255_create_comments_table', 1),
(6, '2021_08_20_133314_create_contacts_table', 1),
(7, '2021_08_28_090837_edit_type_content_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `view_counts` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `new_post` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `highlight_post` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `view_counts`, `user_id`, `new_post`, `slug`, `category_id`, `highlight_post`, `created_at`, `updated_at`) VALUES
(3, 'Mẫu iPhone gập của Apple sẽ có giá cao hơn Galaxy Z Fold của Samsung', 'iPhone \"Fold\" dự kiến sẽ ra mắt vào năm 2026.', '<p>Theo nguồn tin từ leaker Instant Digital trên mạng xã hội Weibo, mẫu iPhone gập đầu tiên của Apple dự kiến sẽ có giá khởi điểm dao động từ&nbsp;2.100 đến 2.300 USD&nbsp;, vượt nhẹ so với mức giá hiện tại của&nbsp;Samsung Galaxy Z Fold6&nbsp;(1.899 USD) và&nbsp;Google Pixel 9 Pro Fold&nbsp;(1.799 USD).</p>\r\n\r\n<p>Nhiều nguồn tin cho biết Apple sẽ chính thức ra mắt iPhone gập vào&nbsp;năm sau&nbsp;, cùng thời điểm với dòng iPhone 18. Thiết bị này được cho là sẽ có&nbsp;màn hình ngoài 5,5 inch&nbsp;và&nbsp;màn hình gập bên trong 7,8 inch&nbsp;, với&nbsp;tỷ lệ gần 4:3&nbsp;, tối ưu cho trải nghiệm như một chiếc tablet thu gọn. Apple cũng được cho là đang tập trung khắc phục vấn đề&nbsp;nếp gấp&nbsp;– yếu tố gây tranh cãi trên nhiều thiết bị gập hiện nay.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/4/16/iphone-fold-will-have-face-id-embedded-in-the-display-leaker-17447757017682024433984-1744780089471-17447800897468381646.jpeg\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"Hình ảnh concept về một mẫu iPhone gập của Apple\"><img alt=\"Mẫu iPhone gập của Apple sẽ có giá cao hơn Galaxy Z Fold của Samsung- Ảnh 1.\" class=\"lightbox-content\" id=\"img_151507704853573632\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/4/16/iphone-fold-will-have-face-id-embedded-in-the-display-leaker-17447757017682024433984-1744780089471-17447800897468381646.jpeg\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:1500px\" title=\"Mẫu iPhone gập của Apple sẽ có giá cao hơn Galaxy Z Fold của Samsung- Ảnh 1.\" /></a></div>\r\n\r\n<p>Hình ảnh concept về một mẫu iPhone gập của Apple</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chuyên gia phân tích Ming-Chi Kuo từng dự đoán iPhone gập sẽ có giá vượt mốc 2.000 USD. Giờ đây, mức giá cụ thể hơn do Instant Digital đưa ra cho thấy Apple đang tính toán để không tạo ra khoảng cách quá lớn so với đối thủ, nhưng vẫn duy trì&nbsp;biên lợi nhuận cao đặc trưng&nbsp;của iPhone.</p>\r\n\r\n<p>Dù thuộc phân khúc cao cấp nhất trên thị trường, mức giá này không quá bất ngờ nếu xét đến các tham vọng của Apple: cải thiện trải nghiệm phần mềm trên màn hình lớn, nâng cấp chất lượng phần cứng, và thiết kế bản lề tinh xảo hơn. Việc sản xuất ban đầu cũng được dự đoán sẽ&nbsp;không ồ ạt&nbsp;, do tính chất thử nghiệm và độ phức tạp trong dây chuyền.</p>\r\n\r\n<p>Trong khi nhiều thiết bị Android vẫn gặp khó trong việc tối ưu giao diện cho màn hình gập, hệ điều hành iOS từ lâu đã được đánh giá cao ở khả năng xử lý tốt các màn hình cỡ lớn. Vì vậy, một chiếc iPhone gập hứa hẹn sẽ là lựa chọn hấp dẫn cho người dùng đã chờ đợi nhiều năm, dù sẽ phải trả giá cao để sở hữu. Mọi tín hiệu hiện tại đều cho thấy Apple sẽ trình làng thiết bị này trong năm 2026.</p>', 'pxxUm_Screenshot 2025-04-16 155453.png', 9, 1, 0, 'mau-iphone-gap-cua-apple-se-co-gia-cao-hon-galaxy-z-fold-cua-samsung', 1, 1, '2025-04-16 01:55:00', '2025-04-16 07:25:54'),
(4, 'Apple ra mắt loạt cáp sạc mới: Thiết kế chống gãy gập và chống rối, đã qua thử nghiệm \"hàng ngàn giờ\", đủ chuẩn từ USB-C, Lightning đến USB-A', 'Loạt cáp sạc này đã chính thức được mở bán từ ngày hôm nay.', '<p>Như những đồn đoán trước đó, thương hiệu Beats thuộc sở hữu của Apple vừa chính thức gia nhập một lĩnh vực phụ kiện mới: dây sạc. Đây là lần đầu tiên Beats phát hành dòng sản phẩm&nbsp;dây sạc tăng cường độ bền&nbsp;, với&nbsp;nhiều lựa chọn chiều dài, màu sắc và cổng kết nối&nbsp;, giá bán khởi điểm từ&nbsp;18,99 USD/cáp&nbsp;và đã mở bán từ hôm nay.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/4/16/beats-cables0002-1744776689338633415874-1744780151916-1744780152106514549773.jpeg\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"Apple ra mắt loạt cáp sạc mới: Thiết kế chống gãy gập và chống rối, đã qua thử nghiệm &quot;hàng ngàn giờ&quot;, đủ chuẩn từ USB-C, Lightning đến USB-A- Ảnh 1.\" class=\"lightbox-content\" id=\"img_151509782204264448\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/4/16/beats-cables0002-1744776689338633415874-1744780151916-1744780152106514549773.jpeg\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:2560px\" title=\"Apple ra mắt loạt cáp sạc mới: Thiết kế chống gãy gập và chống rối, đã qua thử nghiệm &quot;hàng ngàn giờ&quot;, đủ chuẩn từ USB-C, Lightning đến USB-A- Ảnh 1.\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dòng dây sạc mới của Beats bao gồm các phiên bản:</p>\r\n\r\n<div class=\"VCSortableInPreviewMode alignCenter\" id=\"ObjectBoxContent_1744776359038\" style=\"margin: 0px auto 15px; padding: 10px; border: 1px solid rgb(242, 209, 170); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; outline: 0px; flex-direction: column; position: relative; transition: 0.3s ease-in-out; width: 640px; visibility: visible; overflow-wrap: break-word; cursor: default; max-width: 100%; background-color: rgb(255, 251, 242);\">\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<p><strong>USB-C to USB-C&nbsp;</strong>(1,5 mét): có các màu Bolt Black, Surge Stone, Nitro Navy, Rapid Red.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USB-A to USB-C&nbsp;</strong>(1,5 mét): các màu Bolt Black, Surge Stone, Rapid Red (&nbsp;<strong>màu Rapid Red sẽ bán vào mùa hè&nbsp;</strong>).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USB-C to Lightning&nbsp;</strong>(1,5 mét): Bolt Black, Surge Stone, Rapid Red (&nbsp;<strong>Rapid Red cũng sẽ có vào mùa hè&nbsp;</strong>).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gói đôi 2 dây 1,5 mét&nbsp;</strong>: USB-C to USB-C và USB-A to USB-C, chỉ có màu Bolt Black.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phiên bản ngắn 20 cm&nbsp;</strong>: đủ các loại cổng với màu Bolt Black.</p>\r\n</div>\r\n</div>', 'eaRnA_Screenshot 2025-04-16 155554.png', 11, 1, 1, 'apple-ra-mat-loat-cap-sac-moi-thiet-ke-chong-gay-gap-va-chong-roi-da-qua-thu-nghiem-hang-ngan-gio-du-chuan-tu-usb-c-lightning-den-usb-a', 1, 1, '2025-04-16 01:56:01', '2025-04-16 08:47:26'),
(5, 'OpenAI mở miễn phí tính năng tạo ảnh AI của ChatGPT: Ai cũng có thể \"đu trend\" Studio Ghibli mà không tốn xu nào!', 'CEO OpenAI Sam Altman cho biết tính năng tạo ảnh của ChatGPT đã có 1 triệu người dùng chỉ trong 1 giờ.', '<p>OpenAI vừa chính thức triển khai tính năng tạo ảnh AI trong ChatGPT cho toàn bộ người dùng miễn phí. Thông tin được Giám đốc điều hành Sam Altman xác nhận trong một bài đăng trên mạng xã hội X (trước đây là Twitter).&nbsp;<em>“Tính năng tạo ảnh trong ChatGPT giờ đã khả dụng cho toàn bộ người dùng miễn phí!”&nbsp;</em>, Altman viết.</p>\r\n\r\n<p>Altman tiết lộ rằng tính năng này đã thu hút tới một triệu người dùng mới chỉ trong vòng một giờ sau khi mở cho tài khoản miễn phí.&nbsp;<em>“Khi ChatGPT ra mắt cách đây 26 tháng, đó là một trong những khoảnh khắc lan truyền điên rồ nhất mà tôi từng chứng kiến — và chúng tôi đạt được một triệu người dùng sau năm ngày. Lần này, chúng tôi có một triệu người dùng chỉ trong một giờ,”&nbsp;</em>ông viết trên mạng xã hội.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/4/1/screenshot-2025-04-01-at-132501-1743488715568288466570-1743491972862-17434919729391329545622.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"OpenAI mở miễn phí tính năng tạo ảnh AI của ChatGPT: Ai cũng có thể \" class=\"lightbox-content\" id=\"img_148808696440049664\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/4/1/screenshot-2025-04-01-at-132501-1743488715568288466570-1743491972862-17434919729391329545622.png\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:884px\" title=\"OpenAI mở miễn phí tính năng tạo ảnh AI của ChatGPT: Ai cũng có thể \" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tính năng tạo ảnh — cho phép người dùng tạo ra hình ảnh tuyệt đẹp ngay trong ChatGPT — ban đầu chỉ dành riêng cho người dùng trả phí thuộc các gói ChatGPT Plus, Pro và Team. Tuy nhiên, sau khi ra mắt thành công và nhận được sự hưởng ứng mạnh mẽ từ cộng đồng trả phí, OpenAI đã quyết định mở rộng tính năng này đến nhóm người dùng miễn phí. Quá trình triển khai bắt đầu từ ngày 29/3, và đến ngày 1/4, toàn bộ người dùng miễn phí đều đã có thể sử dụng.</p>\r\n\r\n<div class=\"pushed\" id=\"admzone480457\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: \">\r\n<div class=\"pushed\" id=\"zone-480457\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"share-jny27esn\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"placement-khfx0ec7\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"banner-480457-khfx0ecl\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px; min-height: 0px; min-width: 0px;\">\r\n<div id=\"slot-1-480457-khfx0ecl\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"ssppagebid_8045\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>Công cụ tạo ảnh, được vận hành bởi mô hình GPT-4o của OpenAI, gây ấn tượng mạnh nhờ khả năng tạo ra những hình ảnh theo phong cách Studio Ghibli cũng như nhiều phong cách nghệ thuật khác. Các nền tảng mạng xã hội đã tràn ngập những hình ảnh lấy cảm hứng từ anime, khi người dùng đua nhau thử nghiệm sức mạnh của công cụ này.</p>', 'oFNm3_Screenshot 2025-04-16 155715.png', 2, 1, 1, 'openai-mo-mien-phi-tinh-nang-tao-anh-ai-cua-chatgpt-ai-cung-co-the-du-trend-studio-ghibli-ma-khong-ton-xu-nao', 2, 0, '2025-04-16 01:57:23', '2025-04-16 07:25:18'),
(6, 'Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do', 'Tạo ảnh phong cách Ghibli đã trở thành xu hướng trong thời gian qua.', '<p>Gần đây, OpenAI đã nâng cấp khả năng tạo ảnh của ChatGPT với mô hình hình ảnh mới mang tên&nbsp;GPT-4o image-generation&nbsp;, cho phép không chỉ tạo ảnh từ mô tả văn bản mà còn&nbsp;chỉnh sửa ảnh có sẵn dựa trên yêu cầu bằng lời&nbsp;. Một tính năng đặc biệt được bổ sung là khả năng biến ảnh thật thành&nbsp;tranh vẽ phong cách Ghibli&nbsp;– phong cách hoạt hình đặc trưng đến từ Studio Ghibli (Nhật Bản).</p>\r\n\r\n<p>Ngay lập tức, trào lưu \"Ghibli hóa\" chân dung cá nhân lan truyền mạnh mẽ trên mạng xã hội. Chỉ với một bức ảnh selfie và yêu cầu đơn giản như&nbsp;<strong>\"make it a Ghibli-style photo\"&nbsp;</strong>hay&nbsp;<strong>\"make it Ghibli art\"&nbsp;</strong>, người dùng có thể nhận về những bức tranh cực kỳ dễ thương.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132658-17434024825861102089677-1743405661550-1743405661766830192764.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 1.\" class=\"lightbox-content\" id=\"img_148627853338238976\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132658-17434024825861102089677-1743405661550-1743405661766830192764.png\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:702px\" title=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 1.\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy nhiên, không phải ai cũng suôn sẻ. Nhiều người nhận được thông báo như&nbsp;<strong>\"I wasn\'t able to generate the image because the request didn\'t follow our content policy\" (&nbsp;</strong>Tôi không thể tạo ảnh vì yêu cầu không tuân thủ chính sách nội dung của chúng tôi) dù không vi phạm chính sách nào. Thậm chí, hệ thống đôi khi trả lại một hình ảnh hoàn toàn khác với ảnh gốc.</p>\r\n\r\n<div class=\"pushed\" id=\"admzone480457\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; outline: 0px; color: rgb(34, 34, 34);\">\r\n<div class=\"pushed\" id=\"zone-480457\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"share-jny27esn\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"placement-khfx0ec7\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"banner-480457-khfx0ecl\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px; min-height: 0px; min-width: 0px;\">\r\n<div id=\"slot-1-480457-khfx0ecl\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div id=\"ssppagebid_8045\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">\r\n<div class=\"banner0\" id=\"adnzone_518666\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px; clear: both; height: 380px;\">\r\n<div id=\"adnzone_518666_0_100542_div\" style=\"margin: 0px auto; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px; position: fixed; width: 580px; height: 380px; max-width: 580px; bottom: 0px; opacity: 0;\"><iframe align=\"top\" frameborder=\"0\" height=\"360\" id=\"adnzone_518666_0_100542\" name=\"adnzone_518666_0_100542\" scrolling=\"No\" style=\"margin: 0px; padding: 0px; border-width: initial; border-style: none; font: inherit; vertical-align: baseline; max-width: 100%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 380px;\" width=\"640\"></iframe></div>\r\n\r\n<div id=\"ads_top_bottom\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">&nbsp;</div>\r\n\r\n<div id=\"ads_top_bottom\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132530-17434023394821319793021-1743405662599-1743405662790187671838.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(0, 0, 255); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 2.\" class=\"lightbox-content\" id=\"img_148627552813731840\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132530-17434023394821319793021-1743405662599-1743405662790187671838.png\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:805px\" title=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 2.\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132439-1743402295516683311112-1743405663545-17434056687771907177350.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 3.\" class=\"lightbox-content\" id=\"img_148627461268852736\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132439-1743402295516683311112-1743405663545-17434056687771907177350.png\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:789px\" title=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 3.\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lý do chính là&nbsp;lượng người dùng tăng đột biến khiến máy chủ quá tải&nbsp;. CEO Sam Altman thừa nhận:&nbsp;<strong>\"Chúng tôi đang từ chối một số yêu cầu đáng ra phải được chấp nhận. Đội ngũ đang cố gắng khắc phục điều này nhanh nhất có thể.\"&nbsp;</strong>Dự kiến ban đầu, tính năng này sẽ mở cho cả người dùng gói miễn phí và trả phí (Plus, Pro, Team), nhưng vì nhu cầu quá lớn, OpenAI buộc phải&nbsp;áp dụng giới hạn số lượt sử dụng mỗi ngày&nbsp;.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: 0px;\"><a class=\"detail-img-lightbox\" href=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132216-17434021783291009762273-1743405669753-1743405669936690680937.png\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-decoration-line: none; color: rgb(84, 84, 84); cursor: zoom-in; display: block; outline: 0px !important;\" target=\"_blank\" title=\"\"><img alt=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 4.\" class=\"lightbox-content\" id=\"img_148627214906576896\" src=\"https://genk.mediacdn.vn/139269124445442048/2025/3/31/screen-shot-2025-03-31-at-132216-17434021783291009762273-1743405669753-1743405669936690680937.png\" style=\"border:0px; display:inline-block; font:inherit; height:auto; margin:0px auto; max-width:100%; padding:0px; vertical-align:top; width:734px\" title=\"Người dùng khó khăn trong việc tạo ảnh phong cách Ghibli bằng ChatGPT - Đây là lý do- Ảnh 4.\" /></a></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tính đến thời điểm viết bài, người dùng miễn phí&nbsp;chỉ có thể tạo tối đa 3 ảnh Ghibli mỗi ngày&nbsp;. Ngoài ra,&nbsp;thời gian xử lý lâu hơn đáng kể&nbsp;so với ảnh tạo từ mô tả văn bản thuần túy, cho thấy đây là một tác vụ nặng về tài nguyên. Sam Altman đùa rằng&nbsp;<strong>\"GPU của chúng tôi đang nóng chảy.\"</strong></p>', '5oBI6_Screenshot 2025-04-16 164539.png', 0, 1, 1, 'nguoi-dung-kho-khan-trong-viec-tao-anh-phong-cach-ghibli-bang-chatgpt-day-la-ly-do', 2, 1, '2025-04-16 02:45:48', '2025-04-16 02:45:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'hue', 'hue@gmail.com', '$2y$10$eH95.fvsco4bTWZSjQ.YruYBL4F.wYef/uVX51vjQ1/TIUN/P2SQe', 1, NULL, '2025-04-16 02:13:41'),
(2, 'hue2', 'hangdo50984@gmail.com', '$2y$10$uAnSwXC8AeD2waqhsrj2F.nla4WsWDAgkrn5gGcJVKfUYLtzhm7km', 1, '2025-04-15 21:40:39', '2025-04-15 21:40:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
