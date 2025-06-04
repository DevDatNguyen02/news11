-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2025 lúc 01:20 AM
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
-- Cơ sở dữ liệu: `news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `linkfb` varchar(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `linkcopyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `logo`, `phone`, `email`, `address`, `linkfb`, `copyright`, `linkcopyright`, `created_at`, `updated_at`) VALUES
(1, 'logo_nghieng.png', '0123456789', 'darkmagician202@gmail.com', '55 Giai Phong street, Hai Ba Trung, Ha Noi', 'facebook.com', 'copyright', 'link copyright', NULL, '2025-06-01 15:46:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Diql-8cd35-banner_tintuc.png', 0, '2025-03-28 01:56:57', '2025-04-17 20:47:54'),
(11, 'IMG_9655.JPG', 0, NULL, NULL),
(14, '1748925286_gZLd02IO.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Đời Sống', 'doi-song', 1, '2022-03-28 01:57:32', '2025-06-01 10:50:23'),
(2, 'Thể thao', 'the-thao', 1, '2022-03-28 03:22:14', '2022-03-28 03:22:14'),
(3, 'Giải trí', 'giai-tri', 1, '2022-03-28 03:53:41', '2022-03-28 03:53:41'),
(4, 'Du lịch', 'du-lich', 1, '2022-03-28 03:53:55', '2022-03-28 03:53:55'),
(5, 'Xe cộ', 'xe-co', 1, '2022-03-28 03:54:31', '2022-03-28 03:54:31'),
(6, 'Khoa Học Công Nghệ', 'khoa-hoc-cong-nghe', 1, '2022-03-28 03:54:46', '2025-06-01 10:52:29'),
(7, 'Thời sự', 'thoi-su', 1, '2022-03-28 03:55:40', '2022-03-28 03:55:40'),
(9, 'Thế Giới', 'the-gioi', 1, '2025-06-01 10:51:41', '2025-06-01 10:51:41'),
(10, 'Kinh Doanh', 'kinh-doanh', 1, '2025-06-01 10:51:59', '2025-06-01 10:51:59'),
(11, 'Pháp Luật', 'phap-luat', 1, '2025-06-01 10:53:34', '2025-06-01 10:53:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `news_id`, `active`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Bài viết hay', '2022-03-28 02:19:06', '2022-03-28 02:19:06'),
(3, 1, 15, 1, 'như shit', '2025-04-30 06:56:35', '2025-04-30 06:56:35'),
(4, 1, 10, 1, 'hoang', '2025-05-15 21:03:15', '2025-05-15 21:03:15'),
(5, 1, 5, 1, 'jjjj', '2025-05-15 22:26:06', '2025-05-15 22:26:06'),
(6, 8, 7, 1, 'Nước mắt anh rời, trò chơi kết thúc', '2025-05-16 22:18:19', '2025-05-16 22:18:19'),
(7, 1, 23, 1, 'Nobody The Turn Around', '2025-05-17 01:03:49', '2025-05-17 01:03:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_25_002417_create_banners_table', 1),
(6, '2021_05_25_002437_create_categories_table', 1),
(7, '2021_05_25_002503_create_subcategories_table', 1),
(8, '2021_05_25_002519_create_news_table', 1),
(9, '2021_05_25_002536_create_comments_table', 1),
(10, '2021_05_25_002553_create_pages_table', 1),
(11, '2021_06_19_050917_create_abouts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort_title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL,
  `index` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `sort_title`, `image`, `type`, `link`, `summary`, `content`, `index`, `view`, `category_id`, `subcategory_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng', 'mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang', 'ft7z-3.jpg', 1, NULL, 'Sự việc một chiếc Mercedes ở Quảng Ninh tông vào nhà dân rồi gây tai nạn liên hoàn khiến một người tử vong đang gây xôn xao cộng đồng mạng.  Chiều 27/3, một vụ tai nạn nghiêm trọng xảy ra ở đường Nguyễn Du, TP.Móng Cái, tỉnh Quảng Ninh khiến đã gây xôn xao dư luận. Hình ảnh từ những đoạn clip mà người dân quay lại cho thấy, xe sang Mercedes đã lao vào một nhà dân, sau đó tìm cách lùi ngược ra ngoài rồi phóng đi. Trên đường đi, “xe điên” này đã đâm tử vong một người đi xe máy.', '<p>Trên mạng <a href=\"https://vietgiaitri.com/xa-hoi/\"><strong>xã hội</strong></a>, đoạn clip xe Mercedes GLS loạng choạng lùi từ trong nhà ra đường đang khiến mạng xã hội xôn xao. Cụ thể, chiếc Mercedes GLS tiến vào bên trong rồi lùi lại húc vỡ cả mảng tường nhà. Sau khi cố lùi tiếp, chiếc xe lại đâm vào một gốc cây trước cửa. Không dừng lại, người tài xế tiếp tục tiến lùi để thoát ra ngoài, kéo theo tấm kính vỡ tan tành xuống mặt đường.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-3e0-6376700.gif\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 1\"></figure><p>Sau khi “làm loạn” trong ngôi nhà nói trên, chiếc xe phóng tốc độ nhanh theo hướng về phía đường Trần Phú, đâm vào xe máy biển Quảng Ninh đi cùng chiều làm bà N.T.V. (56 tuổi) tử vong tại chỗ. Không dừng lại, ô tô này vẫn tiếp tục lao đi và đâm vào một người đi xe máy Honda Vision màu trắng khác khiến người này bị thương. Cuối cùng, lái xe tông gãy lan can cầu Hòa Bình rồi lao xuống ruộng.</p><p>Sau vụ tai nạn, chiếc ô tô bị hư hỏng nặng phần đầu, thành xe bị móp và có nhiều vết xước. Đặc biệt tại hiện trường, tình trạng thương tâm của nạn nhân khiến nhiều người không khỏi kinh hãi.</p><p>Theo người dân, sau khi gây tai nạn, chiếc Mercedes tiếp tục bỏ chạy và dừng lại tại bãi đất trống ven đường. Lái xe được đưa đi cấp cứu tại bệnh viện trong tình trạng bị chấn thương vùng mặt.</p><p>Mới đây, trên mạng xã hội xuất hiện thêm một đoạn clip được cho cũng là của vụ việc nói trên do camera nhà dân ghi lại. Trong clip, một chiếc ô tô màu đen lao như bay trên đoạn đường rồi va chạm rất mạnh với một xe máy. Thời gian ghi trong camera là 16h23 phút ngày 27/3, trùng thời điểm “xe điên” Mercedes “làm loạn” đường phố Quảng Ninh.</p><p>Có thể nói, những ai đã xem đoạn clip ghi lại cảnh “xe điên” Mercedes ở Móng Cái, Quảng Ninh có lẽ đều nhớ cảnh sau khi lùi ra được khỏi nhà dân, chiếc xe lao vun vút ra đường, suýt đâm vào một chiếc ô tô màu trắng. May mắn, chiếc ô tô này đã đánh hết lái, rẽ nhanh sang bên trái để tránh được va chạm.</p><p>Liên hệ với anh Nguyễn Mạnh Thắng (SN 1987, quê ở huyện Tiên Yên, tỉnh Quảng Ninh), là người điều khiển xe ô tô màu trắng suýt bị “xe điên” Mercedes đâm trúng, anh cho biết mình đã may mắn khi được an toàn trở về nhà với gia đình.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-37f-6376700.jpg\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 3\"></figure><p>Nhớ lại diễn biến lúc đó, anh Thắng kể: “Tôi làm nghề lái xe Hà Nội – Móng Cái được 9 năm rồi. Chiều qua tôi đi trả khách qua đó thì thấy chiếc Mercedes đã lao vào nhà. Trả khách xong quay lại thấy xe đó vẫn không lùi ra được nên tôi dừng lại định giúp đỡ, vì cứ nghĩ tài xế chắc là con gái mới tập lái.</p><p>Nhưng khi nhìn vào bên trong xe, thấy tài xế là nam giới, xe thì cứ tiến rồi lại lùi mạnh, đổ cả tường, tôi phi ra nổ máy xe bỏ chạy, đồng thời hô mọi người: “Chạy đi, xe lùi được ra ngoài là nó đâm liên hoàn đấy”.</p><p>Tôi vừa nổ máy thì cũng là lúc chiếc xe kia lùi ra được. Thấy xe Mercedes phi nhanh sát đuôi xe, tôi đạp ga bỏ chạy. Nhìn qua gương phụ, tôi thấy đầu xe Mercedes ở làn 1/3 làn bên phải nên nhanh trí vắt nhanh vào bên trái để thoát thân. Tôi rẽ một cái là chiếc xe đó đâm luôn vào cô đi xe máy ngược chiều, phi qua bùng binh cầu Hòa Bình, leo lên lan can, bay lên lùm cây rồi rơi xuống khoảng đất trống”.</p><p>Anh Thắng tâm sự, lúc đó tình huống rất gấp nhưng anh không sợ. Anh Thắng đã nhanh trí chủ động được tình huống. Tuy vậy, anh thấy bản thân vẫn may mắn, vì nếu Mercedes đâm vào, có thể xe của anh sẽ lật.</p><p>“Buồn là nếu xe điên đó đâm vào tôi thì có thể nạn nhân đi xe máy không tử vong. Nhưng nếu đâm vào xe tôi, xe điên mất lái tiếp tục gây tai nạn liên hoàn thì không biết chuyện gì sẽ xảy ra tiếp theo”, anh Thắng nói thêm.</p><figure class=\"image\"><img src=\"https://i.vietgiaitri.com/2022/3/28/mercedes-lao-vao-nha-dan-gay-tai-nan-thuong-tam-nguoi-suyt-bi-tong-ke-lai-giay-phut-kinh-hoang-646-6376700.jpg\" alt=\"Mercedes lao vào nhà dân gây tai nạn thương tâm, người suýt bị tông kể lại giây phút kinh hoàng - Hình 4\"></figure><p><br>&nbsp;</p>', 1, 0, 1, 1, 8, 1, '2025-03-28 03:18:24', '2025-06-01 11:04:10'),
(7, 'Cuộc đua top 5 Ngoại hạng Anh \'nóng\' ba vòng cuối', 'cuoc-dua-top-5-ngoai-hang-anh-nong-ba-vong-cuoi', 'LaVs-4904-4531-1648428655.jpg', 1, NULL, 'Dù ngôi vô địch đã được xác định, ba vòng cuối Ngoại hạng Anh vẫn chứng kiến cạnh tranh quyết liệt giữa 6 đội bóng cho suất dự Champions League.', '<p>Hiện tại, ngoài Liverpool đã chắc chắn dẫn đầu, khoảng cách giữa các đội còn lại rất sít sao. Arsenal đang đứng thứ hai với 67 điểm, trong khi đội xếp thứ bảy là Aston Villa có 60 điểm. Trong ba vòng cuối, các trận đấu trực tiếp giữa nhóm tranh top 5 có thể làm thay đổi đáng kể cục diện bảng xếp hạng.</p><p>Arsenal cần lấy lại tinh thần sau khi bị loại khỏi bán kết Champions League. Họ đang hơn Man City ba điểm nhưng phải gặp Liverpool và Newcastle ở hai trong ba trận cuối, trong khi Man City có lịch thi đấu thuận lợi hơn. Cùng ở nhóm cạnh tranh, Chelsea (63 điểm) sẽ đối đầu trực tiếp Newcastle (63 điểm) và Nottingham Forest (61 điểm), đều là những đội bám sát trên bảng xếp hạng. Sau hai mùa liên tiếp không góp mặt ở Champions League, đội bóng thành London chịu nhiều áp lực phải trở lại giải đấu danh giá này.</p><p>Ngoài các trận đấu của Arsenal, Chelsea hay Man City, chặng cuối mùa còn có nhiều trận mang tính quyết định như Aston Villa - Tottenham (1h30 ngày 17/5), Chelsea - Man Utd (2h15 ngày 17/5), hay Man Utd - Aston Villa (22h00 ngày 25/5). Cả Manchester United và Tottenham dù còn một suất Europa League để tranh vé Champions League, nhưng kết quả các trận họ tham dự vẫn có thể ảnh hưởng lớn đến cuộc đua top 5, tùy vào cách họ sắp xếp đội hình và mục tiêu ưu tiên.</p>', 0, 0, 2, 4, 1, 1, '2025-03-28 03:25:07', '2025-05-15 19:54:21'),
(10, 'KHI GIỌT NƯỚC MẮT CỦA ANTONY ĐỔI LẤY VINH QUANG LỊCH SỬ CHO BETIS', 'khi-giot-nuoc-mat-cua-antony-doi-lay-vinh-quang-lich-su-cho-betis', 'Uha7-antony.jpg', 0, 'https://www.youtube.com/embed/EvGS_Q3bL4s?si=2R7GyZotsb3jIwfp', 'Chủ tịch Real Betis hé lộ tương lai của Antony sau khi ngôi sao mượn từ MU tiếp tục thăng hoa, giúp đội bóng Tây Ban Nha vào chung kết Europa Conference League.', '<p>Antony tiếp tục tỏa sáng rực rỡ, ghi 1 bàn thắng tuyệt đẹp từ chấm đá phạt và kiến tạo cho Abde Ezzalzouli lập công trong hiệp phụ, giúp Betis vượt qua Fiorentina để giành vé vào chung kết Europa Conference League gặp Chelsea. Từ khi cập bến đội chủ sân Villamarin hồi tháng 1, ngôi sao chạy cánh người Brazil đã có 8 bàn thắng và 5 kiến tạo, liên tục được bầu chọn là “Cầu thủ xuất sắc nhất trận” và nhận được sự yêu mến lớn từ người hâm mộ Betis.</p><p>Hiện tại, Antony đang dồn toàn lực để cùng Betis giành danh hiệu Europa Conference League, và tương lai của anh chỉ được định đoạt sau khi mùa giải khép lại. Antony từng được MU chiêu mộ từ Ajax với mức giá 86 triệu bảng nhưng chỉ ghi 12 bàn và có 5 kiến tạo sau 96 trận, trước khi bị đẩy đi theo diện cho mượn sau nhiều chỉ trích.</p><p>Chia sẻ về thời gian thi đấu sa sút tại <a href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">Old Trafford</a>, Antony cho rằng những vấn đề cá nhân đã ảnh hưởng lớn đến phong độ: “Tôi trải qua nhiều chuyện ngoài sân cỏ, điều đó ảnh hưởng không nhỏ. Tôi biết rõ khả năng của bản thân.</p><p>Không phải ngẫu nhiên tôi được gọi dự World Cup hay được bán với giá cao như vậy. Nhưng mọi người chỉ nhìn kết quả, không hiểu chuyện gì đã dẫn đến điều đó. Tôi đã có khoảnh khắc tốt và cả không tốt ở MU, nhưng rõ ràng tôi có thể làm tốt hơn”.</p>', 1, 0, 2, 4, 1, 1, '2025-03-28 03:31:03', '2025-05-15 02:11:01'),
(13, 'Lễ Duyệt binh Nga: Ấn tượng khối Quân đội Việt Nam đi qua lễ đài chính', 'le-duyet-binh-nga-an-tuong-khoi-quan-doi-viet-nam-di-qua-le-dai-chinh', 'Mmjo-russia.jpg', 0, 'https://www.youtube.com/embed/EvGS_Q3bL4s?si=2R7GyZotsb3jIwfp', 'Tại Lễ duyệt binh kỷ niệm 80 năm Chiến thắng ở Quảng trường Đỏ, khối Quân đội nhân dân Việt Nam sải bước qua lễ đài chính. Khối Quân đội Việt Nam đi thứ 8 trong các khối nước tham dự.', '<p>10 giờ sáng 9/5 theo giờ Moscow (tức 14 giờ cùng ngày theo giờ Hà Nội), Liên bang Nga long trọng tổ chức Lễ duyệt binh kỷ niệm 80 năm Ngày Chiến thắng trong Chiến tranh Vệ quốc vĩ đại (9/5/1945-9/5/2025) trên Quảng trường Đỏ.<br>Kể từ chiến thắng năm 1945, Liên bang Nga đã tổ chức 34 cuộc duyệt binh quy mô lớn, trong đó lễ duyệt binh đầu tiên được tổ chức ngày 24/6/1945 với sự góp mặt của khoảng 40.000 Hồng quân và gần 2.000 khí tài quân sự.&nbsp;</p><p>Bắt đầu từ năm 1995, ngày 9/5 chính thức trở thành quốc lễ của Liên bang Nga và được ghi dấu bằng lịch đỏ, với các hoạt động duyệt binh diễn ra thường niên nhằm tưởng nhớ và tri ân những người đã hy sinh vì hòa bình.</p><p>Được tổ chức với quy mô lớn, Lễ duyệt binh trên Quảng trường Đỏ tại Thủ đô Moscow của Nga năm 2025 được coi là điểm nhấn quan trọng trong chuỗi hoạt động kỷ niệm 80 năm Ngày Chiến thắng trong Chiến tranh Vệ quốc vĩ đại.</p>', 1, 0, 7, 20, 8, 1, '2025-05-13 03:47:11', '2025-06-01 11:04:37'),
(16, 'Chiến lược mới phát triển trí tuệ nhân tạo của Trung Quốc', 'chien-luoc-moi-phat-trien-tri-tue-nhan-tao-cua-trung-quoc', 'w3hf-AI.jpg', 0, 'https://www.youtube.com/embed/c6W9j7MPUhQ?si=IqkqPYDljb-8M6iI', 'Trung Quốc đang nhanh chóng phát triển thành một siêu thị trường A.I với việc ứng dụng công nghệ trí tuệ nhân tạo vào nhiều lĩnh vực trong nền kinh tế.', '<p>Trung Quốc đang nhanh chóng phát triển thành một siêu thị trường A.I với việc ứng dụng công nghệ trí tuệ nhân tạo vào nhiều lĩnh vực trong nền kinh tế.</p>', 1, 0, 6, 8, 1, 1, '2025-05-15 02:22:39', '2025-05-15 02:22:39'),
(17, 'Đón Tết Thiếu nhi 1/6 trên độ cao 10.000 mét cùng Vietjet', 'don-tet-thieu-nhi-1-6-tren-do-cao-10-000-met-cung-vietjet', 'j4PE-1111111.jpeg', 1, NULL, 'Vietjet dành tặng các hành khách nhí sticker, bộ đồ chơi, gấu bông khi tham gia minigame trên chuyến bay đặc biệt ngày Quốc tế Thiếu nhi 1/6.', '<p>Vietjet dành tặng các hành khách nhí sticker, bộ đồ chơi, gấu bông khi tham gia minigame trên chuyến bay đặc biệt ngày Quốc tế Thiếu nhi 1/6.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/1-1748781064.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5_5aSwldCVry3YYjnUejSA\" alt=\"\"></figure><p>Trong các chuyến bay nhân ngày Quốc tế Thiếu nhi 1/6, Vietjet dành tặng các hành khách nhỏ tuổi những lời chúc tốt đẹp và nhiều phần quà bất ngờ</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/3-1748781107.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=JkIXyqsTFg2_J0r3IhPlRg\" alt=\"\"></figure><p>Các bé được các cô chú tiếp viên hàng không Vietjet hướng dẫn tìm hiểu những kiến thức cơ bản về an toàn bay, sau đó tham gia trò chơi đố vui có thưởng.</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/2-1748781126.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=2u-x5ihzKuKr9E2kitQ0BQ\" alt=\"\"></figure><p>Phi hành đoàn Vietjet còn chuẩn bị huy chương và chứng nhận \"Chiến binh dũng cảm\" cho các bé như món quà kỷ niệm.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/4-1748781146.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PPDFdtiaOHChuGLq-WdUVg\" alt=\"\"></figure><p>Đi kèm còn có các phần quà đáng yêu là bộ mô hình, máy bay, gấu bông Amy, bộ hình dán sticker...</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/8-1748781161.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=eVAmjvSQG0UtvFNB1eJlLQ\" alt=\"\"></figure><p>Ngoài tham gia minigame, các hành khách nhí còn được thưởng thức những món ăn nóng tươi ngon cùng ba mẹ, bạn bè.</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/5-1748781174.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=OXuOlalXTS9rWRfkFgIVpA\" alt=\"\"></figure><p>Theo Vietjet, những kỷ niệm đáng nhớ khi bay sẽ góp phần nuôi dưỡng ước mơ, tình yêu với bầu trời cho các bé. Tất cả tạo nên bầu không khí đặc biệt trên độ cao 10.000 m.</p><p>Hành khách Thùy Anh (35 tuổi, Hà Nội) cho biết rất bất ngờ khi Vietjet cho các bạn nhỏ trải nghiệm ngày quốc tế thiếu nhi trên không. \"Tôi tin đây sẽ là kỷ niệm đồng hành cùng năm tháng của các bé. Cháu nhà tôi rất thích các cô chú tiếp viên hàng không và ước mơ được làm nghề này khi lớn lên\", chị nói thêm.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/6-1748781191.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=0tCNZSIaSw0tKVW3K4kOZw\" alt=\"\"></figure><p>Hãng hàng không kỳ vọng với các hoạt động thế này, những chuyến bay mùa hè sẽ là hành trình di chuyển đáng nhớ, giúp các gia đình gắn kết yêu thương, chia sẻ những khoảnh khắc kỷ niệm bên nhau.</p><figure class=\"image\"><img src=\"https://i1-giadinh.vnecdn.net/2025/06/01/7-1748781201.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ie-wkOxehk3vDWKyLO77_A\" alt=\"\"></figure><p>Với tinh thần phục vụ tận tâm, mong muốn lan tỏa niềm vui đến mọi hành khách, Vietjet cho biết luôn cam kết đồng hành trên từng chuyến đi để mỗi hành trình là trải nghiệm nhiều cảm xúc, yêu thương của các hành khách nhỏ tuổi</p><p><strong>Đan Minh</strong><br>Ảnh: <strong>Đức Minh</strong></p>', 1, 0, 1, 1, 8, 1, '2025-05-15 19:57:24', '2025-06-01 11:08:30'),
(18, 'Hoa khôi Đại học Thương mại vào chung kết Hoa hậu Việt Nam', 'hoa-khoi-dai-hoc-thuong-mai-vao-chung-ket-hoa-hau-viet-nam', '9CTj-Tran-Minh-Thu-tai-Hoa-hau-Vietnam-27-1748589549.jpeg', 0, 'https://www.youtube.com/embed/2M13nIVkTcg?si=WLMf5WFpClVObq4b', 'Trần Minh Thu, 20 tuổi, có gương mặt ưa nhìn, chiều cao 1,75 m nổi bật tại Hoa hậu Việt Nam 2024.', '<p>Trần Minh Thu, 20 tuổi, có gương mặt ưa nhìn, chiều cao 1,75 m nổi bật tại Hoa hậu Việt Nam 2024.</p><p>&nbsp;</p><p><a href=\"https://vnexpress.net/hoa-khoi-dai-hoc-thuong-mai-vao-chung-ket-hoa-hau-viet-nam-4892495.html#box_comment_vne\">6</a></p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-222-1748589476.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BSfULJEEzq7Xb9-gKfFCyQ\" alt=\"\"></figure><p>Cô sẽ cùng 24 thí sinh bước vào chung kết, ngày 14/6 ở Thừa Thiên Huế. Minh Thu nằm trong nhóm ứng viên được nhiều khán giả dự đoán đi sâu. \"Tôi vỡ òa khi được gọi tên đi tiếp vào vòng trong. Chặng đường tại cuộc thi cho tôi nhiều trải nghiệm, tình bạn đẹp\", Minh Thu nói.<br><br>Minh Thu trình diễn tại vòng chung khảo, ngày 20/4 ở Hà Nội.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-27-1748589549.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=V2Ki_rj8ouNcjyqGy54m8g\" alt=\"\"></figure><p>Cô sinh năm 2005, quê Kon Tum, hiện là sinh viên chuyên ngành Marketing thương mại. Minh Thu có hình thể cân đối với số đo ba vòng lần lượt là 83-63-94 cm.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-31-1748589613.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=fzVPC_RrikEMn7u0lOSYUw\" alt=\"\"></figure><p>Thí sinh được nhiều người khen gương mặt khả ái, nụ cười sáng. Cô thường tập bơi, gym, kết hợp chế độ ăn uống lành mạnh để giữ hình thể.</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-3-1748589381.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=QsZshBSxVaye1xqT1SLONw\" alt=\"\"></figure><p>Người đẹp đoạt danh hiệu Hoa khôi Đại học Thương mại 2024, từng làm đại sứ của các chương trình dành cho sinh viên. Trước đó, Minh Thu là học sinh giỏi 12 năm liền của lớp chuyên Toán, THPT Nguyễn Tất Thành (Kon Tum).</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-15-1748589559.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Ofj2KrZ00Nc78KTlH6OvdA\" alt=\"\"></figure><p>Giám khảo nhận xét cô catwalk tự tin do có kinh nghiệm làm người mẫu trên sàn runway.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-1-1748589626.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Sp2xCOlwk25ZGl31jzx2mg\" alt=\"\"></figure><p>Tại cuộc thi, Minh Thu từng nhiều lần giới thiệu văn hóa Tây Nguyên tới bạn bè.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://iv1.vnecdn.net/giaitri/images/web/2025/05/30/minh-thu-chuan-bi-cho-mot-hoat-dong-tai-cuoc-thi-1748591146.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DR9x-szplYwRD963xILphw\" alt=\"Minh Thu chuẩn bị cho một hoạt động tại cuộc thi\"></figure><p>&nbsp;</p><p><br><br>Người đẹp chuẩn bị trang phục cho một hoạt động tại cuộc thi hồi tháng 4.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-7-1748589805.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sHCKwTwx3yCty6s0kk65TA\" alt=\"\"></figure><p>Khi học tập ở Hà Nội, Minh Thu làm nhiều công việc bán thời gian để có tiền trang trải sinh hoạt. \"Tôi thường lên lớp vào ban ngày, tối đi làm thêm, có lúc chạy xe máy hơn 30 cây số mỗi ngày. Nhờ các trải nghiệm, tôi rèn tính tự lập, trưởng thành hơn\", người đẹp nói.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-14-1748589880.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E34rxMgy71GJ_cIRYwIqWg\" alt=\"\"></figure><p>Cô yêu thích các hoạt động thiện nguyện, đang thực hiện dự án nhân ái <i>Góp gạch xây trường, trao ngàn con chữ, </i>nhằm hỗ trợ trẻ em vùng khó khăn.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://iv1.vnecdn.net/giaitri/images/web/2025/05/30/minh-thu-xuc-dong-noi-ve-gia-dinh-tai-hoa-hau-viet-nam-1748591832.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xpFphwCyNK6nGr1x97JSpA\" alt=\"Minh Thu xúc động nói về gia đình tại Hoa hậu Việt Nam\"></figure><p>&nbsp;</p><p><br><br>Thí sinh xúc động nói về tình cảm gia đình tại tập 1 vòng truyền hình thực tế.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-2-1748590059.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=4j5y_cqOoK-7tTup7xwcZg\" alt=\"\"></figure><p>Nhan sắc đời thường của Minh Thu.</p><p>Minh Thu nói tự hào khi có bố là bộ đội biên phòng. Cô học hỏi tính kỷ luật, quyết tâm trong mọi việc từ bố. Khi quyết định thử sức tại sân chơi nhan sắc lớn, cô vui vì được mọi người ủng hộ.</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://iv1.vnecdn.net/giaitri/images/web/2025/05/30/ve-nang-dong-cua-thi-sinh-minh-thu-o-hoa-hau-viet-nam-2024-1748590941.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Nsv1scY-c6ocE44I413pyA\" alt=\"Vẻ năng động của thí sinh Minh Thu ở Hoa hậu Việt Nam 2024\"></figure><p>&nbsp;</p><p><br><br>Vẻ năng động của Minh Thu ở hậu trường cuộc thi.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/30/Tran-Minh-Thu-tai-Hoa-hau-Vietnam-9-1748590100.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=neXGZrdG8vxxdylkYYd36Q\" alt=\"\"></figure><p>Tương lai, Minh Thu muốn trở thành Quản lý tiếp thị thương mại cho một thương hiệu thời trang hoặc mỹ phẩm.</p><p>Hoa hậu Việt Nam là cuộc thi sắc đẹp do báo <i>Tiền Phong </i>khởi xướng, tổ chức lần đầu năm 1988 với tên Hoa hậu Hội Báo Tiền Phong. Người đầu tiên giữ vương miện là Bùi Bích Phương, quê Hà Nội.</p><p>Cuộc thi tổ chức thường niên hai năm một lần, và mùa thi thứ 19 khởi động từ cuối năm 2024. Sau chung khảo, ban tổ chức chọn top 25 bước tiếp vào vòng trong. Hoa hậu <a href=\"https://vnexpress.net/chu-de/hoa-hau-huynh-thi-thanh-thuy-5884\">Huỳnh Thị Thanh Thủy</a> sẽ trao vương miện cho người kế nhiệm tại chung kết.</p><p><strong>Tân Cao</strong><br>Ảnh, video: <i>Nhân vật và Ban tổ chức cung cấp</i></p>', 1, 0, 3, 9, 8, 1, '2025-05-15 20:02:27', '2025-06-01 11:15:33'),
(19, 'Nhan sắc Suzy khiến phim \'Doona!\' vẫn hot bất chấp tranh cãi', 'nhan-sac-suzy-khien-phim-doona-van-hot-bat-chap-tranh-cai', 'w7mF-phimdoonasuzyhotdutranhcai5-1698059295749614825343.jpeg', 1, NULL, 'Phim \'Doona!\' do Suzy và Yang Se Jong đóng vai chính thu hút nhiều phản hồi trái chiều. Tác phẩm nhanh chóng nằm trong top phim hot sau khi ra mắt được 3 ngày.', '<h2><strong>Phim \'Doona!\' do Suzy và Yang Se Jong đóng vai chính thu hút nhiều phản hồi trái chiều. Tác phẩm nhanh chóng nằm trong top phim hot sau khi ra mắt được 3 ngày.</strong></h2><figure class=\"image\"><img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai5-1698059295749614825343.jpg\" alt=\"Phim \'Doona!\' có Suzy vẫn hot bất chấp tranh cãi - Ảnh 1.\" srcset=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai5-1698059295749614825343.jpg 1x,https://images2.thanhnien.vn/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai5-1698059295749614825343.jpg 2x\" sizes=\"100vw\" width=\"1500\"></figure><p>Trong <i>Doona!,</i> Suzy thể hiện vai một nữ thần tượng Kpop<br>&nbsp;</p><p>INSTAGRAM NV</p><p>Hôm 20.10, 9 tập phim <a href=\"https://thanhnien.vn/doona.html\"><i>Doona!</i></a> chính thức lên sóng trên Netflix. Dựa trên webtoon (truyện tranh mạng) <i>The Girl Downstairs</i>, bộ phim kể về mối quan hệ lãng mạn giữa nữ thần tượng Kpop đã \"về vườn\" Doona (<a href=\"https://thanhnien.vn/suzy.html\">Suzy</a> đóng) và nam sinh viên đại học Won Jun (Yang Se Jong).<br>&nbsp;</p><p>Sau khi bất ngờ giã từ sự nghiệp ca sĩ thần tượng đang trên đỉnh cao cũng như rời khỏi nhóm Dream Sweet, Doona quyết định tới sống trong một căn nhà chung ở gần khu trường đại học. Tại đây, cô cố gắng vượt qua những ám ảnh tâm lý của mình. Trong khi đó, Won Jun là một sinh viên chỉ biết tập trung học tập và làm thêm, thậm chí anh còn không nhận ra Doona từng là một ngôi sao nổi tiếng.</p><figure class=\"image\"><img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai3-1698059295599550967481.jpg\" alt=\"Phim \'Doona!\' có Suzy vẫn hot bất chấp tranh cãi - Ảnh 2.\" srcset=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai3-1698059295599550967481.jpg 1x,https://images2.thanhnien.vn/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai3-1698059295599550967481.jpg 2x\" sizes=\"100vw\" width=\"1500\"></figure><p>Nữ ca sĩ, diễn viên đẹp rạng rỡ trên màn ảnh</p><p>POSTER PHIM</p><p>Hai con người ở hai thế giới hoàn toàn khác nhau Won Jun và Doona bỗng sống chung dưới một mái nhà. Họ cùng trải qua những hiểu lầm trong cuộc sống đời thường rồi dần dần cuốn hút lẫn nhau, lựa chọn bày tỏ cảm xúc của mình và đối mặt với nhiều trắc trở.</p><p>Sau khi ra mắt,<i> Doona! </i>liên tục<i> </i>nhận về nhiều phản hồi trái chiều.<i> </i>Vài khán giả nhận xét đứa con tinh thần của đạo diễn Lee Jung Hyo có nhịp phim quá chậm dễ gây mất tập trung, khai thác hời hợt bối cảnh nhân vật chính, diễn biến khi càng đến những tập cuối càng kém hấp dẫn... Đặc biệt, kết thúc mở của đôi tình nhân Won Jun và Doona trở thành đề tài gây tranh cãi suốt những ngày qua.</p><figure class=\"image\"><img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai1-16980592953222058112884.png\" alt=\"Phim \'Doona!\' có Suzy vẫn hot bất chấp tranh cãi - Ảnh 3.\"></figure><p>Cái kết của cặp đôi Won Jun và Doona vấp phải nhiều quan điểm trái chiều</p><p>CẮT TỪ PHIM</p><p>Bên cạnh đó, hình tượng nữ chính Doona của <a href=\"https://thanhnien.vn/suzy-gay-that-vong-trong-hop-bao-phim-moi-185231019093328074.htm\">Suzy</a> cũng là yếu tố bị chê bai. Một số dân mạng cho rằng tính cách Doona không có gì đặc sắc, đôi khi bộc lộ sự ích kỷ và chẳng có điểm gì thu hút so với các nhân vật nữ chính khác trên màn ảnh nhỏ xứ kim chi.</p><p>Nhìn chung,<i> Doona!</i> khó đáp ứng được sự kỳ vọng của đám đông nhưng cũng đang \"lôi kéo\" được nhiều người xem sau 3 ngày ra mắt. Tính đến nay, tác phẩm vươn lên vị trí thứ 6 trong top các chương trình/phim ảnh hot nhất Netflix trên toàn cầu. Đồng thời, <i>Doona! </i>cũng đang<i> </i>đứng đầu danh sách phim ăn khách nhất Netflix ở nhiều quốc gia và vùng lãnh thổ, gồm Hàn Quốc, Nhật Bản, Malaysia, Qatar, Singapore, Việt Nam…</p><p>&nbsp;</p><figure class=\"image\"><img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai2-16980592951311463839288.png\" alt=\"Phim \'Doona!\' có Suzy vẫn hot bất chấp tranh cãi - Ảnh 4.\"></figure><p>Suzy và Yang Se Jong có nhiều khoảnh khắc ôm hôn nóng bỏng trong phim<br>&nbsp;</p><p>CẮT TỪ PHIM</p><p>Một trong những lý do giúp <i>Doona!</i> gây chú ý là nhờ vào những thước phim đẹp nhẹ nhàng, nên thơ đem lại cảm xúc dễ chịu cho khán giả giữa loạt phim căng thẳng, bạo lực và máu me đang chiếu thời gian gần đây. Tác phẩm khắc họa cuộc sống của những người trẻ ở nhiều ngành nghề khác nhau một cách sâu sắc.</p><p>Ngoài ra, diễn xuất của <a href=\"https://thanhnien.vn/suzy-quyen-ru-va-ca-tinh-trong-phim-moi-185231007121825458.htm\">Suzy</a> trong <i>Doona!</i> cũng là điểm cộng. Mỹ nhân 9X bộc lộ được nỗi đau khổ cùng áp lực mà Doona chịu đựng trước sức ép dư luận suốt quãng thời gian dài. Các chuyển biến tâm lý của nhân vật từ khép kín sợ hãi cho đến mở lòng đón nhận bạn bè cũng được <a href=\"https://thanhnien.vn/ly-do-khoanh-khac-hoi-ngo-cua-thang-duy-park-bo-gum-suzy-gay-sot-185230429172444624.htm\">Suzy</a> thể hiện tinh tế.</p><p>Đặc biệt, nhan sắc rạng rỡ không góc chết của <a href=\"https://thanhnien.vn/song-hye-kyo-suzy-long-lay-tren-tham-do-baeksang-2023-185230428195441124.htm\">Suzy</a> trên phim <i>Doona!</i> còn trở thành chủ đề nóng trên các diễn đàn, mạng xã hội. Hầu hết bình luận đều tán thưởng ngôi sao 29 tuổi lộng lẫy ở mọi khung hình. \"<a href=\"https://thanhnien.vn/chuan-bi-toi-150-bo-do-suzy-van-nhat-nhoa-so-voi-nu-phu-trong-phim-anna-1851478924.htm\">Suzy</a> đẹp quá. Vẻ đẹp của cô ấy là lý do mà tôi xem hết cả phim\", một tài khoản khẳng định.</p><figure class=\"image\"><img src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2023/10/23/phimdoonasuzyhotdutranhcai7-16980592959221207448939.png\" alt=\"Phim \'Doona!\' có Suzy vẫn hot bất chấp tranh cãi - Ảnh 5.\"></figure><p>Phim có các góc quay đẹp. Ngoài Suzy và Yang Se Jong, phim còn quy tụ dàn sao Hàn Lee Jin Wook, Koo Ah Sung, Park Se Wan, Kim Do Wan, Kim Min Ho, Kim Jin Joo…</p><p>POSTER PHIM</p><p>Các phân đoạn <a href=\"https://thanhnien.vn/tinh-dau-quoc-dan-suzy-nhan-mua-loi-khen-voi-anna-1851478023.htm\">Suzy</a> biểu diễn trên sân khấu hay những cảnh nóng bỏng của nữ ca sĩ, diễn viên với bạn diễn Yang Se Jong trong <i>Doona!</i> &nbsp;tạo cơn sốt trên các nền tảng mạng xã hội. Bên cạnh đó, tương tác tự nhiên của các nhân vật phụ ở ngôi nhà chung cũng là ưu điểm lớn của bộ phim.</p>', 1, 0, 3, 10, 8, 1, '2025-05-15 20:40:32', '2025-06-01 11:18:43'),
(20, 'Thí sinh \'Em xinh say hi\' đọ vũ đạo', 'thi-sinh-em-xinh-say-hi-do-vu-dao', 'Tflm-lienquant-1748746372-6415-1748746499.jpeg', 0, 'https://www.youtube.com/embed/zUJuVsSR5n4?si=k_dfle8jNkhcCcVx', 'Châu Bùi, Phương Mỹ Chi, Han Sara cùng 12 người đẹp thi khả năng vũ đạo, hát, rap mở màn show \"Em xinh say hi\".', '<h2><strong>Thí sinh \'Em xinh say hi\' đọ vũ đạo</strong></h2><p>Châu Bùi, Phương Mỹ Chi, Han Sara cùng 12 người đẹp thi khả năng vũ đạo, hát, rap mở màn show \"Em xinh say hi\".</p><p>&nbsp;</p><p>Tiết mục của liên quân 2 trong \"Em xinh say hi\". Video: <i>Ban tổ chức cung cấp</i></p><p>Trong tập một show truyền hình thực tế về âm nhạc - phát tối 31/5, 30 thí sinh được chia thành hai liên quân, làm mới ca khúc chủ đề. Liên quân 2 gồm nhóm trưởng Tiên Tiên và 14 thành viên như Phương Mỹ Chi, Châu Bùi, Lâm Bảo Ngọc, Han Sara, Pháo, Juky San.</p><p>Chọn phong cách dance pop, dàn ca sĩ hát về chủ đề tinh thần mạnh mẽ, độc lập của phụ nữ hiện đại. Phần điệp khúc <i>The Real Aura</i> - bài hát chính của chương trình - được phối theo phong cách disco, nhịp điệu sôi động. Các \"em xinh\" kết hợp vũ đạo với quạt, tạo điểm nhấn qua màn nhảy trên ghế. Họ chọn tông trang phục đơn sắc, đồng điệu với không gian sân khấu màu xám lạnh, hướng đến phong cách futuristic (tương lai).</p><p>Kết thúc phần thi, liên quân 2 giành chiến thắng với 284 phiếu từ 300 khán giả trường quân. Nhóm một - với các thí sinh như Bích Phương, Bảo Anh, Miu Lê, Orange, Phương Ly - kém 37 phiếu. Trên mạng xã hội, tiết mục vào top xu hướng, thu hút hàng trăm nghìn lượt xem. Nhiều khán giả đánh giá phần trình diễn bắt mắt, thể hiện được thế mạnh từng người, như khả năng \"bắn\" rap của Pháo, lợi thế hát quãng cao của Lâm Bảo Ngọc.</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/06/01/lien-quan-2-1748746271-8801-1748746499.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=u4nhi9rRZaiv2MZdNXfcKA\" alt=\"Phương Mỹ Chi (đứng) và Juky San - hai thành viên của liên quân 2.\"></figure><p>Phương Mỹ Chi (đứng) và Juky San - hai thành viên của liên quân 2. Ảnh: <i>Ban tổ chức cung cấp</i></p><p>Show quy tụ 30 gương mặt, đặt mục tiêu \"tìm kiếm thế hệ nữ idol mới của nhạc Việt\". JustaTee - giám đốc âm nhạc - cùng đội ngũ hơn 20 producer, nhạc sĩ phụ trách các sáng tác mới cho thí sinh. Ban tổ chức chưa công bố cấu trúc cụ thể, cho biết mỗi thí sinh sẽ nỗ lực tìm tòi sâu hơn về chất liệu âm nhạc, phong cách thời trang lẫn trình diễn.</p><p>Chương trình tiếp nối sự thành công của <a href=\"https://vnexpress.net/dan-anh-trai-say-hi-bung-no-o-concert-thu-5-4864443.html\"><i>Anh trai say hi</i></a><i> </i>- ra mắt giữa năm 2024. 30 người được chia thành các liên quân, đối đầu trực tiếp qua các màn trình diễn theo hình thức nhóm nhạc. Nhiều tiết mục trở thành hit mới của nhạc Việt, thu về hàng chục triệu lượt xem trên YouTube, TikTok, vào xu hướng thịnh hành. Cuộc thi là bệ phóng cho nhiều ca sĩ như <a href=\"https://vnexpress.net/phong-cach-nang-dong-cua-hieu-thu-hai-4865783.html\">Hiếu Thứ Hai</a>, <a href=\"https://vnexpress.net/quang-hung-masterd-toi-vui-khi-giup-bo-me-tra-no-4853455.html\">Quang Hùng MasterD</a>, <a href=\"https://vnexpress.net/duong-domic-chang-bong-kho-trieu-view-4858641.html\">Dương Domic</a>, HURRYKNG. Loạt concert tại TP HCM, Hà Nội tạo cơn sốt, thu hút hàng chục nghìn khán giả trẻ.</p><p><br>&nbsp;</p>', 1, 0, 3, 11, 8, 1, '2025-05-15 20:41:10', '2025-06-01 11:22:16'),
(22, 'Trần Nghiên Hy diện đầm của NTK Việt', 'tran-nghien-hy-dien-dam-cua-ntk-viet', 'zprD-trannghienhydiendamnhathietkev-5540-8124-1748704766.jpeg', 1, NULL, '\"Tiểu Long Nữ\" Trần Nghiên Hy khoe sắc vóc trong đầm nơ khổng lồ của Huỳnh Thanh Thơ.', '<h2><strong>Trần Nghiên Hy diện đầm của NTK Việt</strong></h2><p>\"Tiểu Long Nữ\" Trần Nghiên Hy khoe sắc vóc trong đầm nơ khổng lồ của Huỳnh Thanh Thơ.</p><p>Người đẹp phim <i>Thần điêu đại hiệp</i> (2014) được chọn làm gương mặt trang bìa tạp chí <i>Trendmo</i> ấn bản mùa hè. Cô diện đầm xẻ cổ chữ V ren và sequin, để kiểu tóc high-low, trang điểm phong cách Y2K theo mốt hot năm nay.</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/31/IMG-3436-1748703221-6241-1748704765.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=0p6MtLn6_XV4FB2n3-y8tw\" alt=\"Trần Nghiên Hy đeo kẹp tóc ngôi sao trên bìa tạp chí Trendmo. Ảnh: Trendmo\"></figure><p>Trần Nghiên Hy đeo kẹp tóc ngôi sao trên bìa tạp chí Trendmo. Ảnh: <i>Trendmo</i></p><p>Thiết kế thuộc bộ sưu tập <i>Bad Biss</i> Thu Đông 2024 tập trung vào kỹ thuật dựng phom 3D với nơ lớn ở phần hông. Thân váy đính đá thủ công tốn 90 giờ thực hiện, dáng cột dài quét sàn tạo hiệu ứng cao ráo. Huỳnh Thanh Thơ cho biết đầu tháng 5 stylist của tạp chí liên hệ để chọn bộ cánh này cho Trần Nghiên Hy. Nhà thiết kế vui mừng khi êkíp của nữ ca sĩ và tạp chí thích thú về bộ đầm.</p><p><a href=\"https://vnexpress.net/chu-de/tran-nghien-hy-4936\">Nghiên Hy</a> năm nay 42 tuổi, nổi tiếng với phim <i>Cô gái năm ấy chúng ta cùng theo đuổi </i>(You Are The Apple of My Eye). Năm ngoái, cô hoàn thành quay phim truyền hình <i>Thư kích hồ điệp</i>, đóng cặp Châu Kha Vũ, tài tử kém cô 19 tuổi. Tháng 2, diễn viên Đài Loan và Trần Hiểu - vai Dương Quá trong <i>Thần điêu đại hiệp</i> (2014) - <a href=\"https://vnexpress.net/tran-hieu-tran-nghien-hy-ly-hon-4850929.html\">ly hôn</a> sau chín năm cưới.</p><figure class=\"image\"><img src=\"https://i1-giaitri.vnecdn.net/2025/05/31/tran-nghien-hy-1748703415-4154-1748704765.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=YreMiJqMrc_z_EkLwtXf4g\" alt=\"Trần Nghiên Hy còn diện thiết kế của Huỳnh Thanh Thơ trong bộ ảnh thời trang của tạp chí. Ảnh: Trendmo\"></figure><p>Trần Nghiên Hy còn diện thiết kế của Huỳnh Thanh Thơ trong bộ ảnh thời trang của tạp chí. Ảnh: <i>Trendmo</i></p><p><a href=\"https://vnexpress.net/chu-chi-nhuoc-chuc-tu-dan-dien-thiet-ke-viet-4868974.html\">Huỳnh Thanh Thơ</a>, 26 tuổi, thủ khoa K24 ngành Thiết kế thời trang và á khoa Thạc sĩ K2 ngành Mỹ thuật ứng dụng Đại học Văn Lang TP HCM. Cô thành lập thương hiệu riêng năm 2020, tập trung vào các thiết kế đòi hỏi xử lý thủ công tỉ mỉ, phong cách hiện đại, phá cách. Nhiều người nổi tiếng trong và ngoài nước từng mặc đồ của cô, như Chi Pu, Võ Hoàng Yến, Pháo, Hà Nhi, Ngu Thư Hân, Trương Lương Dĩnh, Lưu Tích Quân, Meng Jia (MissA), Chúc Tự Đan.</p>', 1, 0, 3, 1, 8, 1, '2025-05-15 22:22:51', '2025-06-01 11:26:00'),
(23, 'Kinh tế tư nhân được hưởng nhiều cơ chế đặc biệt', 'kinh-te-tu-nhan-duoc-huong-nhieu-co-che-dac-biet', 'Rf7o-TBT-To-Lam-jpeg-1747456680-1361-1747456767.jpeg', 1, NULL, 'Loạt chính sách hỗ trợ tín dụng, đất đai, thuế, không hình sự hóa quan hệ kinh tế... được áp dụng với kinh tế tư nhân.', '<p>Loạt chính sách hỗ trợ tín dụng, đất đai, thuế, không hình sự hóa quan hệ kinh tế... được áp dụng với kinh tế tư nhân.</p><p>Với gần 90% tỷ lệ đại biểu tán thành, Quốc hội sáng 17/5 vừa thông qua Nghị quyết về cơ chế, chính sách phát triển kinh tế tư nhân.</p><p><strong>Về hỗ trợ tiếp cận nguồn lực đất đai</strong>, mặt bằng sản xuất kinh doanh, dự thảo nghị quyết quy định doanh nghiệp công nghệ cao, nhỏ và vừa, khởi nghiệp sáng tạo được hỗ trợ giảm ít nhất 30% tiền thuê đất trong 5 năm đầu từ thời điểm ký hợp đồng với chủ đầu tư kinh doanh hạ tầng khu, cụm công nghiệp và vườn ươm công nghệ. Khoản hỗ trợ tiền thuê đất này sẽ được Nhà nước hoàn trả cho chủ đầu tư theo quy định. UBND cấp tỉnh quyết định mức giảm tiền thuê đất này.</p><p>Hiện cả nước có gần 450 khu công nghiệp, với tổng diện tích khoảng 93.000 ha. Song thực tế các doanh nghiệp nhỏ và vừa có ít cơ hội tiếp cận, giá thuê đất còn cao với khả năng chi trả của họ.</p><p>Với khu - cụm công nghiệp thành lập mới sau ngày Nghị quyết có hiệu lực, UBND cấp tỉnh sẽ xác định quỹ đất đảm bảo dành bình quân tối thiểu 20 ha một khu, cụm công nghiệp hoặc 5% tổng quỹ đất đã đầu tư kết cấu hạ tầng dành cho doanh nghiệp công nghệ cao, nhỏ và vừa, khởi nghiệp sáng tạo thuê lại. Ngoài ra, các doanh nghiệp này có thể được thuê nhà, đất là tài sản công chưa hoặc không sử dụng tại địa phương.</p><p><strong>Về hỗ trợ tín dụng</strong>, doanh nghiệp, hộ và cá nhân kinh doanh được hỗ trợ lãi suất 2% một năm khi vay vốn để thực hiện các dự án xanh, tuần hoàn và áp dụng khung tiêu chuẩn môi trường, xã hội, quản trị (ESG).</p><p>Quỹ Phát triển doanh nghiệp nhỏ và vừa sẽ cho vay với các doanh nghiệp nhỏ và vừa, doanh nghiệp khởi nghiệp, tài trợ vốn ban đầu cho dự án khởi nghiệp sáng tạo, vườn ươm công nghệ.</p><p>Quỹ này cũng rót vốn vào các quỹ đầu tư địa phương, tư nhân để tăng nguồn cung cho doanh nghiệp nhỏ và vừa, startup. Quỹ Phát triển doanh nghiệp nhỏ và vừa sẽ tiếp nhận, quản lý vốn vay, tài trợ, viện trợ, ủy thác của các tổ chức, cá nhân để hỗ trợ doanh nghiệp nhỏ và vừa.</p><figure class=\"image\"><img src=\"https://i1-kinhdoanh.vnecdn.net/2025/05/17/TBT-To-Lam-jpeg-1747456680-1361-1747456767.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=KiIrTo4eJKMxtHBl2O84Xg\" alt=\"Tổng Bí thư Tô Lâm và Chủ tịch nước Lương Cường bấm nút thông qua Nghị quyết của Quốc hội, sáng 17/5. Ảnh: Hoàng Phong\"></figure><p>Tổng Bí thư Tô Lâm và Chủ tịch nước Lương Cường bấm nút thông qua Nghị quyết của Quốc hội, sáng 17/5. Ảnh: <i>Hoàng Phong</i></p><p><strong>Về hỗ trợ thuế, phí</strong>, các startup, công ty quản lý quỹ đầu tư khởi nghiệp sáng tạo được miễn thuế thu nhập trong 2 năm, và giảm 50% số thuế phải nộp trong 4 năm tiếp theo với thu nhập từ hoạt động khởi nghiệp sáng tạo.</p><p>Doanh nghiệp nhỏ và vừa được miễn thuế thu nhập trong 3 năm kể từ ngày được cấp Giấy chứng nhận đăng ký lần đầu.</p><p>Chuyên gia, nhà khoa học tại trung tâm nghiên cứu phát triển, startup, tổ chức trung gian hỗ trợ khởi nghiệp sáng tạo... được miễn thuế thu nhập cá nhân trong 2 năm đầu, giảm 50% với 4 năm tiếp theo với khoản thu từ tiền lương, tiền công.</p><p>Liên quan tới hỗ trợ nghiên cứu, phát triển ứng dụng công nghệ, Nghị quyết cho phép doanh nghiệp được trích tối đa 20% thu nhập tính thuế thu nhập doanh nghiệp để lập Quỹ phát triển khoa học, công nghệ, đổi mới sáng tạo và chuyển đổi số. Doanh nghiệp được dùng quỹ này để tự triển khai hoặc đặt hàng nghiên cứu phát triển khoa học công nghệ, đổi mới sáng tạo.</p><p>Nhà nước cung cấp miễn phí các nền tảng số, phần mềm kế toán dùng chung cho doanh nghiệp nhỏ, siêu nhỏ, hộ kinh doanh và cá nhân kinh doanh.</p><p><strong>Điểm đột phá tại Nghị quyết này là quy định nguyên tắc xử lý vi phạm, vụ việc trong hoạt động kinh doanh</strong>. Theo đó, trách nhiệm pháp nhân và cá nhân; trách nhiệm hình sự và dân sự, hành chính với dân sự trong xử lý vi phạm được phân định rõ.</p><p>Biện pháp dân sự, kinh tế được ưu tiên áp dụng với các vụ việc vi phạm dân sự, kinh tế. Doanh nghiệp, hộ và cá nhân kinh doanh được chủ động khắc phục vi phạm, thiệt hại.</p><p>Số lần thanh, kiểm tra (gồm kiểm tra liên ngành) với doanh nghiệp, hộ và cá nhân kinh doanh là tối đa 1 lần trong năm, trừ trường hợp có dấu hiệu vi phạm rõ ràng; thanh, kiểm tra trực tiếp và ứng dụng chuyển đổi số, ưu tiên kiểm tra dựa trên các dữ liệu điện tử. Doanh nghiệp, hộ kinh doanh tuân thủ tốt quy định pháp luật được miễn kiểm tra thực tế.</p><p>Cùng với đó, dự thảo nghị quyết cũng bổ sung nguyên tắc xử lý vật chứng, tài sản trong quá trình điều tra, truy tố và xét xử một số vụ việc, vụ án hình sự đã được quy định tại Nghị quyết 164/2024 của Quốc hội. Việc này nhằm giúp doanh nghiệp, doanh nhân sớm khắc phục hậu quả thiệt hại, đưa tài sản vào sử dụng để khơi thông nguồn lực và tránh thất thoát, lãng phí.</p><p>Việt Nam hiện có trên 5,2 triệu hộ kinh doanh, tạo ra 8-9 triệu việc làm, tương đương với khối công ty tư nhân, theo số liệu của Cục Thống kê các năm 2018-2020. Khu vực kinh tế tư nhân, gồm hộ kinh doanh, hiện đóng góp khoảng 51% GDP và trên 30% ngân sách nhà nước.</p><p>Từ 1/1/2026, hình thức thuế khoán với hộ kinh doanh được bãi bỏ. Thay vào đó, hộ kinh doanh sẽ phải đăng ký, kê khai thuế theo quy định về quản lý thuế. Việc này nhằm đạt mục tiêu Việt Nam có 2 triệu doanh nghiệp vào 2030 và 3 triệu tới 2045, theo Nghị quyết 68 của Bộ Chính trị.</p><p>Để thực thi các chính sách đặc biệt này, Quốc hội giao Chính phủ rà soát, sửa đổi quy định về đất đai, quy hoạch, đầu tư. Việc này cần hoàn thành trước 31/12/2026.</p><p>Việc rà soát, loại bỏ các điều kiện kinh doanh, quy định chồng chéo cản trở phát triển kinh tế tư nhân cần được hoàn thành chậm nhất ngày 31/12/2025. Theo đó, Chính phủ phải giảm ít nhất 30% thời gian xử lý thủ tục hành chính, 30% chi phí tuân thủ pháp luật, 30% điều kiện kinh doanh và tiếp tục cắt giảm mạnh trong những năm tiếp theo.</p>', 1, 0, 7, 6, 1, 1, '2025-05-17 01:02:48', '2025-05-17 01:02:48'),
(24, 'Hang Sơn Đoòng - Hang động tự nhiên lớn nhất thế giới', 'hang-son-doong-hang-dong-tu-nhien-lon-nhat-the-gioi', '5GmG-hang-son-doong-1743646668-5891-1743648562.jpeg', 0, 'https://www.youtube.com/embed/87Jor5G_NBs?si=RtLbMrNV4lSf_FDe', 'Hang Sơn Đoòng vào top \'điểm đến siêu thực\'', '<p>Quảng BìnhHang Sơn Đoòng được bình chọn trong danh sách những điểm đến \"siêu thực\" trên thế giới khiến du khách như \"lạc vào hành tinh khác\".</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2025/04/03/hang-son-doong-1743646668-5891-1743648562.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TWHtXIxhX8pMviILLnjaQQ\" alt=\"Khu vực hố sụt 1 - vọng Khủng Long trong hang Sơn Đoòng. Ảnh: Oxalis\"></figure><p>Khu vực hố sụt 1 - vọng Khủng Long trong hang Sơn Đoòng. Ảnh:<i> Oxalis</i></p><p>Tạp chí du lịch Wanderlust (Anh) cuối tháng 3 xếp hang Sơn Đoòng của Việt Nam vào danh sách 9 điểm đến \"siêu thực\" trên thế giới. Theo tạp chí, nếu du khách có giấc mơ ra ngoài không gian khám phá vũ trụ nhưng chưa thể thực hiện được thì những điểm đến có vẻ đẹp siêu thực sẽ họ làm thỏa.</p><p>\"Thật khó hình dung được kích thước khổng lồ của Sơn Đoòng, hang động lớn nhất thế giới. Với chiều dài gần 9 km và trần hang rộng, Sơn Đoòng có thể chứa cả một khu phố của New York bên trong mà vẫn thừa chỗ\", tạp chí viết. Một số cột nhũ đá cao nhất thế giới, hơn 80 m, được tìm thấy ở đây. Hang động cũng có nhiều sông ngầm.</p><p>Du khách muốn tham quan hang phải đăng ký theo tour. Hiện tour Sơn Đoòng được giới hạn số lượng người để đảm bảo không có những tác động tiêu cực đến môi trường, nên khách phải đặt trước cả năm.</p><p>Không chỉ là thiên đường cho những người đam mê khám phá, hang Sơn Đoòng còn là bối cảnh của MV <i>Alone, Pt II</i> của Alan Walker, loạt phim <i>Planet Earth</i> của BBC và nhiều chương trình truyền hình nổi tiếng khác.</p><p>Sơn Đoòng được Hồ Khanh, một thợ rừng người Phong Nha, <a href=\"https://vnexpress.net/cam-nang-du-lich-quang-binh-4612297.html\">Quảng Bình</a> phát hiện cửa hang vào năm 1990. Hang được Guinness công nhận là hang động tự nhiên lớn nhất thế giới vào năm 2013 và tiếp tục được công nhận lớn nhất thế giới về thể tích vào năm 2015. Dịp kỷ niệm ngày Sơn Đoòng được công bố là hang động lớn nhất thế giới năm 2022, hang được Google Doodle vinh danh trên trang chủ tại 18 nước trên thế giới.</p><p>Các điểm đến thế giới lọt vào danh sách gồm Vườn quốc gia Vatnajökull (Iceland), Vườn quốc gia Lencois Maranhenses (Brazil), Socotra (Yemen), Namibia, Vườn quốc gia White Sands ở New Mexico (Mỹ), sa mạc Puna de Atacama (Argentina), Vườn quốc gia Tsingy de Bemaraha (Madagascar), cánh đồng muối Salar de Uyuni (Bolivia).</p><p><strong>Tâm Anh</strong> (theo <i>Wanderlust</i>)</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2024/02/14/sd6-1707884039-1707884097.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=B4Iw_0PIzekwXTGp5MsKNw\" alt=\"Ba bãi trại ấn tượng nhất thế giới trong tour Sơn Đoòng\"></figure><h4><a href=\"https://vnexpress.net/ba-bai-trai-an-tuong-nhat-the-gioi-trong-tour-son-doong-4711428.html\"><strong>Ba bãi trại ấn tượng nhất thế giới trong tour Sơn Đoòng</strong></a><strong>. </strong><a href=\"https://vnexpress.net/ba-bai-trai-an-tuong-nhat-the-gioi-trong-tour-son-doong-4711428.html\">Trong tour Sơn Đoòng 4 ngày 3 đêm, du khách dừng chân cắm trại ở ba địa điểm gồm hang Én, hố sụt 1 và hố sụt 2, sở hữu cảnh đẹp được đánh giá ấn tượng và duy nhất.</a></h4><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2022/04/14/doodle-son-doong-cave-hi-res-c-3030-3990-1649907343.png?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=vtnETNrKoXLQGIGjPja_eQ\" alt=\"Google tôn vinh hang Sơn Đoòng\"></figure><h4><a href=\"https://vnexpress.net/google-ton-vinh-hang-son-doong-4451110.html\"><strong>Google tôn vinh hang Sơn Đoòng</strong></a><strong>. </strong><a href=\"https://vnexpress.net/google-ton-vinh-hang-son-doong-4451110.html\">Ngày 14/4, Google thay hình đại diện trên trang chủ nhân kỷ niệm ngày phát hiện hang Sơn Đoòng.</a></h4><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2021/01/22/0J8A8403.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=GTawP_xWYRaFEiICYROOBQ\" alt=\"Vẻ đẹp Sơn Đoòng trong mùa mưa\"></figure><h4><a href=\"https://vnexpress.net/ve-dep-son-doong-trong-mua-mua-4224523.html\"><strong>Vẻ đẹp Sơn Đoòng trong mùa mưa</strong></a><strong>, </strong><a href=\"https://vnexpress.net/ve-dep-son-doong-trong-mua-mua-4224523.html\">Blogger du lịch Quỷ Cốc Tử ghi lại vẻ đẹp của hang động sau mùa lũ, trong chuyến thám hiểm Sơn Đoòng đầu tiên năm 2021.</a></h4><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2021/03/15/Untitled-1615783087-9116-1615783132.png?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=fxbpVwskVuRPDof2i6tAxg\" alt=\"Sơn Đoòng qua những góc máy lần đầu xuất hiện\"></figure><p><br>&nbsp;</p>', 1, 0, 4, 15, 8, 1, '2025-06-01 11:32:51', '2025-06-01 11:32:51');
INSERT INTO `news` (`id`, `title`, `sort_title`, `image`, `type`, `link`, `summary`, `content`, `index`, `view`, `category_id`, `subcategory_id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(25, '\'Thế giới bánh ú\' Tết Đoan Ngọ ở Trung Quốc', 'the-gioi-banh-u-tet-doan-ngo-o-trung-quoc', 'umk7-1-12-1748052005-7141-1748052176.jpeg', 1, NULL, 'Bánh ú Quảng Đông thơm nồng mùi lá tre, bánh Phúc Kiến đậm đà nước sốt, kiểu Khách Gia ăn nguội còn bánh ú Thượng Hải dễ nhận ra bởi hình gối thon dài.', '<p>Zongzi hay bánh ú là món bánh truyền thống của người Trung Quốc, thường được ăn vào dịp Tết Đoan Ngọ 5/5 âm lịch (năm nay rơi vào 31/5). Bánh xuất hiện từ năm 278 trước Công nguyên, khi nhà thơ Khuất Nguyên trẫm mình xuống sông. Người dân thương tiếc ông nên đã làm bánh gạo nếp gói lá tre thả xuống sông để cho cá ăn bánh thay vì làm hại thi thể ông.</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2025/05/24/1-12-1748052005-7141-1748052176.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=KKz03yblfIsMgOzHF6UvNw\" alt=\"Bánh ú ở Thượng Hải có hình gối dài. Ảnh: stellacookdiary/Instagram\"></figure><p>Bánh ú ở Thượng Hải có hình gối dài. Ảnh: <i>stellacookdiary/Instagram</i></p><p>Bánh có hình dáng, nguyên liệu và hương vị khác nhau tùy theo từng vùng miền, nhưng luôn có hai thành phần chính là gạo nếp và lá tre để gói bánh.</p><p>Người <strong>Quảng Đông</strong> thường hấp bánh cho đến khi gạo và nhân mềm dẻo, đồng thời thấm hương thơm từ lá tre bên ngoài. Nhân bánh truyền thống thường gồm thịt ba chỉ hoặc thịt vịt, sò điệp khô, nấm hương và trứng muối. Theo đầu bếp Li Chi-wai của nhà hàng The Legacy House, nhân bánh ú kiểu Quảng Đông rất đa dạng nhưng luôn giữ được sự hài hòa và cân bằng hương vị, đúng với tinh thần ẩm thực của vùng.</p><p>\"Quảng Đông có khí hậu ấm áp, thuận lợi cho việc trồng trọt và sáng tạo nhiều nguyên liệu để làm bánh\", Li nói, cho biết món bánh năm nay của nhà hàng ông có thêm nhân đậu xanh, đậu đỏ, vỏ quýt, bào ngư, hạt sen, dăm bông, hạt dẻ và nước sốt gà muối.</p><p>Bánh ú ở <strong>Phúc Kiến</strong> nổi bật bởi nước sốt ăn kèm đa dạng như sốt ớt, tỏi, mè và dầu hành tím. Gạo nếp được xào trước với nước tương để tăng thêm hương vị. Nhân bánh thường có thêm tôm khô, khoai môn hoặc thịt kho. Bếp trưởng Jack Lam của nhà hàng Ming Pavilion cho biết đang sáng tạo nhân mới với tôm sakura, rau củ muối và nước sốt nấm.</p><p>Khác với phần lớn các loại bánh ú thường được ăn nóng, bánh ú kiểu <strong>Khách Gia</strong> có vị đậm đà hơn và thường được ăn nguội. Nhân bánh gồm những nguyên liệu dễ bảo quản như củ cải muối, thịt heo quay, tôm khô và nấm. Điều này phản ánh lối sống của người Khách Gia xưa, vốn sống ở vùng núi hoặc nơi ít tài nguyên, nên người dân chọn những nguyên liệu có thể để lâu và vẫn ngon khi ăn nguội.</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2025/05/24/2-7-1748052062-1493-1748052177.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=owbP7gPFADvDPc9Pckf8iQ\" alt=\"Người thợ bánh tất bật bày bán bánh ú ở chợ Thành Đô, tỉnh Tứ Xuyên vào dịp Tết Đoan Ngọ năm ngoái. Ảnh: Shen Bohan/Xinhua\"></figure><p>Thợ bánh tất bật bày bán bánh ú ở chợ Thành Đô, tỉnh Tứ Xuyên vào dịp Tết Đoan Ngọ 2024. Ảnh:<i> Shen Bohan/Xinhua</i></p><p>Bánh ú ở <strong>Thượng Hải</strong> có hình gối dài, khác với kiểu tam giác truyền thống. Eric Ting, sáng lập nhà hàng Jiangsu Club chuyên ẩm thực Giang Nam, cho biết lá tre ở miền đông Trung Quốc to, mềm và thơm hơn so với lá tre miền nam. Nhờ vậy, người Thượng Hải dễ dàng gói bánh thành hình dài và có mùi thơm hơn.</p><p>Thực khách có nhiều lựa chọn cho nhân mặn như bào ngư, thịt ba chỉ, hạt dẻ, trứng muối hoặc nhân ngọt như đậu đỏ, hoa mộc và táo tàu đỏ. Gạo nếp thường được ướp với nước tương trước khi gói nên có màu nâu sẫm và vị mặn nhẹ.</p><p>Ngoài ra, còn có loại bánh ú ngọt theo phong cách <strong>Hong Kong</strong>. Bánh làm từ gạo mềm, có màu vàng nhạt vì được nấu trong nước có tính kiềm cao. Bánh được phục vụ với đường, mật ong hoặc siro để tăng vị ngọt.</p><p>Theo bếp trưởng Lam Yuk-ming của nhà hàng Spring Moon, bánh ú ngon nhất là khi được chia sẻ cùng gia đình và những người thân yêu.</p><p><strong>Hà Phương</strong> (Theo <i>SCMP</i>)</p>', 1, 0, 4, 16, 8, 1, '2025-06-01 11:34:06', '2025-06-01 11:34:06'),
(26, 'Thực đơn ba món hút khách đến Tây Ban Nha', 'thuc-don-ba-mon-hut-khach-den-tay-ban-nha', 'l5QL-1-2-1747963767-5028-1747963841.jpeg', 1, NULL, 'Thực đơn gồm khai vị, món chính và tráng miệng được người Tây Ban Nha ưa chuộng do đủ dinh dưỡng và giá hợp lý, từng giúp đất nước đón thêm hàng triệu lượt khách.', '<h2><strong>Thực đơn ba món hút khách đến Tây Ban Nha</strong></h2><p>Thực đơn gồm khai vị, món chính và tráng miệng được người Tây Ban Nha ưa chuộng do đủ dinh dưỡng và giá hợp lý, từng giúp đất nước đón thêm hàng triệu lượt khách.</p><p>Menú del día hay thực đơn ba món xuất hiện ở Tây Ban Nha từ năm 1965, khi tướng Francisco Franco yêu cầu các nhà hàng khắp cả nước cung cấp suất ăn đủ dinh dưỡng với mức giá cố định nhằm hút khách du lịch. Lượng khách đến \"xứ sở bò tót\" đã tăng từ 5,4 triệu lượt năm 1960 lên hơn 20 triệu lượt vào khoảng năm 1970, theo một nghiên cứu trên tạp chí <i>PubMed Central</i>.</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2025/05/23/1-2-1747963767-5028-1747963841.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=S2DWAT9Jc0inxCUOUVDvzA\" alt=\"Súp cà chua thường là món khai vị trong thực đơn ba món của Tây Ban Nha. Ảnh: Archanas Kitchen\"></figure><p>Súp cà chua thường là món khai vị trong thực đơn ba món của Tây Ban Nha. Ảnh: <i>Archana\'s Kitchen</i></p><p>Tuy nhiên, khi Liên minh châu Âu ban hành chỉ thị năm 2006 khuyến khích các quốc gia thành viên thúc đẩy thị trường dịch vụ tự do, nhiều nhà hàng cũng ngừng phục vụ thực đơn ba món theo quy định. Điều này khiến nhiều du khách không biết đến mô hình này, dù người dân địa phương vẫn ăn thường xuyên.</p><p>Thực đơn có giá cố định từ 10 đến 16 euro, tương đương 270.000 đồng đến 432.000 đồng, gồm một món khai vị, một món chính, một món tráng miệng kèm thức uống như rượu vang, bia, cà phê, nước ngọt hoặc nước lọc. Vì không thể tăng giá, các chủ nhà hàng buộc phải linh hoạt thay đổi món ăn và tận dụng nguyên liệu tươi, giá rẻ từ địa phương để tiết kiệm chi phí.</p><figure class=\"image\"><img src=\"https://i1-dulich.vnecdn.net/2025/05/23/2-1-1747963734-3356-1747963842.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=UjupEhMO5dFaGx9yKmnd3A\" alt=\"Nhân viên nhà hàng viết thực đơn ba món lên bảng đen ở Palma de Mallorca, Tây Ban Nha. Ảnh: Klaus Vedfelt/Elpais\"></figure><p>Nhân viên nhà hàng viết thực đơn ba món trước quán ở Palma de Mallorca, Tây Ban Nha. Ảnh: <i>Klaus Vedfelt/Elpais</i></p><p>Thực khách có nhiều lựa chọn cho món ăn và thức uống. Có thể kể đến một số món khai vị như súp cà chua lạnh, <a href=\"https://vnexpress.net/com-bong-dem-mon-nen-thu-o-tay-ban-nha-4847771.html\">cơm rang Paella</a> Tây Ban Nha, mì nấu với hải sản, trứng chiên nấm và xúc xích huyết. Món chính thường là thịt hoặc hải sản như thăn heo sốt phô mai, má bò om rượu vang, phi lê cá phủ sốt chanh và tỏi. Món tráng miệng gồm trái cây tươi, kem, bánh táo hoặc chocolate, bánh pudding gạo, hoặc phô mai rưới mật ong.</p><p>Nếu đi theo nhóm từ hai người trở lên và gọi thực đơn ba món, thực khách có thể được tặng một chai rượu miễn phí. Rượu thường được phục vụ bằng bình thủy tinh truyền thống của Tây Ban Nha. Loại bình được dùng chung, người uống sẽ giơ bình lên cao và rót rượu từ vòi vào miệng mà không chạm môi.</p><p>Mô hình cũng được áp dụng tại các nhà hàng quốc tế ở địa phương, các món sẽ đa dạng hơn từ ẩm thực Á đến Âu như sushi, mì ramen và spaghetti.</p><p>Nhiều nhà hàng ở các thành phố như Seville, Málaga, Barcelona và Madrid vẫn duy trì hình thức phục vụ này vào buổi trưa trong tuần, từ 13h30 đến 15h30. Thực khách có thể gọi điện hoặc đến trực tiếp để hỏi xem nhà hàng nào có phục vụ thực đơn ba món. Những nhà hàng áp dụng hình thức này thường treo bảng thông báo bữa trưa trước cửa.</p><p><strong>Hà Phương</strong> (Theo <i>NatGeo</i>)</p>', 1, 0, 4, 16, 8, 1, '2025-06-01 11:35:14', '2025-06-01 11:35:14'),
(27, 'Maextro S800 - đối thủ Mercedes-Maybach S-class ra mắt', 'maextro-s800-doi-thu-mercedes-maybach-s-class-ra-mat', 'eSwE-Maextro-S800-2025-3-9989-17486-5859-9864-1748682099.jpeg', 1, NULL, 'Maextro S800 - đối thủ Mercedes-Maybach S-class ra mắt', '<h2><strong>Maextro S800 - đối thủ Mercedes-Maybach S-class ra mắt</strong></h2><p>Mẫu sedan định vị hạng sang cỡ lớn, cấu hình 4 hoặc 5 chỗ, lựa chọn 2 hệ truyền động, giá 98.300-141.000 USD.</p><p>Liên doanh Huawei và JAC Motors ra mắt Maextro S800 ở thị trường Trung Quốc. Hãng định vị Maextro S800 nằm ở phân khúc xe gầm thấp hạng sang cỡ lớn, nơi có <a href=\"https://vnexpress.net/oto-xe-may/v-car/hang-xe/mercedes-20\">Mercedes</a>-Maybach <a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mercedes-s-class-106\">S-class</a>.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-7-5813-17486-2327-3293-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Gt04cchjtqQKyi81Pbulug\"></figure><p>Cụm đèn hậu với dải LED toàn chiều rộng.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-3-9989-17486-5859-9864-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9m_IcnqTfjfMQPXv3a52kw\"></figure><p>Maextro S800 ra mắt tại Trung Quốc. Ảnh: <i>Autohome</i></p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-4-1145-17486-5783-7144-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Og8hiMBvfGeu1hAnVQsiSQ\"></figure><p>S800 định vị cạnh tranh Mercedes-Maybach S-class.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/5-2978-1748681445-8877-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MS6naAmc6B_zyG4Ci5Ztjw\"></figure><p>Mẫu sedan định vị hạng sang.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-6-2947-17486-7624-5416-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MSK8l9VIICZqEK8MlzOY4g\"></figure><p>Ngoại hình với hai tông màu.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-8-4310-17486-1259-7742-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=if5Dtdbrz7tSfcUjEy16BQ\"></figure><p>Đèn pha LED pha lê.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-9-2772-17486-3828-4577-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Jcc9FAMNn6_ujJS6kY4hCA\"></figure><p>Tay nắm cửa dạng ẩn.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-10-6365-1748-5863-2436-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=VY69KCmQmzkNfKMoWgVRtg\"></figure><p>Gương hậu kỹ thuật số.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-7-5813-17486-2327-3293-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Gt04cchjtqQKyi81Pbulug\"></figure><p>Cụm đèn hậu với dải LED toàn chiều rộng.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-3-9989-17486-5859-9864-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9m_IcnqTfjfMQPXv3a52kw\"></figure><p>Maextro S800 ra mắt tại Trung Quốc. Ảnh: <i>Autohome</i></p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-3-9989-17486-5859-9864-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9m_IcnqTfjfMQPXv3a52kw\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-4-1145-17486-5783-7144-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Og8hiMBvfGeu1hAnVQsiSQ\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/5-2978-1748681445-8877-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MS6naAmc6B_zyG4Ci5Ztjw\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-6-2947-17486-7624-5416-1748682099.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MSK8l9VIICZqEK8MlzOY4g\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-8-4310-17486-1259-7742-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=if5Dtdbrz7tSfcUjEy16BQ\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-9-2772-17486-3828-4577-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Jcc9FAMNn6_ujJS6kY4hCA\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-10-6365-1748-5863-2436-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=VY69KCmQmzkNfKMoWgVRtg\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-7-5813-17486-2327-3293-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Gt04cchjtqQKyi81Pbulug\"></figure><p>1 / 8</p><p>&nbsp;</p><p>&nbsp;</p><p>S800 sở hữu chiều dài x rộng x cao là 5.480 x 2.000 x 1.536 mm và chiều dài cơ sở 3.370 mm. Kích thước của đối thủ là 5.469 x 2.109 x 1.510 mm và dài cơ sở 3.396 mm. Mẫu xe Trung Quốc nhỉnh hơn về chiều dài nhưng trục cơ sở ngắn hơn đối thủ đến từ Đức.</p><p>Mẫu gầm cao của Maextro áp dụng ngôn ngữ thiết kế mới của thương hiệu, đặc trưng bởi bốn thành phần nằm ngang và hai thành phần nằm dọc, điều này tạo nên mặt ca-lăng xe độc đáo. Cụm đèn pha pha lê, trong khi cụm đèn hậu toàn chiều rộng xe, lấy cảm hứng từ dải ngân hà phát sáng vào ban đêm. Huy hiệu \"MAEXTRO\" bắt nguồn từ từ maestro trong tiếng Italy - có nghĩa nhạc trưởng hoặc chuyên gia.</p><p>Xe có hai lựa chọn hệ truyền động, gồm thuần điện và EREV (extended-range electric vehicle). Bản thuần điện sử dụng hai môtơ điện tổng công suất 522 mã lực, kèm gói pin 95 kWh, phạm vi hoạt động 702 km, hỗ trợ sạc nhanh DC 10-80% trong 12 phút.</p><p>Bản EREV kết hợp môtơ điện với động cơ xăng 1.5 tăng áp, kèm gói pin 65 kWh hỗ trợ sạc nhanh 6C và kiến trúc 800V, sạc 10-80% trong 10,5 phút. Trong đó, bản hai môtơ điện công suất 522 mã lực, phạm vi hoạt động thuần điện ở chế độ EV là 400 km, trong khi phạm vi hoạt động kết hợp là 1.333 km. Tùy chọn 3 môtơ điện công suất 851 mã lực, phạm vi hoạt động thuần điện EV là 365 km, phạm vi hỗn hợp là 1.200 km. Tất cả các phiên bản đều sử dụng công nghệ Whale Battery 2.0 của Huawei.</p><p>S800 sử dụng hệ thống lái thông minh ADS 4 mới nhất của Huawei, bao gồm 4 cảm biến LiDAR và 32 cảm biến khác để nhận thức toàn diện 360 độ và hỗ trợ cho các tình huống lái xe phức tạp, như đi vào làn đường hẹp, tránh chướng ngại vật tự động, đỗ xe chính xác. Ngoài ra, S800 trang bị buồng lái thông minh Harmony ALPS 2.0 và công nghệ Huawei Galaxy Communication.</p><p>Nội thất S800 cấu hình 4 hoặc 5 chỗ. Vật liệu sử dụng trong nội thất như da bê, ốp gỗ và các thành phần pha lê trên logo, núm điều khiển. Buồng lái Harmony ALPS 2.0 với ba màn hình tích hợp Huawei XHUD. Gương hậu kỹ thuật số. Đặc biệt, nội thất hoàn thiện chủ yếu thủ công.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-17-8416-1748-2137-1434-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qpNzyOaKeQrpmlRMi7WYFg\"></figure><p>Màn hình cho hàng ghế sau.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-11-6111-1748-5369-5832-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FxQHGeyKkB5CiP3P7l94zg\"></figure><p>Nội thất Maextro S800 tràn đầy công nghệ Huawei. Ảnh: <i>Autohome</i></p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-12-4498-1748-4917-1887-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=GDSjseKXjgoJGOnbX9V5Ag\"></figure><p>Vô-lăng bọc da cao cấp.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-13-9232-1748-7526-7251-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=yApOvRWqBUgM9UGPVhPeTQ\"></figure><p>Bảng đồng hồ kỹ thuật số sau vô-lăng.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-14-4995-1748-8116-9662-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AGIyXiXH-QDSGgl9MwzGxA\"></figure><p>Màn hình cảm ứng giải trí ở trung tâm.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-16-6555-1748-5320-1298-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=3mtoZ_i9MqEXuOYLXsjToA\"></figure><p>Màn hình giải trí cho ghế phụ.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-15-5708-1748-9058-7336-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dZZmwus1XdHePqVE_N6cZg\"></figure><p>Cụm điều khiển trung tâm.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-17-8416-1748-2137-1434-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qpNzyOaKeQrpmlRMi7WYFg\"></figure><p>Màn hình cho hàng ghế sau.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-11-6111-1748-5369-5832-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FxQHGeyKkB5CiP3P7l94zg\"></figure><p>Nội thất Maextro S800 tràn đầy công nghệ Huawei. Ảnh: <i>Autohome</i></p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-11-6111-1748-5369-5832-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FxQHGeyKkB5CiP3P7l94zg\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-12-4498-1748-4917-1887-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=GDSjseKXjgoJGOnbX9V5Ag\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-13-9232-1748-7526-7251-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=yApOvRWqBUgM9UGPVhPeTQ\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-14-4995-1748-8116-9662-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AGIyXiXH-QDSGgl9MwzGxA\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-16-6555-1748-5320-1298-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=3mtoZ_i9MqEXuOYLXsjToA\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-15-5708-1748-9058-7336-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dZZmwus1XdHePqVE_N6cZg\"></figure><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/31/Maextro-S800-2025-17-8416-1748-2137-1434-1748682100.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qpNzyOaKeQrpmlRMi7WYFg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>Sự sang trọng tập trung vào hàng ghế sau với ghế không trực lực, điều chỉnh 20 hướng, ngả 148,5 độ, chức năng mát xa đa điểm, tích hợp làm mát và sưởi. Một vách ngăn màn hình mềm kích thước lớn giữa hai hàng ghế. Bảng điều khiển trung tâm hàng ghế sau có bàn làm việc có thể gấp gọn, tủ giữ lạnh, két mở khóa vân tay.</p><p>Xe trang bị hệ thống điều hòa tự động 4 vùng độc lập. Hệ thống chiếu sáng độc lập cho hành khách phía sau, điều khiển bằng cử chỉ. Trần xe bầu trời sao ba chế độ động, bao gồm hiệu ứng mưa sao băng. Cốp xe dung tích 445 lít, lót bằng vải nhung. Hệ thống âm thanh Huawei Sound với 43 loa. Maextro S800 cũng có hệ thống chìa khóa kỹ thuật số của Huawei.</p><p>Theo <i>CarNewsChina</i>, lô hàng đầu tiên với 599 chiếc Maextro S800 \"Pioneer Program\" giao hàng ngày 26/6 và sau đó bán ra hàng loạt từ tháng 8.</p><p><strong>Minh Vũ</strong></p>', 1, 0, 5, 5, 8, 1, '2025-06-01 11:37:03', '2025-06-02 21:51:04'),
(28, 'Nga phóng gần 500 UAV tầm xa vào Ukraine', 'nga-phong-gan-500-uav-tam-xa-vao-ukraine', 'lkn7-afp-20250530-aa-30052025-22619-6113-9298-1748786352.jpeg', 1, NULL, 'Không quân Ukraine nói Nga phóng 472 UAV tự sát tầm xa nhằm vào nước này, đánh dấu cuộc tấn công UAV trong đêm lớn nhất từ trước tới nay.', '<h2><strong>Nga phóng gần 500 UAV tầm xa vào Ukraine</strong></h2><p>Không quân Ukraine nói Nga phóng 472 UAV tự sát tầm xa nhằm vào nước này, đánh dấu cuộc tấn công UAV trong đêm lớn nhất từ trước tới nay.</p><p>Bộ tư lệnh không quân Ukraine cho biết Nga hôm nay tiến hành cuộc tập kích hiệp đồng nhằm vào nước này bằng 3 tên lửa đạn đạo Iskander-M, 4 tên lửa hành trình Kh-101 và Iskander-K, cùng 472 máy bay không người lái (UAV) tự sát Geran-2 và phi cơ mồi nhử.</p><p>\"Hướng tấn công chính là tỉnh Kharkov, Sumy, Zhytomyr, Odessa, Donetsk, Dnipro và Zaporizhzhia. Các đơn vị phòng không Ukraine đã bắn hạ 3 tên lửa Kh-101, Iskander-K và 210 UAV tự sát, trong khi 172 phi cơ mồi bẫy bị gây nhiễu và lạc đường\", Bộ tư lệnh không quân Ukraine cho hay.</p><p>Thông báo cho thấy dường như quân đội Ukraine đã để lọt cả 3 tên lửa Iskander-M, một tên lửa hành trình và 90 UAV tự sát. Đợt tấn công diễn ra lúc rạng sáng, nhưng thông tin chỉ được giới chức Ukraine công bố vào buổi tối. Chưa rõ mục tiêu của đòn tập kích và thiệt hại trong sự việc.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/06/01/afp-20250530-aa-30052025-22619-6113-9298-1748786352.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Eb2So55P2c3FFx2VqCrzUQ\" alt=\"Một khu chung cư bốc cháy sau cuộc tấn công bằng UAV vào Bilozerske, Ukraine ngày 30/5. Ảnh: AFP\"></figure><p>Một khu chung cư bốc cháy sau cuộc không kích nhằm vào Ukraine ngày 30/5. Ảnh: <i>AFP</i></p><p>Đây là cuộc tập kích có số lượng UAV nhiều nhất nhằm vào Ukraine từ trước đến nay, diễn ra chỉ một tuần sau khi Nga tiến hành chiến dịch tấn công hiệp đồng quy mô lớn trong ba ngày liên tiếp.</p><p>Bộ Quốc phòng Nga chưa bình luận về thông tin.</p><p>Một năm trước, Nga triển khai 30 UAV tấn công Ukraine trong một đêm là điều hiếm thấy. Giờ đây, Nga đang dùng hàng trăm UAV trong mỗi đợt tấn công để áp đảo hệ thống phòng không Ukraine.</p><p>Chiến thuật \"dội mưa lửa\" của Nga đang đẩy Ukraine vào tình thế vô cùng khó khăn. Nếu các cuộc đàm phán ngừng bắn thất bại, Nga nhiều khả năng sẽ tăng cường tập kích trong thời gian dài, trong khi các đơn vị phòng không Ukraine sẽ phải chắt chiu đạn dược khi nguồn viện trợ từ phương Tây ngày càng hạn chế.</p><p>Các chiến dịch tập kích của Nga được tăng cường từ đầu năm, với những thay đổi rõ rệt về khí tài và chiến thuật. Tên lửa đạn đạo, vốn rất khó đánh chặn, hiện là vũ khí chính trong các cuộc không kích, bên cạnh những thế hệ UAV tấn công mới, nguy hiểm hơn và sở hữu các tính năng ẩn mình hiện đại hơn.</p><p>Thách thức lớn nhất với phòng không Ukraine nằm ở số lượng khí tài mà đối phương nhắm về phía họ. Năm ngoái, Nga sản xuất trung bình khoảng 300 UAV tầm xa mỗi tháng. Hiện tại, họ chỉ mất chưa đầy ba ngày để cho ra lò số lượng tương tự.</p><p>Theo tình báo quân sự Ukraine, một số tài liệu cho thấy Nga dự định tăng sản lượng UAV lên 500 chiếc mỗi ngày, đồng nghĩa các đợt tấn công với 1.000 chiếc hoàn toàn có thể trở thành hiện thực trong tương lai.</p><p><strong>Huyền Lê</strong> (Theo <i>AFP</i>, <i>Reuters</i>)</p>', 1, 0, 9, 20, 8, 1, '2025-06-01 11:38:34', '2025-06-01 11:38:34'),
(29, 'Ukraine lo ngại \'tên lửa Frankenstein\' của Nga', 'ukraine-lo-ngai-ten-lua-frankenstein-cua-nga', 'Gpmb-download.jpg', 1, NULL, 'Quan chức Ukraine bày tỏ lo ngại trước Banderol, tên lửa hành trình lai UAV của Nga, dù khẳng định nó \"không phải vũ khí quá đáng sợ\".', '<h2><strong>Ukraine lo ngại \'tên lửa Frankenstein\' của Nga</strong></h2><p>Quan chức Ukraine bày tỏ lo ngại trước Banderol, tên lửa hành trình lai UAV của Nga, dù khẳng định nó \"không phải vũ khí quá đáng sợ\".</p><p>\"Mối đe dọa mới nhất từ Nga là tên lửa Banderol. Đây là vũ khí lai giữa tên lửa hành trình và máy bay không người lái (UAV). Chúng tôi đã ghi nhận hơn 20 lần loại tên lửa này được sử dụng\", Vladyslav Voloshyn, phát ngôn viên Bộ tư lệnh miền Nam của quân đội Ukraine, cho biết hôm 27/5.</p><p>Quan chức Ukraine nói rằng tên lửa Banderol có tầm bắn lý thuyết khoảng 700 km, nhưng phòng không nước này thường phát hiện chúng được phóng từ khoảng cách 310-320 km tính từ mục tiêu.</p><p>Ông Voloshyn nhận định ưu thế lớn nhất của loại vũ khí này là tốc độ 500-700 km/h và đầu đạn nổ mạnh với khối lượng khoảng 150 kg, so với tốc độ 200 km/h và đầu đạn 50-90 kg trên UAV tự sát tầm xa Geran-2.</p><p>Video Player is loading.</p><p>Dừng</p><p>Hiện tại&nbsp;0:23</p><p>/</p><p>Thời lượng&nbsp;0:24</p><p>Đã tải: 0%</p><p>Tiến trình: 0%</p><p>Bỏ tắt tiếng</p><p>&nbsp;</p><p>Toàn màn hình</p><p>&nbsp;</p><p>Vũ khí nghi là tên lửa Banderol xuất hiện trong video do Nga công bố ngày 26/4. Video: <i>TASS</i></p><p>Tuy nhiên, giới chức quân đội Ukraine cho rằng Banderol \"không phải vũ khí mới và cũng không quá nguy hiểm\". \"Nga đã phát triển nó trong nhiều năm và giờ họ đang cố chứng minh rằng mình có vũ khí mới\", ông Voloshyn nói.</p><p>Phát biểu được đưa ra hai tuần sau khi Tổng cục Tình báo Quốc phòng Ukraine (GUR) lần đầu công bố thông tin và đồ họa mô phỏng của dòng Banderol, nói rằng đây là sản phẩm của Kronstadt Group, doanh nghiệp quốc phòng chuyên sản xuất UAV vũ trang và tên lửa hành trình cho quân đội Nga.</p><p>Banderol có kích thước nhỏ, chủ yếu phóng từ UAV Inokhodets do chính Kronstadt sản xuất, cũng như trực thăng tấn công Mi-28N.</p><p>GUR nhận định Banderol có khả năng cơ động linh hoạt hơn các tên lửa hành trình khác của Nga, dường như được tối ưu cho nhiệm vụ né tránh và vượt qua lưới phòng không đối phương. Tên lửa dùng hệ thống dẫn đường quán tính kết hợp định vị vệ tinh, phù hợp với nhiệm vụ tập kích mục tiêu cố định.</p><p>Theo GUR, tên lửa Banderol sử dụng hơn 20 bộ phận có nguồn gốc ngoài Nga, trong đó có động cơ, thiết bị định vị quán tính, pin sạc, hệ thống điều khiển và vi mạch điện tử. Điều này khiến một số chuyên gia phương Tây ví nó như \"tên lửa hành trình Frankenstein\".</p><p>Tuy nhiên, tên lửa vẫn trang bị hệ thống định vị vệ tinh Kometa do Nga tự sản xuất, tương tự UAV tự sát Geran-2 và bom dẫn đường UMPK. Thiết bị này nổi bật nhờ khả năng kháng nhiễu cao, chống chịu được nhiều biện pháp tác chiến điện tử của Ukraine và liên tục được cải tiến.</p><p>Bộ Quốc phòng Nga chưa bình luận về thông tin. Cơ quan này cũng chưa từng đề cập đến dòng Banderol trước đây.</p><p>Truyền thông Nga hồi tháng 2 đưa tin về \"cuộc thử nghiệm thành công đầu tiên của phương tiện bay không người lái mới\", song không nêu chi tiết khí tài. Mẫu vũ khí nghi là Banderol cũng xuất hiện trong video về chuyến thị sát thao trường Kapustin Yar của Phó chủ tịch Hội đồng An ninh Liên bang Nga Dmitry Medvedev ngày 26/4.</p><figure class=\"image\"><img src=\"https://i1-vnexpress.vnecdn.net/2025/05/29/55631871781372687446a-Nga-1748-7866-2678-1748481556.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xslEXBIIiVPolU2YQVqHNw\" alt=\"Đồ họa mô phỏng hình dáng và kết cấu bên trong vũ khí được cho là tên lửa S8000 Banderol. Đồ họa: GUR\"></figure><p>Đồ họa mô phỏng hình dáng và kết cấu bên trong vũ khí được cho là tên lửa S8000 Banderol. Đồ họa: <i>GUR</i></p><p>Giới chuyên gia phương Tây đánh giá Banderol rẻ hơn nhiều so với các tên lửa hành trình trong biên chế quân đội Nga hiện nay, vốn có giá hàng trăm nghìn đến hàng triệu USD mỗi quả. John Hardie, chuyên gia thuộc viện nghiên cứu Quỹ Bảo vệ Dân chủ có trụ sở tại Mỹ, nhận định điều này giúp đáp ứng mục đích \"tăng cường độ tấn công thọc sâu với số lượng lớn tên lửa\" của Nga.</p><p>\"Sự xuất hiện của S8000 Banderol có thể đánh dấu sự ra đời của thế hệ vũ khí dẫn đường chính xác mới, với mức giá rất rẻ nhưng vẫn đủ sức gây ra rủi ro nghiêm trọng cho Ukraine\", Thomas Newdick, biên tập viên của chuyên trang quân sự Mỹ War Zone, nêu quan điểm.</p><p><strong>Nguyễn Tiến </strong>(Theo <i>AP, AFP, Kyiv Post</i>)</p>', 1, 0, 9, 20, 8, 1, '2025-06-01 11:40:40', '2025-06-01 11:40:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort_Title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('darkeula202@gmail.com', '$2y$10$cAdSBf4zqmnpEVG3gXsllO3yMw8xLGHSqLPiVNdmOkUgyoT0a6jwW', '2025-06-01 09:50:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `sort_name`, `category_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Nhịp Sống', 'nhip-song', 1, 1, '2022-03-28 02:13:30', '2025-06-01 10:54:04'),
(2, 'Tổ ấm', 'to-am', 1, 1, '2022-03-28 03:04:11', '2025-06-01 10:54:37'),
(4, 'Bóng Đá', 'bong-da', 2, 1, '2022-03-28 03:22:50', '2025-05-10 07:56:16'),
(5, 'Chính Trị', 'chinh-tri', 7, 1, '2025-04-17 19:18:56', '2025-04-17 19:18:56'),
(6, 'Việc làm', 'viec-lam', 7, 1, '2025-04-17 19:19:23', '2025-06-01 10:56:19'),
(7, 'Tennis', 'tennis', 2, 1, '2025-05-15 01:54:40', '2025-06-01 10:56:56'),
(8, 'AI', 'ai', 6, 1, '2025-05-15 02:18:28', '2025-05-15 02:18:28'),
(9, 'Showbiz', 'showbiz', 3, 1, '2025-06-01 10:57:35', '2025-06-01 10:57:35'),
(10, 'Phim', 'phim', 3, 1, '2025-06-01 10:57:58', '2025-06-01 10:57:58'),
(11, 'Âm nhạc', 'am-nhac', 3, 1, '2025-06-01 10:58:17', '2025-06-01 10:58:17'),
(12, 'Thời trang', 'thoi-trang', 3, 1, '2025-06-01 10:58:38', '2025-06-01 10:58:38'),
(13, 'Tư vấn', 'tu-van', 11, 1, '2025-06-01 10:58:59', '2025-06-01 10:58:59'),
(14, 'Hồ sơ phá án', 'ho-so-pha-an', 11, 1, '2025-06-01 10:59:17', '2025-06-01 10:59:17'),
(15, 'Điểm đến', 'diem-den', 4, 1, '2025-06-01 11:00:22', '2025-06-01 11:00:22'),
(16, 'Ẩm thực', 'am-thuc', 4, 1, '2025-06-01 11:00:42', '2025-06-01 11:00:42'),
(17, 'Thị trường', 'thi-truong', 5, 1, '2025-06-01 11:01:02', '2025-06-01 11:01:02'),
(18, 'Vũ trụ', 'vu-tru', 6, 1, '2025-06-01 11:01:33', '2025-06-01 11:01:33'),
(19, 'Tư liệu', 'tu-lieu', 9, 1, '2025-06-01 11:01:55', '2025-06-01 11:01:55'),
(20, 'Quân sự', 'quan-su', 9, 1, '2025-06-01 11:02:14', '2025-06-01 11:02:14'),
(21, 'Quốc tế', 'quoc-te', 10, 1, '2025-06-01 11:02:35', '2025-06-01 11:02:35'),
(22, 'Chứng khoán', 'chung-khoan', 10, 1, '2025-06-01 11:02:49', '2025-06-01 11:02:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `email_verified_at`, `image`, `role`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$eL9ZKetaxQX/ZY80goRPpuL7HtXQFNyX.o7U34jV9pfguWQ6WKBlS', 'admin@gmail.com', NULL, 'MrGL-01a10c22a874918441059951f6015f3a_1092967721963204222.png', 1, 1, NULL, NULL, '2025-05-17 01:08:11'),
(3, 'trunggffDB', 'buitrungdb', '$2y$10$FsPbthIvNTEZS.XEyMK3UuZABj1osXy2oKnVlOw/11qp2tuah4RLK', 'trunghuce@gmailllll.com', NULL, 'Vn6X-baal4.png', 0, 1, NULL, '2025-04-07 08:25:46', '2025-05-15 20:25:47'),
(4, 'Lâm', 'Lam', '$2y$10$Vu4wk3XS.U4fqzpHWLYHdu7f0X7tiXAH2H75gPNi6CJ9iYnU/jCci', 'lamhuce@gmail.com', NULL, 'avatar.jpg', 0, 1, NULL, '2025-04-17 19:30:32', '2025-04-17 19:30:32'),
(5, 'Vũ Hữu Minh', 'Minh', '$2y$10$n18YdRjzH1I8K9C.2mk6r.rR0cEs341au1KRgQYr0UfnbbvUFJZaG', 'minhhuce@gmail.com', NULL, 'avatar.jpg', 0, 1, NULL, '2025-04-17 19:37:05', '2025-04-17 19:39:29'),
(7, 'datnguyen', 'datnq', '$2y$10$TyuI7fHkbYtb/2LLQNqfdO1zCFR3N0s1uIv4EAYNJXE2ZI8bHcDAC', 'datnq@dft.vn', NULL, 'HQm8-212d12e421963f8a66f95aece1182069.jpg', 0, 1, NULL, '2025-04-17 19:48:04', '2025-04-17 20:21:54'),
(8, 'Vũ Đức Lâm', 'lamvippok2002', '$2y$10$oVE4boMri9Z.cFlQIm1vh.lXzZyrG3YYWDrl0sMVsbYPR5WWAX86S', 'darkeula202@gmail.com', NULL, '7lJi-01a10c22a874918441059951f6015f3a_1092967721963204222.png', 1, 1, '5lQHPY2EGKgUuJDBmZEbdeIsQBG8EsuipTikzb4AI1C0pqbar9Dj0CfOY3gs', '2025-05-16 22:17:39', '2025-06-01 05:32:50'),
(9, 'vu duc lam', 'vuduclam', '$2y$10$xM8w0Yb.Aq/8i1LzrXKgFussgdkP5ogfqMK1zuLuEPRu27oELl1re', 'nhokreborn202@gmail.com', NULL, 'cDi4-Tran-Minh-Thu-tai-Hoa-hau-Vietnam-27-1748589549.jpeg', 0, 1, NULL, '2025-06-01 13:27:18', '2025-06-01 13:27:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
