-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 10:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rrra`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_content`
--

CREATE TABLE `about_content` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `paragraph_one_title` text DEFAULT NULL,
  `paragraph_one_text` longtext DEFAULT NULL,
  `paragraph_two_title` text DEFAULT NULL,
  `paragraph_two_text` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_content`
--

INSERT INTO `about_content` (`id`, `title`, `description`, `paragraph_one_title`, `paragraph_one_text`, `paragraph_two_title`, `paragraph_two_text`, `created_at`, `updated_at`) VALUES
(1, 'اعرف من نحن', 'جمعية تطوعية (غير ربحية) تهدف إلى تدريس وتأهيل ذوي الإعاقة في جميع المجالات؛ في بيئة تعليمية محفزة ومجهزة بكافةالأدوات والوسائل المساعدة, وذلك على أيدي كوكبة من أخصائيات التربية الخاصة المتطوعات في مجال تدريب وتأهيل ذوي الإعاقة. أيضاً تقدم الجمعية برامج تعديل  السلوك الإنساني لذوي الإعاقة, وخدمات التدخل المبكر, مما يجعل الطفل قادراً على التكيف مع من حوله, وإكسابه مهارات اجتماعية لكي ينمو نمواً سليماً كبقية أقرانه من الأطفال العاديين. نقيم العديد من الشراكات المجتمعية؛ لتحقيق مبدأ التعاون والتكامل وإقامة علاقات فعالة مع كافة المستفيدين من الخدمات المجتمعية سواء في التعليم أو غيره من المؤسسات والجهات الرسمية.  وقد تأسست الجمعية تحت إشراف وزارة الموارد البشرية والتنمية الاجتماعية بترخيص رقم 1416 في يوم 6 ربيع أول 1441 الموافق 3 نوفمبر 2019.', 'رؤيتنا', 'كيان رائد في الاستثمار المعرفي والاقتصادي  للمتقاعدين.', 'رسالتنا', 'الإسهام في رفع مستوى الوعي بأهمية خبرات وطاقات المتقاعدين وإستثمارها في برامج التنمية ورؤية المملكة 2030', '2022-03-17 22:44:44', '2022-10-01 18:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fourth_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fourth_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'جهة التقاعد',
  `retirement_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'سنة التقاعد',
  `qualification_id` int(11) NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'التخصص',
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_type_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'رقم الهوية الوطنية',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `paid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`id`, `first_name_ar`, `second_name_ar`, `third_name_ar`, `fourth_name_ar`, `first_name_en`, `second_name_en`, `third_name_en`, `fourth_name_en`, `employer`, `retirement_year`, `qualification_id`, `specialization`, `date_of_birth`, `membership_type_id`, `email`, `phone_number`, `record`, `email_verified_at`, `password`, `role_name`, `Status`, `paid`, `start_date`, `end_date`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdou', 'saied', 'fahim', 'shawer', 'الجمعية العامة للبترول', '2010', 1, 'هندسة البترول', '1993-06-14', 1, 'abdoushawer93@gmail.com', '01092716796', '7788990099', NULL, '$2y$10$bAiVjqq9nMGagNAOlv7/TOxmjuRk0iOUU1xICWbseJGqv9Y9r1Kri', 'مستفيد', 'تمت الموافقة', 'yes', '2022-11-20', '2024-11-20', NULL, 'utv9pARKSPCgN26aWXE1Nvo3YGZILVm3x4jfdtooMQKrEGr4wOsuLBTPTH4n', '2022-09-22 21:53:37', '2022-10-19 23:46:31'),
(40, 'صالح ', 'منصور', '', 'القرشي', 'Saleh', 'Mansour', '', 'Alqurashi', '', '', 5, 'قيادة وأركان', '1957-02-15', 1, 'smalqurashi@gmail.com', '0500887676', '1004291454', NULL, '$2y$10$.p/1qabsZuJBVMVqY6bRZeIlvTjPpxEsslu6M1e.BiDAlf9LnwWLa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2UAUVHbsKewRSu2J8B4Z1Oj6HlDP14ajlmgZtZv9QNyjmd3KbYaxZ2rJV72D', '2020-08-31 15:02:41', '2020-12-28 12:23:29'),
(41, 'مبارك', 'عبيد', '', 'القحطاني', 'Mubarak', 'Obaid', '', 'Alqahtani ', '', '', 5, 'تربية', '1960-06-25', 1, 'a.m.qhtani@hotmail.com', '0505464380', '1028972998', NULL, '$2y$10$EgwzhYrFasgUxK6qt7NYGOSQuvjVt5GOuoZQZja0M7jjLPUHny5SO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PBMMplcGM7HmQwoOd3DEfAc6tr9MF13aVllRPj6I8wKdfhCMJuZ5nctezQ3t', '2020-08-31 16:33:35', '2022-01-01 22:41:57'),
(42, 'حجي', 'محمد', '', 'الحجي', 'Haji', 'Mohammed ', '', 'Al Haji', '', '', 5, 'تثقيف صحي وصحة مجتمع ', '1951-04-07', 1, 'alhejjy@gmail.com', '0505454149', '1011206610', NULL, '$2y$10$9rLl3BOt8FQQviLtDnoVwOQlCEmV/oaAuQ4dFMxebqVxXC78J5zdC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hStbfxtbXvmQrOZNhN06cgA43ssmj47ojorMemQYhQ4sG11oUrduERGzFyjw', '2020-08-31 16:47:12', '2022-06-07 15:31:42'),
(43, 'فهد', 'معجب', '', 'الحامد', 'Fahd', 'Mujeb', '', 'Alhamid', '', '', 5, 'اقتصاد', '1955-02-23', 1, '2mayasim@gmail.com', '0542280064', '1001701760', NULL, '$2y$10$Kw2DCxE2ED/DScabzR42suPc1NymAzxyJJhCH4ozLoaFfKRulV5YW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eweD1gefth1orY2aN601Cs1A9vuMa4khyO1aZMHE9JNr4XWjj44yd2ljKPIp', '2020-09-01 01:01:39', '2022-01-05 13:23:42'),
(44, 'علي', 'محمد', '', 'الزهراني', 'Ali', 'Mohammed ', '', 'Alzhrani', '', '', 5, 'لغة عربية ', 'Invalid date', 1, 'aboanwar77@gmail.com', '0506057030', '1005102270', NULL, '$2y$10$OLHsxV94rnXm345ml5W0Bumhd5pY/oFlv/aKIYrzPCGJil1WKz0lm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'QwZtkwalCiu6I0Vo7iBMJtPs9xGxMsXFHK8DpkyjgJM3gTcbvLAGqaNaygrR', '2020-09-01 01:27:31', '2022-01-05 13:22:55'),
(45, 'سلوى ', 'عبدالرحمن ', '', 'الشهراني', 'Salwa', 'abdrahaman', '', 'alshahrani', '', '', 5, ' لغة  في الأدب انجليزي ', '1959-01-11', 1, 'Salwa.1.alshahrani@gmail.com', '0551126126', '1050095809', NULL, '$2y$10$g5iUhc6GDCLYveiVnMdpo.y5YMvKfBwOFc2xnZMIlz9gif9SO6t8u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '0KsEiOGyBXqGIYymk3sDjlSIocZ9tpMuOSTn1e0qhRcr6rzF3IS6bYhg7U49', '2020-09-01 02:15:15', '2022-01-08 18:00:11'),
(46, 'جميلة', 'عبدالمصلح', '', 'السويلم', 'Jamila', 'abdalmusleh', '', 'alswailem', '', '', 5, 'علم اجتماع ', '1960-12-19', 1, 'jmellah.288@icloud.com', '0509679929', '1019041167', NULL, '$2y$10$56BD96SSVIj/Jo.yPzWv2.VADnxApaiKpH24lB6yGlICpBAUYPekW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KM8tn7gGGCEH6BIgyOVe5mIXECmKbr5AdxSwFKG8GbPD7gPDLxk6RDnCGKqC', '2020-09-01 02:31:20', '2022-01-08 18:01:44'),
(47, 'صالح', 'محمد', '', 'الصحاف', 'SALEH ', 'MOHAMED ', '', 'AL SAHAF ', '', '', 5, 'بكالريوس في العلوم العسكرية', '1952-03-27', 1, 'Saleh.s1952@gmail.com', '0551111467', '1005592835', NULL, '$2y$10$QVqV2tn05uED/1CdFYukX.J1rPQ9f0UruQDvR/x1RJOQ3KDXrQ5xy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'L7zYgGkCOIDITsnNyVCn9zIUXM1iJduBcrSJgi625jMRSm0azAf9xW7DN24c', '2020-09-01 04:07:46', '2020-12-29 14:28:11'),
(48, 'سالم', 'عبدالله', '', 'العنزي', 'Salam', 'Abdullh', '', 'Alanzy', '', '', 5, 'ادبي', '1957-02-01', 1, 'Salam_558@hotmail.com', '0566730063', '1007928078', NULL, '$2y$10$Jw66AsqU8vhK6Iam14KNZ.yPzU/x7sGezU3vxyfyoZd4oUbMYniAK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zHg3ZRoQVgS88zDPSvA3QHZEcv0deaaLyTYEgS1bZDqvjKmNY3VoB5b5vqVc', '2020-09-01 05:05:17', '2022-01-04 18:09:04'),
(50, 'ابراهيم', 'عبدالعزيز', '', 'الحسين', 'Ibrahim', 'Abdulaziz', '', 'AL Hussain', '', '', 5, 'هندسة مدنية', '1956-02-13', 1, 'm.alhussain@windowslive.com', '0505472257', '1020256044', NULL, '$2y$10$jlzBDm35/y6wewHB/YW6muK0dDoJpAZlzuSphjBlodqDcFfz66MsO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'k5xA753Ehsrnruo1zpI2OJ8wSFh6h5Vk3rioLX68K5UvWJDdPv6ZyWQ2f5OS', '2020-09-01 13:12:42', '2022-01-08 18:00:38'),
(51, 'عبدالرحمن', 'عبدالعزيز', '', 'الحمدان ', 'Abdulrahman', 'Abdulaziz', '', 'AlHamdan', '', '', 5, 'هندسة كهرباء وحاسب', '1953-03-17', 1, 'rhamdana@hotmail.com', NULL, '1017139021', NULL, '$2y$10$mhpLnl24iRY.8NsRYDDqZO90LU2n28YwOzOZvXkSCd9VQLMIp4BQu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PkVUdKEGE2X3u1xhKNc5BvnM4yfQ6Xeswmkiro1QH3ufHEtEXZ0YhLuw8mMo', '2020-09-01 14:21:30', '2022-01-08 18:01:14'),
(52, 'عبدالرحيم', 'مشني', '', 'الغامدي', 'Abdulrahim', 'Mashni', '', 'Alghamdi', '', '', 5, 'علم النفس التربوي', '1948-04-27', 1, 'amsalghamdi@yahoo.com', '0550008811', '1031394628', NULL, '$2y$10$LJmmq1V5YR0JM6xUfAGhhuxFr9u.zOUhxrphFpPWrNA7P2e3CE7lC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nPQbHv69bMWu980yfYeZVfg5Uz68g7jIUblbIkQZXqbBJEHYPBUEtNmcBZK8', '2020-09-01 21:17:15', '2021-09-15 19:40:15'),
(53, 'سعد', 'عبدالله', '', 'الزهراني', 'Saad', 'Abdallah', '', 'Alzahrani', '', '', 5, 'إدارة وتخطيط تعليم عالي', '1949-04-28', 1, 'zahranis@yahoo.com', NULL, '1037813647', NULL, '$2y$10$R3t8wnPVOaZ4hyIREQ6.s.VNu.khA4y5BTbqHXVgTpsLImUMiysJq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'aEmqqt8Ob3PJHHdSLzdkoER7FZlfHPeIAY2Vk4Om6pqTZ6WEXCt0AYIls6fh', '2020-09-02 03:57:41', '2020-09-03 21:10:57'),
(54, 'عبدالله', 'عبدالرحمن', '', 'المقوشي', 'Abdullah', 'Abdulrhman', '', 'AlMagweshe', '', '', 5, 'تعليم الرياضيات واقتصاد', '1945-06-11', 1, 'amakoshi45@gmail.com', '0555460793', '1009121284', NULL, '$2y$10$KDTiMcfJsaBKoRlLth/dYe1b/5H23hlxotLJX5pdIABeuNTN5/mCa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gRzcywB2S3g4pn7GjIzuoiM0a4wjj7OM4bUEvaJLQ7IFw5eCdeCsS0zjjGCH', '2020-09-02 14:40:29', '2021-08-31 10:50:36'),
(55, 'محمد', 'عبدالعزيز', '', 'المحارب', 'Mohammed', 'Abdulaziz', '', 'Almohareb', '', '', 5, 'علوم امنيه', '1959-01-11', 1, 'Mam3737@HOTMAIL.COM', '0500915444', '1034366581', NULL, '$2y$10$l/jGE8y0tpZwFcm39rxx3OYCeG3/ri9w290d8Cj8FcjO52uELExum', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zGDznHTAcIf1k4rvoH7bnqlQvtXF7fCpWwc9ZwojJMjrcojB3YM7LIxKVZKi', '2020-09-02 14:42:34', '2022-01-08 18:02:27'),
(56, 'ابراهيم', 'عبدالله', '', 'العنقري', 'Ibrahim', 'Abdullah', '', 'Al-angari', '', '', 5, 'شريعة', '1955-02-23', 1, 'ea-sul@hotmail.com', '0114705381', '1000109197', NULL, '$2y$10$R0DHJys4x9Q4rLZRKjBCYeENJ1H20TFBrrFK1KEzXBiemYO4baZnO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'O7MCzkgsQ61o1D9ZIyejBLe6WTxyQWibKMcQX3kN9kcNdCpg0giwH9mwITUP', '2020-09-02 16:29:18', '2022-03-13 14:29:02'),
(57, 'تركي ', 'ماجد ', '', 'السبيعي', 'Turki', 'Majid', '', 'ALSUBIAI ', '', '', 5, 'امن', '1947-05-21', 1, 'tms1366@gmail.com', '0505809855', '1001974987', NULL, '$2y$10$lBRzIFSuqJDZDIIbbeRJ8.S8tV6AHplXP2WY.NmnoW4pMohJgezdK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ume5EbLcbcyz6BuJlGRIs3ZfYzo94mge8kClJ57fzNnSbw5gBguq36ZfgO91', '2020-09-03 12:05:23', '2022-01-23 19:33:54'),
(58, 'فاطمه ', 'سالم', '', 'الخريجي', 'Fatima', 'Salem', '', 'Alkheraiji', '', '', 5, 'تربيه خاصه', '1945-07-31', 1, 'sweetcat0505@yahoo.com', '0560732444', '1071064008', NULL, '$2y$10$ObUldZIRqOJjVT9YIs2nTe8f.DWvF3lFxOAi81ZlyT4hnEeQu305K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mpiFU4gabQ70Y5zzFcuzoyvtaZvqYH9trmsaiiWprsaROwIc7SvGZ2Q0lNXG', '2020-09-03 13:39:39', '2022-03-10 16:25:13'),
(59, 'فهد ', 'أحمد', '', 'الصالح', 'FAHAD', 'AHMED', '', 'ALSALEH', '', '', 5, 'إدارة أعمال', '1964-11-05', 1, 'Fsaleh@rdcci.org.sa', '0550254666', '1016601013', NULL, '$2y$10$SsOf0IzocGboBdft3TWS/u7AHTrei.jK4OMAny2vvwbl6y6vtiKfG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Q6iq62NptY3MRNOqrXpybroRt32BwiAx9cNE5I9o3eZOTJHmeFiHfayq5Gdh', '2020-09-03 16:14:52', '2020-12-31 13:52:30'),
(60, 'عبدالرحمن ', 'عبدالمحسن ', '', 'التويجري', 'ABDULRAHMAN', 'ABDULMOHSEN', '', 'ALTUWAIJRI', '', '', 5, 'إدارة أعمال', '1947-05-21', 1, 'emech222@yahoo.com', '0555457099', '1000455681', NULL, '$2y$10$D23h3g2dWMV8g.DCOz3psemj3gF8K1Ox35EhU7mZawBfq71zKM4Da', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8juqO6UymzqfKB63VYiGjqVNPw18EC5XjgJ2tLJrhRgGNGQ4Jw6AVhzjAe7J', '2020-09-03 16:25:38', '2020-12-31 13:54:16'),
(61, 'عبداللطيف', 'غصاب ', '', 'الضويحي', 'Abdullatif', 'Ghassab', '', 'Aldwaihi', '', '', 5, 'الاعلام والتنميه', '1960-02-28', 1, 'Abdullateef.aldwaihi@gmail.com', NULL, '1025008218', NULL, '$2y$10$qmIIT6h57lzC5NCz/Y3mkO4dcPciWElI7tWry8oXg0IGeVZljHqQa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KHHG3a3ekhf4Y7O1Kutq3VlPNQ6kOBWiTAZ9uXQY8a9zmGfgAd3cs9HuOXqH', '2020-09-04 09:57:23', '2022-03-13 14:35:26'),
(62, 'ظافر', 'سلمان', '', 'العمري', 'DHAFER', 'SALMAN', '', 'ALAMRI', '', '', 5, 'علوم عسكري وعلوم استراتيجية ', '1948-05-09', 1, 'ctech_mille@hotmail.com', '0503444336', '1006790370', NULL, '$2y$10$eagng4i1zPbrzzWFEvGjVua7kdDfEvMvyjwSPoGNvp3ExgiTmsfkm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ndE23IlUlRWDLEuccO8xIMzOYUki2PGNuCISJtKbqzZ2GmdOMBX6AQhV50OA', '2020-09-04 14:52:09', '2022-01-04 18:30:19'),
(63, 'علي ', 'أحمد', '', 'السلطان', 'ALI', 'AHMED', '', 'ALSULTAN', '', '', 5, 'علم أجتماع', '1939-08-16', 1, 'dr.alialsultan@hotmail.com', '0508966061', '1053557094', NULL, '$2y$10$AL9cN1JSKLWYyUmlAqfR8O5YaPPjgXDO6bSau.iBkHeByQRkNq9B.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fYrpmbLdRbNHgLmVpMnTnhGCXxkxuLroO1pGyFltZVS9eSK6yFl36oeoS0Rh', '2020-09-04 15:02:05', '2021-09-16 18:54:18'),
(64, 'إبراهيم ', 'عبدالعزيز', '', 'البعيـّز', ' Ibrahim', 'Abdulaziz', '', 'Al Beayeyz', '', '', 5, 'إعلام', '1953-03-17', 1, 'ibeayeyz@gmail.com', NULL, '1055913378', NULL, '$2y$10$yKQzgiJDmBP3owu8V9pfJO3TmGSPf.WNkk6AKjtyRl1ary9b4wUyK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wSAwFCo0y0prSnwhgPMEcTdPGU8tCXSV2KUN803rQv8jfLKpOmfYPEEpSdC6', '2020-09-05 00:18:48', '2021-07-31 01:50:43'),
(65, 'عبدالرحمن', 'راشد', '', 'الشملان', '  ABDULRAHMAN', 'RASHED ', '', 'ALSHAMLAN', '', '', 5, 'التاريخ الحديث والمعاصر', '1949-04-29', 1, 'shamlanabdr@hotmail.com', '0505456970', '1031225863', NULL, '$2y$10$VFS2H3AXFK2QYzOOWIgRvOsghsIaf8qEGQ.XAhUJ3.TjCC13NARdy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Bk6vV71yeI8dy7AMe9HGldOSWRpK4rYN6mzjJidJdoFH4ilQ8b8vrdWDxFsv', '2020-09-05 15:16:34', '2021-07-30 05:29:05'),
(66, 'عبدالله ', 'حمود', '', 'الجنيني ', 'Abdullah', 'Homoud', '', 'Aljunaini', '', '', 5, 'هندسة مدنية ', '1948-05-10', 1, 'aaljunaini@gmail.com', '0555445590', '1006369621', NULL, '$2y$10$33hKIZH4NQzVmdabPH1.N.yflpIyu6DF1v.vA4EypAWaGHduHYSna', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Q6PeSpjnIoBF5mWOhqJ0G6wLj0sYaTjgnCg9KATTvTBSAYki2H3YJdkvGDbY', '2020-09-05 17:33:17', '2020-09-05 20:55:18'),
(67, 'عثمان ', 'سعيد', '', 'العمري', 'Othman', 'Saeed', '', 'Alamri', '', '', 5, 'ادارة مرافق صحية ', '1940-08-05', 1, 'Dr.amrio@hotmail.com', '0550003594', '1029060959', NULL, '$2y$10$vHs1lRopaWpvJGxBiq6/wekceI6Miw8RBvTKEL.wUlbTYdGFlo0G.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qQv93WkeD1HoyXpuVF7I74Ot5z1t5r1xyKVRe9Ue9vM97yj3kJUDvegkP4r2', '2020-09-06 00:37:57', '2022-01-12 22:33:18'),
(68, 'البندري', 'عبدالعزيز', '', 'المقرن', 'ALBNDARY ', 'ABDULAZIZ ', '', 'AL MEGREN ', '', '', 5, 'إقتصادية', '1960-12-19', 1, 'albndary2749@gmail.com', '0532276253', '1031127895', NULL, '$2y$10$cHv95TIWRhxatFZHVPlcIelsqYCLu3Cf8mtYYcyIF9bukR0KwmGZy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wTldGcrvofnupsYZs58qyM33HbnrjdEhMO4mmp8c1X0JOiayjkWrS478UhuS', '2020-10-07 21:37:16', '2021-10-31 19:48:56'),
(69, 'سعيد', 'محمد', '', 'الغامدي', 'Saeed', 'Mohmmad', '', 'Algahmdy', '', '', 5, 'قياس وتشخيص وارشاد', '1958-01-22', 1, 'sm.alhamzah@gmail.com', '0505232907', '1010569299', NULL, '$2y$10$jShTDzwFBNhQetKq1HZnzeDhWfT.EIRIF53hNVGKjQWxyqBnYMTAe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MvsYAK2Vd6zUCCZB25Fdci0JpBx2Uuy0gZtpyawiIdEVlHliiejOj9wByvb9', '2020-10-07 22:10:47', '2021-11-15 13:42:03'),
(70, 'منى', 'محمد', '', 'الحبيب', 'Mona', 'Mohamed', '', 'Alhabib', '', '', 5, 'تجاره', '1962-10-13', 1, 'mmah01@hotmail.com', NULL, '1011747399', NULL, '$2y$10$SnR53p7YhbpL0wbqwmL1Oe/hMT3TOoWpw37RWVIFKS3FTAcd0kdu2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3uCeQ1ZKMeNSuz4DeREb0N4Ex3yDsuMATsiI5rRa2JTYVKN4mdSJLJkPgBI0', '2020-10-08 01:49:39', '2021-11-11 17:50:09'),
(71, 'حمزة', 'محمد', '', 'قصاص', 'Hamza', 'Mohammed', '', 'Gassas', '', '', 5, 'اعلام علاقات عامة واعلان', '1958-01-27', 1, 'hamzagassas@hotmail.com', NULL, '1054271331', NULL, '$2y$10$Q/8NpKyAW.EFgXdD7bzkIusm5ckcnD3IHQXND42vxruaKPQcjU0ay', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vBszCi1TpP6Xpxc3brHpyMz7mFjuy5stqgQHI0wpaBUXu1RVtzlYjDdz1M9w', '2020-10-09 15:17:53', '2021-11-26 19:28:52'),
(72, 'خالد', 'خاتم', '', 'العتيبي', 'Khalid', 'Khatem', '', 'AL -Otaibi', '', '', 5, 'انظمة اتصالات بعيدة', '1964-11-05', 1, 'qr511k@gmail.com', '0507777633', '1011166939', NULL, '$2y$10$BdocLEgeRQez4kElKOP94OhTIcpUPa98C9y3J/GCReeN/1Dus8E5y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Nui547LEhCvGdJtw4xM9C4rId6PI5IzZgIqPz5hc3dab5y9GCJplKQaqVo3h', '2020-10-11 15:50:25', '2021-10-05 15:42:05'),
(73, 'نعيمة', 'عبدالله', '', 'عرب', 'Naeemah', 'Abdullah', '', 'Arab', '', '', 5, 'متوسطه', '1946-05-31', 1, 'na_arab@hotmail.com', '0550559456', '1013592421', NULL, '$2y$10$zm.zaZ9FEBy8tlHaIuDPYOMg3EZE/t3D5QTghmcITojLrukvJ5tEG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZkHo7DbA1Mei8Fm8ybxrEJWJA7Vaq42UXDA3VLVcCWikuHSBq2YHunHBdrNn', '2020-10-12 18:51:19', '2022-08-03 10:54:20'),
(74, 'عبدالعزيز', 'عثمان', '', 'المسند', '', '', '', '', '', '', 5, 'عقيده ومذاهب معاصره', '1959-12-30', 1, 'aziz2900@gmail.com', '0551310101', '1011279773', NULL, '$2y$10$QNpe/uKbBxaJThiHAgbcX.Y./9fBFG9dhHGTGZlkzpZFwZKMWo4ZG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'z05Nowdjjf4LcYPs6c4Ynlm1Xygomb5s65jsL7zTDNC8BtVPvx3fOjJxXs66', '2020-10-12 22:58:30', '2021-10-05 15:48:18'),
(75, 'ناصر ', 'صالح ', '', 'العتيق', 'Nasser', 'Saleha', '', 'Alateeq', '', '', 5, 'ضابط', '1967-10-04', 1, 'nasser-ateeq@hotmail.com', '0553229692', '1027823135', NULL, '$2y$10$tUrVjYO5d0A9dWNOC1.ULeE/qqulRfllCHM19Xu49OARrNfjrk1/.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4KzNh4QZureRFmULR0Xnjz8kIZfd9Frq1w4i6q6MwzOne5rA0OK8edYbS9XH', '2020-10-13 00:49:15', '2022-08-28 11:26:48'),
(77, 'عبدالرحمن', 'سعد', '', 'آل خليفة', 'Abdulrhman', 'Saad', '', 'Al khalifah', '', '', 5, 'دراسات قرانية - لغه عربية', '1957-02-01', 1, 'asmm48@hotmail.com', '0563450947', '1039713167', NULL, '$2y$10$mwusgVDh5VNiCCzbWw5AD.GAVrlun8Z9LjWUEOWhoeAKhuWmalyXi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WWz4hbLS7YNZD5Ye1IgLmv6gp41ualjEynzB8UtLiZkZifKOVKKBcbYRr00N', '2020-10-13 15:50:27', '2021-10-27 23:09:31'),
(78, 'سعود', 'سعد', '', 'بن حريول', 'Saud', 'Saad', '', 'alsubeai', '', '', 5, 'الثانوي', '1958-01-21', 1, 'saudhriwel@hotmail.com', NULL, '1000281913', NULL, '$2y$10$fMEVmxsap3OjxCag.gxr.OoFp.LYQqt5Q7WDPLccB7ywfFy5HG86S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KbNN0Cmj652QytzFIjnpvI5A6BOVMZ3u4e9h07Sn80bVcJYz9KIQ5v573tG3', '2020-10-13 17:00:46', '2022-01-01 22:11:25'),
(79, 'فهد', 'عبدالله ', '', 'المتعب ', 'Fahd', 'Abullah', '', 'Almotab', '', '', 5, 'أداب ', '1959-01-11', 1, 'falmazyad1@hotmail.com', '0503448055', '1053106694', NULL, '$2y$10$gRLnFsbTgEXCz2eK0SJ7YuRjpU9vrZW.WL/J8CsqTFEui/TiN7w4m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PXLxArg9moFBVDesLxNdxVwHTMQbuQu52PwEt2YqHpp5VKDEnqnePYwSIUNF', '2020-10-13 17:06:40', '2021-10-29 21:24:02'),
(80, 'هياء', 'فهد', '', 'المطرف', 'Haya', 'Fahad', '', 'Almotref', '', '', 5, 'تاريخ', '1963-11-17', 1, 'h-almotref@hotmail.com', '0505253471', '1021903800', NULL, '$2y$10$0mJkFcHnvgVyrtJZLADdUu.ZMJ6N8cWOaqkUc.yFUCICdOCZamv8.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '77Cbvvv4Z9Aa0KojpZk1vgBjL0s1MHD3IuoTFAsiSz0ApL0OXfpJQAc58HQn', '2020-10-13 21:35:37', '2021-01-19 13:17:04'),
(81, 'حصه', 'عبدالعزيز', '', 'المرزوق', 'Hassah', 'Adedalazyz', '', 'Almrzoug', '', '', 5, 'رياضيات', '1960-01-01', 1, 'Hassahm2090@hotmail.com', NULL, '1023530601', NULL, '$2y$10$f.cjUeDlT2tII9uErT9t1.6neuwjmeOk2YQX2MDTLkNg4IaCqwIDO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NCBIlPHUD7pBhuQLObsYcfq135pfBTq45iaoAY5mFfCOYOYs3btGtCPhYpJl', '2020-10-13 22:08:33', '2021-11-22 21:05:08'),
(82, 'إجلال', 'حسن', '', 'كردي', 'Ejlaal', 'Hassan', '', 'Kurdi ', '', '', 5, 'معلمات ثانوي', '1960-12-19', 1, 'Ejlaale@gmail.com', NULL, '1029573449', NULL, '$2y$10$j3kM9hESZrragczDG1Vt3.7kxCKrf8ZcE2YFqYW69zDgAf9jyzDkC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3SPiTpbn0tggrjQKIbM2pDABIZQJoRPBCQmHxsC4hcStXqTStiF6e7LYasNi', '2020-10-14 02:39:42', '2020-10-15 12:34:41'),
(83, 'علي', 'محمد', '', 'الوادعي', 'Ali', 'Mohammed ', '', 'Alwadie', '', '', 5, 'ادبي', '1956-05-15', 1, 'avv-122@hotmail.com', NULL, '1002183398', NULL, '$2y$10$BKyi/olAg4AMol.ZdyRmcOdH/QOwR0cWpRswxCzQ.R3naXFHMT9tS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dMs126PXn1GBVpj3kZBh6Z0fEldLqoinabwd42t206NxLnXTCenbYSQDrjxE', '2020-10-14 08:05:55', '2022-01-27 10:12:43'),
(84, 'سعد', 'محمد', '', 'القباني', 'Saad', 'Mohammed', '', 'ALQABBANI ', '', '', 5, 'ادبي', '1953-03-17', 1, 'smq1372@gmail.com', '0505403014', '1050026531', NULL, '$2y$10$y9M32lcZpLFGksE9qD/eM.6iCcA7/Gey7V9bx6mooOC/4J6UuiXbG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '36IGj0QqICHK2Fdorn3Hm1fFHkvK2M7KUWtP1Fbvry8uqUjCTqHltrySWPA0', '2020-10-14 16:40:03', '2021-10-30 20:01:14'),
(85, 'سعيد', 'عثمان ', '', 'الغامدي', 'Saeed', 'Othman ', '', 'AlGhamdi', '', '', 5, 'صيانة وتشغيل الاستوديوهات التلفزيونية والاذاعية', '1958-01-21', 1, 'soghamdi@me.com', NULL, '1002261152', NULL, '$2y$10$Z3bYkrGrXpBIr9jFLOkqc.XRB6HMlpB038YaW6GVZIpIK4yUFsw0C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'J1XZqCWGJuOCcB6Qoe3lyszsXiB0v0V0UVPkublllHc1HkIqm9ohRavf9Cmm', '2020-10-14 17:32:50', '2020-10-14 17:32:50'),
(86, 'سعود', 'ناصر', '', 'العريفي', 'Saud', 'Nasser', '', 'Alarifi', '', '', 5, 'عام', '1960-12-19', 1, 'saudbshr@gmail.com', '0505436369', '1038674496', NULL, '$2y$10$r1x..NbySrXzMu61zQDl0uT.jbkHBfyaacpEdssokilSqIVXIUA/K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gW0qLeZrkwt8BumY07ixzDsbTeLs2AjonpZpPjfO4tdsZymL9y071gYDiEVO', '2020-10-14 18:09:18', '2020-10-15 12:38:44'),
(87, 'عبدالعزيز', 'محمد', '', 'العبدالوهاب', 'Abdulaziz', 'Mohamed ', '', 'Abdulwahab ', '', '', 5, 'شريعة وقانون', '1955-02-23', 1, 'aziz.wahab@rocketmail.com', '0505112083', '1034473627', NULL, '$2y$10$2jYrhjmgkHeNhVJHKCp8LOwNekAwo9CxZvE3pA6kbtCTbTrpzhHvG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DQxFMWhUuJa4KwG9gkocXQQawxAgt1MA2PnQsK4yzI9OZKEnQjUYI2f062dv', '2020-10-14 18:41:19', '2021-10-23 18:55:01'),
(88, 'علي', 'عمر', '', 'باقازي', 'ALI', 'OMAR', '', 'BAGAZI', '', '', 5, 'فيزياء', '1959-12-31', 1, 'alibagazi@gmail.com', NULL, '1027830064', NULL, '$2y$10$vnE5jTXlzfM0iZIAmYoXgejImPHhHv4GgRFRKGIlxVdWHFdTsGw3W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FHe6eypLGjgwGCOkUAa0pyt4cTykSTjeguQ6mpox4NPmFNiCH7hCDx9PfIg9', '2020-10-14 18:54:03', '2021-10-25 20:40:11'),
(89, 'احمد', 'هذال', '', 'ال شردان', 'Ahmad', 'Hazal', '', 'Al shardan', '', '', 5, 'اجتماعيات', '1960-12-19', 1, 'ahmadhazal12@hotmail.com', '0576668500', '1046397772', NULL, '$2y$10$/41Dh4jRE4r0tx8LMDfcCucFPqDvn20BXMHz9TU7wy/TG/sM6OEAa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IOCnuaiO4qOmkpVzBnommORcx3eTNBdvDgeGstKtEFSIGkzxc7Xco6VeDaAQ', '2020-10-14 19:01:13', '2020-10-14 19:01:13'),
(90, 'عيسى', 'عبيد', '', 'الحربي', 'Essa', 'Obead', '', 'Alharbi', '', '', 5, 'لغة عربية', '1964-11-05', 1, 'alharbi1385@gmail.com', '0505459395', '1026750891', NULL, '$2y$10$ykriFi/4/i7TmS6uUCaON.mGyXchBNLnpsqaf9wKqnaVwNPCSOIAO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xUoiYv29kwyvBn5pgqeo5p1vHo5N8hfsWrshgZIAK2TzmJrEBq8CQN8zhvdN', '2020-10-14 19:22:28', '2021-11-22 21:14:20'),
(92, 'ناديه ', 'عبداللطيف', '', 'الجبر', 'Nadyah', 'Abdullatif', '', 'Aljabr', '', '', 5, 'ادارة مستشفيات', '1964-11-05', 1, 'Nadyah.aljabr@gmail.com', '0555401771', '1001403276', NULL, '$2y$10$q0sKybcB86c.emUp7YQZZeckjUv/FeQRchqGXgraqagJ5uot8xJCu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nWIzRV2HOQhQBRasHovckWIo85L6Dx49KVIi51eMuklvlmp6E20ZAkuK3TIY', '2020-10-14 20:28:04', '2021-10-25 20:14:02'),
(93, 'ابراهيم', 'سعد', '', 'الرشيد', 'Ibrahim ', 'Saad', '', 'Rasheed', '', '', 5, 'اقتصاد', '1945-06-11', 1, 'Irasheedksa@yahoo.com', NULL, '1026658847', NULL, '$2y$10$/WzGUBu1CzCYfUGP7nl0AeilurR5344kAzfnn3QByQrzRpbOYxdt6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3pwrCXMVOxjXBch7VchmTtdXhab6kmFVLyQcgHv2GeNRxU9TB3Y0XzB4WKnO', '2020-10-14 21:08:21', '2021-10-10 09:27:17'),
(94, 'الجوهرة', 'حمد', '', 'الفهد', 'aljwhara', 'hamad', '', 'alfahad', '', '', 5, 'لغة عربية', '1967-10-04', 1, 'dp.0v0@hotmail.com', '0564312241', '1022706582', NULL, '$2y$10$lqfMSymRX3tWWxfd.ygb/u2t7Jx2A/yS/3V2SYbzK/17L0dT8BTVi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eU1mKiEIKBBkOrqhSNXb80CqrQvyyiyUvAlbgmwSfqg7aMVl99WRuh63Oi0C', '2020-10-14 21:31:47', '2020-10-15 13:30:59'),
(95, 'علي ', 'متروك ', '', 'الطويرقي ', 'ALI', 'Matrouk ', '', 'Altwirki', '', '', 5, 'هندسة كهربائية ', '1964-11-06', 1, 'alifox99@gmail.com', '0555449527', '1028928016', NULL, '$2y$10$b847aS4tTTR4AGUL.Pao4.skvzaxOYQL5Lca80aUekTVRFFOQs.bi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '13B17R6KcQyoSd0NmlFfyFIhwOycIRLje9SeZK8PvyySKBYAe9QOUvbRBn6D', '2020-10-14 22:14:39', '2020-10-15 14:19:59'),
(97, 'عائشة', 'محمد', '', 'الخميس', 'Aysha', 'Muhamed', '', 'AlKhamees', '', '', 5, 'رياضيات', '1963-11-17', 1, 'aysha.alkhmees@hotmail.com', '0549990002', '1031761032', NULL, '$2y$10$0Hc1kYrGEsBMq5HSTCp2oODJHVwu/YfMzQejIIkykP6lsAgqv6nce', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jxW4BcWQvwFOAhXkxzXOzrzOjwf3plJA2LixkzgtSFm9uRdQqow9suq56mtB', '2020-10-15 01:11:47', '2021-10-25 20:12:57'),
(98, 'حصة', 'فهد ', '', 'المحمود', 'Hessa', 'Fahad', '', 'Almahmoud', '', '', 5, 'رياضيات وعلوم ', '1959-12-30', 1, 'white.coffee.riyadh@gmail.com', '0558784444', '1001677135', NULL, '$2y$10$sl6N3Ok/0wCglmMvgZJnuOPDb0zrRr75iP6iELitzT4Z1yvb6J1b6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3RercvGI0L7tm9pltfFbpATLBu4FCyUEJzrhvmF4XueAX9viLCZD3Pd6nFIU', '2020-10-15 01:31:47', '2021-11-08 21:02:55'),
(99, 'فوزية', 'علي', '', 'النزهة', 'Fawziah', 'Ali', '', 'Alnazhah', '', '', 5, 'دراسات إسلامية ', '1961-05-10', 1, 'Fa001n@gmail.com', '0569687880', '1039379548', NULL, '$2y$10$QobJUER5sx6Uyo8wShuxte3KjtrW86HMq15ABocROVMgqm/bv7oHW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BAeeDq20S5p0OQXO22VLLMEDY6992S7EYfr0Sr2ufC04mYSTf0wW24HHPr5u', '2020-10-15 03:08:55', '2021-10-31 20:02:08'),
(100, 'هيا', 'عبدالعزيز', '', 'ابونيان', 'Haya', 'Abdulaziz', '', 'Abonayan', '', '', 5, 'خدمه اجتماعيه', '1960-12-19', 1, 'kmd_2013ksa@hotmail.com', '0544070787', '1070512585', NULL, '$2y$10$FgFxW9l5z7aNuBoe5HZWeOmqrplnB08Ko4HMfsQr38mdisZ9QjwmG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'JFa5NQtveREMMkPcJATc5RdYmDt1tcD7HZPK3Irw8rsQAEbRd6AO3tLNWU8Z', '2020-10-15 05:23:31', '2021-11-30 14:35:07'),
(101, 'فهد', 'صالح', '', 'الرصيص', 'Fahad', 'Salah', '', 'Alrusayyis ', '', '', 5, 'هندسة كيمائية', '1948-05-09', 1, 'abdulaziz.112492@gmail.com', '0566886118', '1015100751', NULL, '$2y$10$SV0c9WJGXYya/2WQ87Zjr.klIIfgs4NT1b6gkVoD84/18xOOKMN6y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4iEiQLPoisoUpGJHu8kOLouv7BjZE78j9NgfOisA1hdb9cBWgEckaJkgd5pZ', '2020-10-15 10:14:57', '2021-11-30 14:40:48'),
(102, 'هياء', 'صالح', '', 'الرصيص', 'Haya', 'Salih', '', 'Alresays', '', '', 5, 'درسات اسلاميه', '1959-01-11', 1, 'Maha-1988m@hotmail.com', '0500509946', '1011433628', NULL, '$2y$10$WFpnqOEicLJHOJhFcP/WuuLVcPCjhTWmc6rMrIs.CT963xxD70yy6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IMHf1p5OSMW2DfsVbUFgOtpVt4qPjWeLHnyuQMpwQm22XtCRwLLhtzUrIoCI', '2020-10-15 10:18:21', '2022-09-12 14:24:43'),
(103, 'يوسف', 'عبدالله ', '', 'الغماس', 'Yousef', 'Abdullah ', '', 'Ghammas', '', '', 5, 'هندسة كهربائية ', '1973-07-04', 1, 'yag50432@gmail.com', '0569469296', '1037749767', NULL, '$2y$10$uoQZAWRF40MscOUzuvcsc.FMlfoPRoe08ZAqG9JwCkcoRqZ8r6CbW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'spHSMWEoQ6puIp9fAPgTfdR9HfqvSJjD6mhjCJsGUou97hH7jqLuvLqvrIqp', '2020-10-15 12:06:37', '2020-10-29 01:53:31'),
(104, 'يحي', 'صالح', '', 'العبيلي', 'yahya', 'SALEH', '', 'ALOBAYLI', '', '', 5, 'صحي', '1954-01-20', 1, 'yahya1373@hotmail.com', '0583310316', '1001034238', NULL, '$2y$10$f/n7mo88n.7JwqIIVpKaNuPwJdRiM.kzIQ59cUZ129p1qo6xfp3EC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1mpMVuQGd7mlbaomDx7Ok46Rzh7bDLnS3OJqaOfxkeb68LvHzGANEYqJRBnC', '2020-10-15 12:22:27', '2021-12-01 16:14:18'),
(105, 'وفقه', 'علي', '', 'العبيلي', 'WAFQAH', 'ALI', '', 'ALOBAYLI', '', '', 5, 'حارسة مدرسة', '1960-12-19', 1, 'wqfhalbyly@gmail.com', '0555255672', '1001034246', NULL, '$2y$10$u2jNBBGorhPBCOZ6dzKQxOhC5NKcmtuO2ZEOhmAK9F8RWTNRfRdry', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4LFZCKMGJPQMvVTiW0eW55xHueP9mg3MPISJ6A5dwoIZ8YRXDwhPQx3ENAJ6', '2020-10-15 12:31:51', '2022-02-24 06:13:38'),
(106, 'جوهرة ', 'صالح', '', 'بن داود', 'jawharah', 'saleh', '', 'bin dawood', '', '', 5, 'ادارة اعمال', '1967-05-10', 1, 'egyptgiza85@gmail.com', '0541155355', '1007619974', NULL, '$2y$10$exEB1gmhDwltvhGnA/PqQeGuEq25kf5Az1aTvr.rwpbPDRaIELQbK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'V41LxNlfDBYNULztbHmtPGcAbJ9DgDSuJfUMYY8NdxKdxP6ZjAENmIoLABvy', '2020-10-15 13:15:01', '2021-09-19 16:12:00'),
(107, 'لطيفة', 'سلطان', '', 'السلطان', 'Latifa', 'Sultan', '', 'Alsultan', '', '', 5, 'احتماع', '1957-02-01', 1, 'Laalsultan@hotmail.com', '0556246263', '1112010663', NULL, '$2y$10$UxKAYTrWyHpPNVOzHwJjCedxXSRkZFXGQ32xIBBM4IGHtsVeJqn22', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Nvbng9NHcK0h0c88uibnv8JZroZ2KlAsgzJZuJcfOKBsZCCxlkC7x7dquh8U', '2020-10-15 15:37:30', '2021-10-23 19:20:29'),
(108, 'صبريه', 'محمد', '', 'العاشوب', '‫‬‎sabrih', 'M', '', 'Alashob', '', '', 5, 'رياضيات', '1964-11-05', 1, 'sarab20_08@hotmail.com', '0590886988', '1016079392', NULL, '$2y$10$F7KfQTAJcWQp/iFu6m6GYuoCJSKhpK2tJAm1C3rgM1MGN1uVA0dv2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'rJMawfmOaWSlGud0WiNzvsEHgeVrD8xpq6TFHCbGnei8oySVL56na7HKV7vE', '2020-10-15 16:15:45', '2020-10-15 23:49:00'),
(109, 'هيا', 'عبد العزيز', '', 'البابطين ', 'Haya', 'Abdalaziz', '', 'Albabtain', '', '', 5, 'خدمه اجتماعيه', '1959-12-30', 1, 'hayaalbab10@outlook.com', '0555450875', '1043805926', NULL, '$2y$10$ZC0ZS29zScXRUpeMJEwbdO9powqm6ehPjkGkp1clH2E/dRqL2swWS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'e5GXQ3Vl4h8ycZxLxlEEkNwTgdVhvzoEtcGnBvkLe6PV1R9HKqxvZS8wfOSN', '2020-10-15 16:28:27', '2022-06-02 19:03:54'),
(110, 'هيا ', 'محمد', '', 'بن عتيق', 'Haya', 'Mohammad', '', 'Bin Ateeq', '', '', 5, 'تاريخ', '1961-12-09', 1, 'h.alsuqaihi@gmail.com', '0591699211', '1041442854', NULL, '$2y$10$5DX2iT73XEwtwR.0tltGHObcPoGkO.o2aprKhR.seA5M3mIGQbbna', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'p8Va3IPSDKk0yp8rRFeqQjwnYfMyeVLOoGBoISGj4W4icBqER517iRDvYDfC', '2020-10-15 16:47:33', '2021-11-22 21:07:05'),
(111, 'امال', 'سلطان', '', 'التركي', 'Amal', 'Sultan', '', 'Alturki', '', '', 5, 'دراسات اسلاميه ', '1960-12-19', 1, 'Amal.sultan.t@gmail.com', '0555289076', '1024305599', NULL, '$2y$10$74m6FdujeqHghco0zKUN8.Yp4bC0fyOgQYAmAC.14nQnYnBkei3xG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PYFzddlBgxq7ZcvNxPSuVYPkaJf6lCzzVAA3OoJWU6wzkwwZpGNpERbEChUg', '2020-10-15 16:47:54', '2020-10-18 17:10:30'),
(112, 'جًواهر ', 'عبدالرحمن ', '', 'العويس', 'GWAHER', 'ABDALRHMAN', '', 'OWAIS', '', '', 5, 'دراسات اسلاميه', '1959-12-31', 1, 'gwm1400@gmail.com', '0505207507', '1004409304', NULL, '$2y$10$FK0g2i3ItoSwhV3GhU4OB.T9gnhc9dEzVqlGPRO0UbXHFBRmCez/G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8CruLxbnFkAywef5aHJoqbKXFLA7usSwNgcl3ulTL4QkyzI446oihGWRXQPM', '2020-10-15 17:19:58', '2020-10-18 17:19:57'),
(113, 'نورة', 'سالم', '', 'بامسعود ', 'Noura', 'Salem', '', 'Bamasoud', '', '', 5, 'ادخال بيانات', '1959-01-11', 1, 'Norahsal37@gmail.com', '0536048076', '1050083276', NULL, '$2y$10$1ODft1lu6iH8STWj6AVkFeWBQoSvuMTrL2jLZDK8btzlpX1ajQP3m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qESzhiacGrdcQ9MDIJIXbD3iY7UJJP6BzXQr9cRJiuLQvAsq4GmgbgQrUG8O', '2020-10-15 17:55:31', '2021-11-27 23:45:49'),
(114, 'عبدالله', 'عبدالعزيز', '', 'المرزوق', 'Abdullah', 'Abdulaziz', '', 'Almarzooq', '', '', 5, 'علوم عسكريه', '1958-01-21', 1, 'azz1377@hotmail.com', '0561500388', '1001702008', NULL, '$2y$10$JGG5uSVWkSHVa1qAP5nVzeDfzVL/DHLREftTbQw5VwnD7/gjtpstq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'o8uSi3DqqARlXgRd4fKGNKTeI2kayLqjzxuowAnEocuTHW5hjzSyjX2KCzyK', '2020-10-15 18:36:15', '2020-10-18 13:15:11'),
(115, 'مها', 'سليمان', '', 'الجهني', 'Maha', 'Sulaiman ', '', 'Aljohani ', '', '', 5, 'ادبي', '1959-01-11', 1, 'mahaaljehani7@gmail.com', '0505400699', '1021528615', NULL, '$2y$10$xr6uz7t50IccM8jabOHjD.ZqjkAVT70ihO0Gv67tRpCM2t7NlTxVa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AVFWGvQbF5FFWEHewc5o9CtwkPMqG43zmHDOvTEUiHKZcUtEjDeMxXtnuBQL', '2020-10-15 18:56:07', '2020-10-15 23:44:06'),
(116, 'محمد', 'سعيد', '', 'الزيدان', 'Mohammed ', 'Saeed', '', 'Asiri ', '', '', 5, 'علمي', '1954-03-06', 1, 'abo.al.hash@hotmail.com', '0550826369', '1020586093', NULL, '$2y$10$QwwbhlB/XME.JtGyyZU85eZlIHJZcQV.tP/yP93KS7.ucWydyST3.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'T9oYVUXcF5yTHWQIAnjLgCQAwgfpcDeytMkGdwhZcEqVhE9kP6X7KtM6HMF2', '2020-10-15 19:15:31', '2021-10-05 17:49:16'),
(117, 'عبدالرحمن ', 'عبدالكريم ', '', 'المشاري ', 'abdulrahman', 'Abdulkarim', '', 'ALMASHARI', '', '', 5, 'صناعي', '1943-02-26', 1, 'arakam1362@gmail.com', NULL, '1013612393', NULL, '$2y$10$ncknsvO2zVwVnYeOZ2LK7uBb.2BGrJxYPdVHHcQPLgkasQ6fngrd6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CMhFwHwflIU7jXhmaLo0s9zhXrOc0o68J8Xi2523h7y5dnCnNwI1JihKn7tf', '2020-10-15 19:15:32', '2022-09-21 15:06:33'),
(118, 'أسماء', 'موسى', '', 'الحميقان', 'Asma', 'Mosa', '', 'Al hmigan', '', '', 5, 'ثانوية معلمات', '1956-02-13', 1, 'asma1375@hotmail.com', '0505442255', '1044146908', NULL, '$2y$10$OW07HvPSKejnuhJWVF.2oeCM0XqrsTL8jkErJrKlGxLQDX4klJdkG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dZvrKlVmAsxuiNs3pOm5TB32Ro4WVHUKmQ1qOgEB4oOhG795DW48pqROauIS', '2020-10-15 20:03:57', '2021-10-27 23:51:47'),
(119, 'عناد', 'سعود', '', 'الخمعلي', 'ENAD', 'SAUD', '', 'ALKHAMALI', '', '', 5, '-', '1970-09-02', 1, 'enadsq@outlook.com', '0543344949', '1055972895', NULL, '$2y$10$zw84zmDYX19mm7obI/KZZOJD24nRr39RWlLHDnY6uYEGTnWg93UpG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'M9h1xdAGfiGYIAe759Vk9gBz08VrOGPAqPB2nbbw9diMImephTPGOl9LFyuU', '2020-10-15 20:16:59', '2020-10-29 01:51:00'),
(120, 'نوال ', 'عبدالرحمن ', '', 'القميزي', 'Nawal', 'Abdulrhman ', '', 'Alqumaizi ', '', '', 5, 'ادبي ', '1966-10-15', 1, 'sarahal-g@hotmail.com', '0538999573', '1036346771', NULL, '$2y$10$nrT9bEaa7lE4hHbBEDtsxuGDRMg99y7wOdFR1.HeiW0sg4zIIm9gC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'C2UpjFsErjsfmZrZM0uwLreVdJV3YI2f7K3eHo3SzzRY5A9uGslbDBMN3R3A', '2020-10-15 21:40:42', '2020-10-29 01:55:14'),
(122, 'مهدي', 'حسين', '', 'اليامي', 'MAHDI', 'HUSSAIN', '', 'ALYAMI ', '', '', 5, 'هندسة طائرات', '1953-03-17', 1, 'mhyami@Gmail.com', NULL, '1045891890', NULL, '$2y$10$UKD1h.K/ELTJJp9ptV7PMey.jAef7kuq2mGKlWeN5xkO7zWB9a8hG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Oh7URSkGNpWY4Xwi1GqLnZWBR7CPEoiGL1kdhU6SO2sC2v8NfFVr43PDDehs', '2020-10-15 21:49:43', '2021-10-27 22:41:51'),
(123, 'حصة', 'عبدالعزيز', '', 'الدويش', 'HISSAH', 'ABDULAZIZ', '', 'ALDAWISH', '', '', 5, 'جغرافيا', '1968-09-23', 1, 'sq20166@gmail.com', '0558320431', '1023419060', NULL, '$2y$10$98tO0Y57TCI9CkGiHin8Xeq/rxwbuhICVdh7W1UOx/gpSCGozzeNu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AQwsgict4VCZzgjrGtrBlrvhLKSet1ur9fz23NFcsupNo2tyc1inuOJP5Hj6', '2020-10-15 22:10:32', '2020-10-17 23:17:25'),
(124, 'خالد', 'عبدالله', '', 'الدايل', 'Khalid ', 'Abdallah', '', 'ALDAIL ', '', '', 5, 'محاسبه', '1959-01-11', 1, 'kaled-288@hotmail.com', '0505457540', '1003197124', NULL, '$2y$10$cqrRkp.VqJHffAkwefrwvegcG7dVzEFY3g0JhMOdConRfvy9zWpKK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'TRkwksWSRa7ZmYiKmdq39eHWR7Iayi3aNaqVOswAUI4mQvobqyaATMTf3Rh7', '2020-10-15 22:31:13', '2020-10-29 01:47:32'),
(125, 'رجاء', 'حسين', '', 'السباعي', 'Raja', 'Hussain', '', 'Alsibai', '', '', 5, 'ادب انجليزي', '1951-08-06', 1, 'alraja.s@gmail.com', '0569994889', '1050624715', NULL, '$2y$10$CK32nX2XCE/ufiweEHGPTOon3HEL8xHEt0J5Q6/s1A81J8ljisw3y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nz4I3ZBwxsJMRQO7vR8plHfYr691sQtIiU76VMz3swAp1B7RldjOvatK76m9', '2020-10-16 02:13:21', '2021-10-05 15:41:07'),
(126, 'صبحية', 'شفيق', '', 'ابو الهيجاء', 'SUBHIYyAH', 'SHAFIQA', '', 'ABU ALHAYJAA', '', '', 5, 'علوم ورياضيات', '1951-04-21', 1, 's5803@hotmail.com', '0504429963', '1004376834', NULL, '$2y$10$7Y0iu46npgwISeZUNgciKee5UotQ.qMuvem0kotbDq/peQV84gDL.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'joVKEfrSwTgmgefgEguKA4RJFuGV1peZ4EKpiJ5VbwimT4Ry2eeWqcfsaKzU', '2020-10-16 02:55:02', '2021-11-03 00:05:17'),
(127, 'شريفة', 'محمد', '', 'العجلان', 'Sharifah', 'Mohammed', '', 'Alajlan', '', '', 5, 'تدريس', '1961-12-09', 1, 'shrifahajlan3@gmail.com', '0566535530', '1086539523', NULL, '$2y$10$CM.rLtJ054fE2zBx0YENR.zAtdR9Q9.YasA6jQI15Y8Lvl8ck1efm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'egnUYcO4ya1cCErov8Sp5xbpEBPZyQtLoZLlqv4b6BCejA3M0tjIwcg3sSsX', '2020-10-16 03:55:36', '2021-10-10 09:25:46'),
(128, 'عبدالعزيز ', 'صالح', '', 'المسعود ', 'Abdulaziz ', 'Saleh', '', 'Almsoud ', '', '', 5, 'لغة عربية ', '1960-07-25', 1, 'asm1380@hotmail.com', '0554913626', '1010107017', NULL, '$2y$10$Cwgcee.EbMR37jlECLo6jO4IstpwmMYktln3p2WJwfKR6YAa8Yj/y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '70WuMhJSAodDxL4oBULZh5Ow2LidOJ8ZHTXG47ijtmYqIsGCKQTNbcFyiBJg', '2020-10-16 09:18:08', '2020-10-29 01:52:18'),
(129, 'معين', 'مصطفى', '', 'القزق', 'Main', 'Mustafa', '', 'Qazaq', '', '', 5, 'انجليزي', '1937-09-06', 1, 'mqazaq@yahoo.com', '0503341331', '1010614202', NULL, '$2y$10$aJuFKoV/VablzEQM57mH5.T8A3LSQqQQRjudQcTe2vxxqRqoJVN/6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MRjhxyR2dYQR6xsXaM7DzR39QVydDwilWRtQ4ULhSA5OvPqtEb70qwUFBlll', '2020-10-16 15:06:28', '2021-09-28 16:48:10'),
(130, 'سعيد', 'حسن', '', 'الجبعان ', 'Saeed', 'Hassan', '', 'Aljaban', '', '', 5, 'ادبي', '1967-10-04', 1, 'S0504734554@gmail.com', NULL, '1032865329', NULL, '$2y$10$n68SMObDefzg0BhenSghjuwxAcyW8lI0ms0sQIOOKq3LiezVaxTt2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'x5OEIW0aCEudgGA5WEnxt24vTitx1PwToHy9GBJzlK6JLsRkpLQXFUfRhrfm', '2020-10-16 16:25:03', '2021-09-27 20:41:25'),
(131, 'الحميدي', 'فائز', '', 'الحنيفي', 'ALHAMIDI', 'FAIZ', '', 'ALSHAHRANI', '', '', 5, 'دراسات اسلاميه', '1967-10-04', 1, 'Renad1422aa@gmail.com', '0555464432', '1015860701', NULL, '$2y$10$aHHZEBb/v9h81jLI.3m/f.d9pjptm4F66uiAkve1Fe7QNAPJ91FqO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'oQ0F06Ryj1rG1AuPksWaPipbTLI9dnJSc3Jw8VG7Zg2tNgSRBMuJsgtRZPta', '2020-10-16 17:09:20', '2020-10-20 15:47:53'),
(132, 'علياء', 'عبدالكريم', '', 'الرميان', 'Alyaa', 'Abdulkareem', '', 'Alrumayan', '', '', 5, 'عام', '1952-03-27', 1, 'Alawy0030@gmail.com', NULL, '1000922847', NULL, '$2y$10$CPBzrsxEFIQY4px94l23reyDd4dkhaMq8qefo5poarbrcOxzuW38W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Bv8iB8zjg51sZrPfUrDc2Ey5Ukqzh3WTvBfEiucKVC6fFBLfLVqm6XVT6r0W', '2020-10-16 20:39:31', '2021-10-23 18:46:00'),
(133, 'سعيد', 'محمد', '', 'الشهري', '', '', '', '', '', '', 5, 'سائق خاص', '1959-12-31', 1, 'saeedalshehri1959@gmail.com', '0556108105', '1009071281', NULL, '$2y$10$L0M3plHgWptWBs4vz8sJxe1DTNJuoz1MTGCG.s5imEWxSaF9n9kHm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Ohv2mgw6m5B1agP1qiJVbOou72qQu1CYSP3O8s7eC9erTJCQa8dr2j9a56Gg', '2020-10-16 20:50:26', '2021-10-25 20:28:31'),
(134, 'صباح', 'علي', '', 'الحسن', 'Sabah', 'Ali', '', 'Alhassan', '', '', 5, 'عام', '1959-12-31', 1, 'Sabah.ali.1133@gmail.com', '0555533879', '1028166294', NULL, '$2y$10$hwNnCKcOfxi26.bNYMowweSURj.syTDH9LxOGKZLCIL/LldlRxX3S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZliIzkZeG2iFd7Ng0H8l9ygXe1FEC7ocvkyqgnixnfUmn2FVljLklJKTfz4v', '2020-10-16 23:16:33', '2022-09-11 12:00:52'),
(135, 'هدى ', 'سلطان', '', 'التركي', 'Huda', 'Soultan', '', 'Alturki', '', '', 5, 'تصميم أزياء ', '1959-01-11', 1, 'Outa369@hotmail.com', '0544322901', '1002278842', NULL, '$2y$10$N9KQ24MoGD69sU0Su99/AOs6rKqrckjL60dGCZ.LyxMw5TaIXVWyW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'umz9eY1gAewO4NPmKHYkRlFpAPnnQPimmZvPMORMjYtbmhzzSBiZcNsvQTPH', '2020-10-16 23:25:58', '2022-01-01 22:15:46'),
(136, 'شيخة', 'عبدالعزيز', '', 'المهنا', 'Shekhah', 'Abdulaziz', '', 'Almohana ', '', '', 5, 'معهد المعلمات الثانوي', '1961-12-09', 1, 'Sh16277@gmail.com', '0500303766', '1008624064', NULL, '$2y$10$uuSifMZWRXtXr1Xc6aQjHeBN9/h8r1Z9VaMvKUEGlplUa9QHGvVVq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Nm9pxJyacUFQwvJkaC2oP63Kn67JMj0VKIczazcQNTFroDVe4AgaBu6R8mKl', '2020-10-17 01:42:10', '2020-10-17 01:42:10'),
(137, 'فوزية', 'صالح', '', 'الناصر', 'Fawziah', 'Saleh', '', 'Alnasser', '', '', 5, 'لا يوجد', '1952-03-27', 1, 'omfawaz055@gmail.com', '0505486273', '1000404143', NULL, '$2y$10$wGwPpzuaW042UafXNzfSa.WpE6kVe826e3i4xM1nLy4.pfvHGxdTG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8lJQJVMAJLHG5HmqmK5DnRYFDaJhBKAWWpMdaPmOSzVYBIEs5APL65P9JmoS', '2020-10-17 17:48:24', '2021-10-05 17:41:41'),
(138, 'حمد ', 'محمد', '', 'الصبي', 'Hammad', 'Mohammad', '', 'Alsabi', '', '', 5, 'كهرباء', '2020-10-18', 1, 'Hamadalsabi11@gmail.com', '0505214319', '1004777536', NULL, '$2y$10$L6vKTVVl3lQOe8N214ELFeyD75fY73vNq9vjTXA5xcuVmplaB4Fyu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3xquRCnOJqGAVw6lQgUlsMyZsF68LLk1iQ2ZaOIZFv20sERnM4klxViC1pAJ', '2020-10-18 13:33:33', '2021-09-21 16:23:00'),
(139, 'مشاعل', 'بكر', '', 'البكر', 'Mashael', 'Bakr', '', 'Al.Bakr', '', '', 5, 'مناهج وتخطيط برامج الفائقين', '1960-12-19', 1, 'dr-mashail@hotmail.com', '0504122234', '1002187357', NULL, '$2y$10$GKt3QtBcAP8J0C9/PW71keu6IGWqinlgzQ1o78vefOTgwBlgfSHuy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'w3Ii0pfTP5jtyKneGrjNMrV6wuWLaYMBxoJstkWioSILer2yZnZNcNMGa2Vz', '2020-10-18 15:18:19', '2021-11-16 14:43:53'),
(140, 'الجوهره', 'سعود', '', 'الدغيثر', 'Aljouhara', 'Saud', '', 'Aldughaither', '', '', 5, 'اجتماعيات', '1963-11-17', 1, 'Aljouharasaudd@gmail.com', '0551779200', '1016655829', NULL, '$2y$10$0l6Baehw041Tetc0zcG8kevd/URx4V0bAJYenJg4H0nmqziF7eYku', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7ibzQD7I4FbY5RuVEucd7sQMy0qs9HnAg6vKwkhRkdJg0uUXwok7i4USgiJI', '2020-10-18 15:51:11', '2020-10-18 17:06:02'),
(141, 'فاطمه', 'فهد', '', 'المطرف', 'Fatema', 'Fahad', '', 'Almotrif', '', '', 5, 'ادبي', '1965-10-25', 1, 'falmotrif@ksu.edu.sa', NULL, '1005295298', NULL, '$2y$10$R4wh/mL7s2sXJSK6ccyEi.UX4WKUTAZmPH.9qLxUZRUi7/mxmnype', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Ca4lGhk38N5NuaK1rlcLDIXCiFNNwB7boZ8TrEXVLMfbdCd2YMMf2oOR7IPZ', '2020-10-18 16:03:52', '2020-10-28 21:41:58'),
(142, 'علي', 'سليملن', '', 'الوابل', 'Ali', 'Sulaiman ', '', 'Alwabel', '', '', 5, 'جغرافيا', '2021-05-22', 1, 'aliwabel10@gmail.com', '0506008007', '1025140409', NULL, '$2y$10$7pF12KccF.5AhKlG.bPkFeJgGxMUUnGCB6vEDSfUy1flyw9bIriLa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'oy4dmRab5gNKaoRb3fUaiTSq23Nwxe7XAdTiyYJvOJPPT7SV4pMv5KYpSFBZ', '2020-10-18 16:50:59', '2020-10-18 16:50:59'),
(143, 'فاطمة ', 'ابراهيم', '', 'الجريان ', 'Fatimah', 'Ibrahim', '', 'Aljurayan', '', '', 5, 'لغة عربية ', '1973-07-30', 1, 'M00n30@hotmail.com', '0555235125', '1029084678', NULL, '$2y$10$C2AZ8R1ckj6/7rrlwtds0.6xVVkX9lVUrPrWd0XbVGj/IZWaMuTz.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8b21pzSp15JmAaJJBfWzocSoJS9cywC5aJYbMquGSl4269IBibf71O24KFcE', '2020-10-18 18:12:27', '2020-10-18 20:27:25'),
(145, 'علي ', 'سالم', '', 'الجبر', 'Ali', 'Salim', '', 'AlJabar', '', '', 5, 'اعداد معلمين ', '1954-03-06', 1, 'alfrjl361@gmail.com', '0599811411', '1014795049', NULL, '$2y$10$7pzQ41Tj0VgCM2/wKkSO5eGa/68k87AjqfSkAY4M5UeZpJSNQ8A9S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Sxg7BFlepTQPh8eiITSUulXJqXdanoYTql2YoqJOGPSBI8n5FlI7JtMTysFe', '2020-10-18 19:23:01', '2022-07-24 11:30:44'),
(146, 'عبدالمحسن', 'منصور', '', 'الخميس', 'abdalmohsen', 'mansour', '', 'alkhamis ', '', '', 5, 'لغه عربيه', '1959-10-01', 1, 'alkhamis97@hotmail.com', '0555445974', '1011846068', NULL, '$2y$10$a5BR9Zk8VFg6/8rJTBTfTed23dIz7Pa2J77ojjII4.UGFr7GDpfxG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cljDprrzaFykR9ihohAjhL3lUJxPG5XHdrATXnSOCKWEVMUB6eonlwApjpeQ', '2020-10-18 20:48:17', '2021-12-21 08:37:58'),
(147, 'منيرة', 'ابراهيم', '', 'العياف', 'Munirah', 'Ibrahim', '', 'Alayyaf ', '', '', 5, 'عام', '1954-03-06', 1, 'hajribrahim@hotmail.com', '0554442402', '1036545481', NULL, '$2y$10$VyUiZIQ.fKmMv9hW.eGwN.V0Kox9IcSSFP7z/eCCncjjYRfywraIi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8bnHtQ4BafO5OhpYvJMfOHvK6RuZvZo3tZUaIVT8BfjTJvzwRopfpugdgbau', '2020-10-18 21:47:23', '2020-10-19 14:50:30'),
(148, 'حصة ', 'عبدالعزيز', '', 'الراشد', 'Hessa', 'Abdalaziz', '', 'Alrashed', '', '', 5, 'ثانوية عامه ادبي', '1960-01-01', 1, 'Afnanalhazmi17@gmail.com', '0544499341', '1006695272', NULL, '$2y$10$b0eGijGjna4/RJssu6X.keOUMnpdBOB9Q6lUywA182bo6pl/PqS6q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NNI0jANGZqHMFVSV4CVifRxXrZFFfZW0x4I96aMru6RnF1wjfaEDBqFJIOPC', '2020-10-18 22:42:06', '2021-10-23 18:43:29'),
(149, 'حميد', 'حسن', '', 'الشمري', 'humyed', 'hssan', '', 'al shammri', '', '', 5, 'جيولوجيا كيميا', '1952-03-27', 1, 'humyed@gmail.com', '0558199936', '1003001771', NULL, '$2y$10$iPvQ9A1PKVwyqe4Py/q9yOe8HTOKl0V.GLTWuPhAjiqS2SqnBmFuq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6UhdMFWEraWqvv7xVslg1deqm67KgCgelMsWo0AXB0cGq6LbrJwNxWTejRBr', '2020-10-19 13:29:32', '2022-01-01 22:08:39'),
(150, 'خالد', 'شيبوب', '', 'البرقاوي', 'Khaled', 'Shiboub', '', 'Albargawi', '', '', 5, 'شحن جوي', '1960-12-19', 1, 'ksb101@yahoo.com', '0554947755', '1004334254', NULL, '$2y$10$8TzKai9XHnE5Lt186.c7peQficxG0DPHnToWomk0BPMNulDTnaWk.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4WBOlCqaH41ttfrXkgoSECYJXCkM0KCEkLoplZMzntgnOCp66PUuJLGM8N2B', '2020-10-19 14:18:53', '2020-10-19 14:18:53'),
(151, 'منى', 'سلطان ', '', 'التركي ', 'MONA', 'SULTAN', '', 'ALTURKI', '', '', 5, 'لا يوجد', '1964-11-05', 1, 'Muna.s.alturki@gmail.com', '0501119888', '1004334262', NULL, '$2y$10$IVscO235C.pDteRtIAY8YOt/UGJSvtdJLgeWBKfg.jge1L9/PHQZ.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8eIN2DQVUTNNp4kOrhOZ3EDrI8mj69cUIi4qDmXZUqPmC7kAgjSlCqkFJ88d', '2020-10-19 15:20:00', '2020-10-19 15:20:00'),
(152, 'شُهره ', 'دبيس', '', 'العويض', 'Shohrah', 'Do bees ', '', 'Aluyed ', '', '', 5, 'عام', '1964-11-05', 1, 'shohrah.733@gmail.com', NULL, '1022189029', NULL, '$2y$10$GhVoyDIFvDd9r3qefoENau90aL7e5X7KZ7ejXJSqGO68u1.GQNQFO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uZ88D89rlHAmKiBRvCTdadtalNAmknCGlPY2unatemci4TQLkhTXJdt8g04V', '2020-10-19 18:12:54', '2021-11-26 19:29:28'),
(153, 'عبدالعزيز', 'عبدالله', '', 'الغنام', 'Abdulaziz', 'Abdulallah', '', 'Alghanam', '', '', 5, 'جغرافيا', '1949-04-29', 1, 'ALGHANNAM.1368@gmail.com', '0537106250', '1015901554', NULL, '$2y$10$bkkxg2k5pyqU5Xkn6MFVRuEUGCunMCv0AUg8BwKEfj9pB6J.9O.dm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kkQHHtcHRbZfclo7eId9kJ2CrA8pPKxWwZYvOGL6eFZKjjeIKvPFNBKJ2TPN', '2020-10-19 21:01:24', '2021-10-27 22:43:40'),
(154, 'محمد', 'علي', '', 'الصالحي', 'Mohammed', 'Ali', '', 'ALsalhi', '', '', 5, 'الدعوه ', '1955-02-23', 1, 'jole.m.s@hotmail.com', '0504126926', '1014725160', NULL, '$2y$10$XWNZNCEL4OtYz9kSUJE5R.kL5vWVAar99PId7n2kdtribpaLsofFm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '0SSU2Gnb0y0bmsdX7gHAamFzk3QLUdcYFtW4uXC8rI9t6VaQhxRZ1B5zaVaT', '2020-10-19 22:05:42', '2020-10-20 22:29:41'),
(155, 'عبدالله', 'عبدالرحمن', '', 'العبداللطيف', 'ABDULLAH', 'Abdulrahman', '', 'Al Abdullatif', '', '', 5, 'عام', '1964-07-22', 1, 'aaaaa1000000@gmail.com', '0533361300', '1016477380', NULL, '$2y$10$yIWAuVeYYLZ69wO.RHgCB.W77W3TgL4a4zNmTJg7Sp6AEUTzD.y8.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mjggmoim4zfBlUWwHL5lZy6hmZZ5COr5U5ZtR1POJ99iFbNI4TVsbAPZgOS0', '2020-10-20 07:42:34', '2022-07-03 15:06:41'),
(156, 'صالح', 'عمر ', '', 'الحصين ', 'saleh', 'omar', '', 'Al-hussayen', '', '', 5, 'شريعه', '1955-02-23', 1, 'rghatmfs@gmail.com', '0542002222', '1000630804', NULL, '$2y$10$UoYDYdVMRiyQ/2jLLCMIWeK/S3WtzX0uEGBT7VllYdCMQrTkK8rA2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'bC2NPySRr8dsOJlExHsZ6UpoEWpyW533ttlI6Xxkii7Tekint4Sk2FLIJJ56', '2020-10-20 11:36:31', '2021-10-05 15:40:10'),
(157, 'وهيب', 'عبدالرحمن', '', 'الوهيبي', 'Waheeb', 'Abdulrahman', '', 'Alwaheeby', '', '', 5, 'اصول دين', '1974-07-20', 1, 'waheb1437@gmail.com', NULL, '1012158133', NULL, '$2y$10$UH/hroXa/T7x7Bx/y3KLseK8/o2Ka.GXwMaBd4rr57gpw7mSdKugm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wYFiPMXvEpKPrRpb3KBqWnCM0nynj1uqoyFGkSnX3PfpJuHKbrZAC11isHJP', '2020-10-20 19:13:09', '2021-01-07 13:55:29'),
(158, 'راشد', 'محمد', '', 'الغفيلي', 'Rashed', 'Mohammad ', '', 'Alghofily', '', '', 5, 'علمي', '1951-04-08', 1, 'a.r.alghofily@gmil.com', '0551470077', '1029363320', NULL, '$2y$10$34wzwnfULmZejM.l.ufIgOf96ZlqOrmBkqsjyaaB8QRa6oJE18Dyu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ynZmyyU0WdT7fxGblGRd0M29Emm5gQhxuU1xHVJEg3FAqsHGCgnbxibKnuUX', '2020-10-20 20:34:01', '2022-07-31 12:54:05'),
(159, 'هيا', 'محمد', '', 'الجريوي', 'Haya', 'Mohammed', '', 'Aljuraywi', '', '', 5, 'دين', '1969-09-12', 1, 'hayoonh.m1@gmail.com', '0506297433', '1029813803', NULL, '$2y$10$xZvSbahWS5HSqxRpx9HdDOTHZlfIyhK9W35NOFXzQcZvLfV/AgiUS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1FEEyF9WkGs7l7aGukGo8kWy15Rfh6QyiGev7ZX1XGtJdHLJeVHzokW60Yi9', '2020-10-20 21:06:02', '2021-11-28 20:49:21'),
(160, 'صبح ', 'عبدالمنعم ', '', 'راشد', 'Sabah', 'Abd elmonem', '', 'Rashed', '', '', 5, 'أدبي ', 'Invalid date', 1, 'sefer2014sa@gmail.com', '0557174977', '1082313709', NULL, '$2y$10$Mb1EXoGtyNGwhcsCn9KkH.DPSO9d19/IlF3UBMDXi1Yhrz5VnbP1q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ycDfCpYUJXsbssPP2jUDaNU0KH6jZNQynl6VIxtrHgszc6VWn6rB6aGSXZZO', '2020-10-22 09:55:04', '2020-10-22 09:55:04'),
(161, 'خلود', 'عبدالعزيز', '', 'القصبي', 'kholod', 'AbdelAziz', '', 'AlQASABI', '', '', 5, 'دراسات اسلامية', '1960-01-01', 1, 'Kholodqasabi@qmail.com', '0504449600', '1013374630', NULL, '$2y$10$iZpZph7SCKe8xp8V4NZa1OjzUt4qgEfuZorT9Sm8A7eHqqRJ3IfQ2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Txw91x6W99BSk08gnjSiy9pfXWGh4S1yAFwZrt4t9kkt2WYzOgJiqCxFo4j2', '2020-10-22 14:07:22', '2020-12-17 13:32:34'),
(162, 'امل ', 'عبدالرحمن ', '', 'الشهراني ', 'Amal', 'Abdurhaman', '', 'Shahrani', '', '', 5, 'اقتصاد ', '1968-08-06', 1, 'amalasn@hotmail.com', '0541869317', '1016235176', NULL, '$2y$10$Y31.zBc/KDx0i1qGtLUFV.0w/e.jBvDqA/cFqi1uBdRTh.Zf7vd9.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6oF3iEZoSRuCirKfl4KAA40NtnGjBVA7alnU0C3giDjrIg2SL6u3KNCdegsx', '2020-10-22 18:51:10', '2021-11-15 13:39:48'),
(163, 'سعيد ', 'محمد ', '', 'الشهراني ', 'SAEED ', 'MOHAMMAD ', '', 'Alshahrani ', '', '', 5, 'دعوه ', '1967-05-07', 1, 'saeeed0001@gmail.com', '0554103330', '1043266368', NULL, '$2y$10$B2tI7CLDuDPj0IB0bA7Iju4/wlO1Fd4azuTOJPziZHoWuS/5crDL2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'x8GhaG15dgrHxUYocSRWzhj1l0LaLTiPiuc6mVuEIIyk8sUpz3791bYNycpA', '2020-10-22 23:02:52', '2021-10-25 20:19:24');
INSERT INTO `beneficiaries` (`id`, `first_name_ar`, `second_name_ar`, `third_name_ar`, `fourth_name_ar`, `first_name_en`, `second_name_en`, `third_name_en`, `fourth_name_en`, `employer`, `retirement_year`, `qualification_id`, `specialization`, `date_of_birth`, `membership_type_id`, `email`, `phone_number`, `record`, `email_verified_at`, `password`, `role_name`, `Status`, `paid`, `start_date`, `end_date`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(164, 'هيفاء', 'عبدالعزيز ', '', 'القصبي ', 'Hifa', 'Abdalazez', '', 'Alkadabi', '', '', 5, 'رياضيات وعلوم', '1964-09-15', 1, 'Hifakasabi@gmail.com', '0555355926', '1029454566', NULL, '$2y$10$KOf316UQGcDwI9LlPVTxoOwJsjcg/zdzzktVd/GZo4IHEvJR594I.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'aulv5ueNWGR581fZh7cRx7C4zPAU6MFYs2fSwoB9TGigEQwVQxjeTF0DAKkS', '2020-10-23 02:51:00', '2020-10-23 02:51:00'),
(165, 'كوثر ', 'عارف', '', 'البرجس', 'Khwther', 'Areef', '', 'Albrjas', '', '', 5, 'مختبرات', '1963-11-17', 1, 'albarjas.Ka@outlook.com', '0569290999', '1053784011', NULL, '$2y$10$B59VXrTwpzxjVvDakxckIODe28DXPonHE8uoWthV2gKmuEjMg7EGS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mmKczjXHp2SmTQ9JyaWmsHqC0BqsOPoUP7bMrp9WM2i2U0W2Xpog2xNyC8ZL', '2020-10-24 17:17:10', '2022-08-28 11:15:38'),
(166, 'جواهر', 'علي', '', 'الحسن', 'Jawahr', 'Ali', '', 'Alhassan', '', '', 5, 'تاريخ', '1955-02-23', 1, 'Sara.alfayez@hotmail.com', '0530300726', '1028068631', NULL, '$2y$10$EY8mxTXk75d2Qr7iYR9NVOusuLIbJDem/ciltH1E6jyEuERuPQHx.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yUi0kRZH6QZrcqQCVl1kyxQ4wwUmRei8xiMDi26g3aUZS4eBXEjNZG2IPm98', '2020-10-24 18:05:19', '2022-09-08 16:22:59'),
(167, 'منيره', 'محمد', '', 'العياف', 'Munerah', 'Muhmad', '', 'Alayaf', '', '', 5, 'اجتماعيات تاريخ وجغرافيا', '1955-02-23', 1, 'Table14412020@gmail.com', '0555218132', '1001476876', NULL, '$2y$10$YvPI/Xl64itln7Ibi6UEZOF5YrJTfM/FnC8sQ1x/tbycrp89eF5hG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2lfPjJpyvXdV2SKj3fCh8ID0xXaz1dvJE8kSaj71rC82ra07eCe9QjQBS3yw', '2020-10-24 23:55:38', '2021-11-29 02:16:22'),
(168, 'فايزة', 'عبدالله', '', 'الخيال', 'Faiza', 'Abdullah', '', 'Alkhayyal', '', '', 5, 'علم اجتماع و اسس التربية', '2020-10-26', 1, 'tarbia6@hotmail.com', '0000000000', '1012392146', NULL, '$2y$10$i.1ilit9NTTK/JMS6Ak5A.eKDImhgJvdx9ivFyY5ltMlfO9kzQ8W.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DLIBQlcqPACCCl9Vmg7PXWkQ1ubgczkaQsr4vpbSf0DQHmTOvZfbBk1Lc6nt', '2020-10-26 17:48:30', '2022-09-21 13:47:15'),
(169, 'سعد', 'ابراهيم ', '', 'الداوود', 'Saad', 'Ibrahim', '', 'Aldawood', '', '', 5, 'اجتماع', '1958-01-21', 1, 'saddadood@hotmail.com', '0551414115', '1003785498', NULL, '$2y$10$TQbXXpttU1jTSLLdAUaBlOWUAzt8TIlUC4DgwgmxkhJhi54Eywz6i', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'o0eOpDeBscIw5u8XH2E4T1v4fsXNlOUIoTaZL2TyWD9srDFGzGNHCRymjJ8o', '2020-10-27 14:07:52', '2022-08-28 14:08:22'),
(170, 'أحمد', 'صالح ', '', 'عسيري', 'Ahmed', 'Saleh', '', 'Asiri', '', '', 5, 'محاسبة', '1941-07-24', 1, 'ahmedsalehahmed07@gmail.com', '0506489717', '1014411498', NULL, '$2y$10$Wl.1kcUDUYgij7QiMCzeheG9aXYkatbulSZSqbbgxHW4XA2NmlkAO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BRm6ngcJ38J5BdaH3spGeFJpwSLL9EbJp4ECEkt6RL8hSquJiVqjaIuj73Vq', '2020-10-28 11:28:00', '2020-10-28 11:28:56'),
(171, 'سليمان ', 'راشد', '', 'العريفج', 'sulaman', 'rashed', '', '', '', '', 5, 'إجتماعيات', '1942-07-14', 1, 'info@rrra.org.sa', '0506990031', '1013598931', NULL, '$2y$10$vMCpCldAOs/qx5lO2Mh.OOQJ2lwAGNcQlPPhYU4ke0dt4coGFNd22', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yGO083HlWVgZnjkFgsZm9dRMayMyJQjxJV7gqsscRJFVV2TnuoPHaxmPjiMd', '2020-10-28 12:30:41', '2020-10-28 12:35:42'),
(172, 'فهد', 'ناصر', '', 'الدوسري', 'Fahad', 'Nassir', '', 'Adosari', '', '', 5, 'تقنيات التعليم', '2065-04-05', 1, 'alkalaf44@hotmail.com', '0555597598', '1001870169', NULL, '$2y$10$XwlLt51KHB3FJhVia5yb4ux/DpvAophByx1q4PQ8JGrAfxBYtosgK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7zj9Nb1dZb9ETNVj9LBwGSoJsxPGan5IG2sucZwRtNFstdlikhgiRyihLRxc', '2020-10-28 13:04:21', '2022-09-05 16:57:41'),
(173, 'عبدالله ', 'محمد ', '', 'الحمدان ', 'abdullah', 'mohammad', '', 'alhamdan', '', '', 5, 'تجاري', '1961-02-25', 1, 'abtarq01@gmail.com', '0543785894', '1031310129', NULL, '$2y$10$HMpKHFzk7VisgI4L3ndcUOkFc..42PzmWMxM911qL40YhRbWrGgEq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WdpsCfuGM6SABiV415V2RL6iT3NwI97FSVuv3ntzNhGYJb5ZwR3EDRgeerM0', '2020-10-28 16:14:26', '2022-04-24 13:22:12'),
(174, 'منيرة', 'عبدالله', '', 'الفليج', 'Munerah', 'Abdullah', '', 'Alfuleej', '', '', 5, 'لايوجد', '1960-12-19', 1, 'hananalsaif54@gmail.com', '0550929173', '1011890561', NULL, '$2y$10$WAyg7i3Uio0RQEk4Naxmb.CsIEYzXwvz/DxaSjXkf06bNxWxAKewa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kwZ9Xj0NNk92cSUli6TJdeRMjz0AqwehAYPJFiyXlDE8tcCtPupaxGe2jmXi', '2020-10-28 22:33:45', '2020-10-29 15:12:42'),
(175, 'جابر', 'مانع', '', 'الحمادي', 'Jaber', 'Manea', '', 'Alhamadi', '', '', 5, 'محاسبه', '1945-06-12', 1, 'Al.hemadi@hotmail.com', NULL, '1030540726', NULL, '$2y$10$FPhCp99efPTNfv7Vu8ope.SK5gIo2Y22FbA68DVV7wOagj6mfgiiW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'RHBgVMLvoGoJlfXOZqOGA5AwYihgelifJzDDzFOugrISTuHj1WU0JLeswE1Z', '2020-10-28 22:36:25', '2021-08-30 16:40:27'),
(176, 'فايز ', 'علي ', '', 'اليوسف ', 'Faiz', 'Ali', '', 'Alyousef', '', '', 5, 'عام', '1957-02-01', 1, 'alyousef-f@windowslive.com', '0555422850', '1047749039', NULL, '$2y$10$e1.ZeaZWOtLtDhvxJ.cimeCOD1X.9ySf2kjlCxJBrIN3ls2RbtwHi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'pqU5vs07MkFwNttxjQdcQS85dQYf6oBpLbFUTloReB2yYsnJWgJKsYnJYUoD', '2020-10-29 00:15:08', '2020-10-29 15:00:05'),
(177, 'ليلى', 'مرزوق', '', 'البلوشي', 'LAYLA', 'mARAZOK', '', 'ALBLALOSHI', '', '', 5, 'جغرافيا', '2020-08-20', 1, 'lolo22849@qmail.Com', '0554580704', '1044965570', NULL, '$2y$10$RMeFwSiXrNIhDyu7ItVNGOIik3VP9kEbOKXEoCW5.XVQ63bz9XQ0y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FSCoVTrU9XbRGkr8lamTcJupLkMGeJ959vZwtN8O7lppzWFClCUNdR19p7GE', '2020-10-29 03:59:12', '2022-02-21 21:17:59'),
(178, 'زكري', 'سعد', '', 'الزكري', 'zakari', 'saad', '', 'alzakari', '', '', 5, 'إدارة صناعية', '1957-02-01', 1, 'salzakri.co@gmail.com', NULL, '1059040178', NULL, '$2y$10$kXWCcicx4KCD92XsEtbEqu0K882VMI.9p0UrVxaLW.wRlaYyaZ0uW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3sj64HmCTjScMhqRrHZlLszPHxeyPAlfnidoUDuP9EgcgtpsJDib0foYoiFb', '2020-10-29 14:34:48', '2021-10-12 16:52:27'),
(179, 'حمد', 'عبدالله', '', 'الصغير', 'Hamad', 'Abdullah', '', 'Alsugair', '', '', 5, 'لغة عربية', '1942-07-14', 1, 'hamadalsughayer@gmail.com', '0500900920', '1011227731', NULL, '$2y$10$xmocDFi77j8JPOZDwky35emfGY5xHZ0MQi.ZdaajCj1EWqxT52Zym', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jcKdXzY0Z0i8lGy1TcJaZ9BWKExPrvKdioOFnujVdjd9YVnn4V4Hj7T7vmWW', '2020-10-29 14:53:31', '2022-01-27 10:22:06'),
(180, 'نادية', 'سليمان', '', 'الحميدان ', 'Nadia', 'SOLIMAN', '', 'ALHOMIDAN', '', '', 5, 'لغة عربية ', '1964-11-05', 1, 'Nadiah.s.h.2016@gmail.com', '0544931552', '1025345321', NULL, '$2y$10$.ATu8aIeAk6obILkWlSRKe2wWL1CWMMCgXPBC2cNvhL0KLRViMuym', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wusqjmB4nNOKafrwucV6oC0RjZyYngDgfMDjUx0qWIlwPwtY1WjCZL0t5sZJ', '2020-10-29 15:27:05', '2022-01-04 18:48:10'),
(181, 'محمد', 'عبدالله', '', 'القرني', 'Mohammed', 'Abdullah', '', 'Alqarni', '', '', 5, 'علوم عسكرية', '1960-12-19', 1, 'qarni000@hotmail.com', '0505163505', '1033269695', NULL, '$2y$10$HL255lWKq1m0Chs.bnksb.9LJMHHIoB2A7sMvVAdqC47qUpzscTq2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'azTNWtQlOA4yJqs1JC39wr0ODvKlksJRrTqOAurhtvHGhqg7Fk7W5lXJ2bbx', '2020-10-29 15:41:16', '2020-10-29 15:41:16'),
(182, 'ابراهيم', 'محمد', '', 'النهدي', 'ibrahim', 'mohammed', '', 'Al Nahdi', '', '', 5, 'علم اجتماع', '1983-04-14', 1, 'smnp542@icloud.com', NULL, '1047889165', NULL, '$2y$10$Xficv9SmnzzQZdPCrvZOxOw4sKM.fOn6P8dODUPePTSq/kkNtHQCS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kVZzXhEHCB6Auk5zqx6X0PnipvpvQFBDxdTwPVr519w7z0HZDPgkJ3Y0wQUA', '2020-10-29 15:59:17', '2020-10-29 15:59:17'),
(183, 'هياء', 'ابراهيم', '', 'العقيل', 'Haya', 'Ibrahim', '', 'Alaqil', '', '', 5, 'معلمة', '1963-09-03', 1, 'hayonh05@gmail.com', '0555442250', '1033269703', NULL, '$2y$10$QrpMl4FThpSnQz9OwDwOHuuyxTRKv/m.CSCYf9SGFmwZN./bXV8w6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IaXluWFnuMJAbELpBhKLdNDCzacvmXLQx0pAnjim355b07fEV0KM3PdPYMQi', '2020-10-29 16:01:47', '2020-10-29 16:01:47'),
(184, 'حصة', 'عبدالله', '', 'المسيعيد', 'Hesah', 'Abdullah', '', 'Almesaiyd', '', '', 5, 'دراسات اسلامية', '1960-12-19', 1, 'bb-hashim-bb@hotmail.com', '0580731813', '1075732378', NULL, '$2y$10$2NrDlKPbXcUiUKsdOxwt7.BZXNYdWXmVPaQAjEj0./SOhImd9TJY2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FMiHUc84SSqmjV6fIWsWV8x0ToWe49lgKWHxCk83Q8uvg9apIAJVZK9Z2Z0f', '2020-10-29 16:15:40', '2021-10-30 20:00:10'),
(185, 'عبدالرزاق ', 'محمد', '', 'الهاشم', 'Abdulrazag', 'Mohammed', '', 'Alhashim', '', '', 5, 'اداره', '1958-01-21', 1, 'arsco11@hotmail.com', '0591211113', '1010960019', NULL, '$2y$10$xZV2XTL/OHa371qZUaJu/.VFi8YPlnzn1SEzqVbUEXkk3Tr.j3CLO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'YOe7DMoeWOajuV135MU0L9wdGHmOrLxhUmd1KdD42JTnOX6swesQolvVLxzp', '2020-10-29 19:22:55', '2020-10-30 01:40:37'),
(186, 'منى', 'سعد', '', 'النفيسه ', 'Mona', 'Saad', '', 'Alnafisah', '', '', 5, 'ادبى', '1963-11-17', 1, 'monasaad1419@gmail.com', '0560099003', '1003270350', NULL, '$2y$10$ZuFYvhzomC.B9D95Zvr2HedkHRVvPMG1DQr8ywWP8lnpgpqemfOjy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BbJx3eU5H6HnhPR8nxMiuyGqPBUGRg3CjNCIkW3qusYqcIo17U38LZuvu2XC', '2020-10-29 20:17:32', '2020-10-29 21:58:32'),
(187, 'الجوهره', 'ابراهيم ', '', 'الدعيجي', 'Aljoharah', 'Ibrahim', '', 'Aldoaeaje', '', '', 5, 'خياطه', '1963-11-17', 1, 'Jooory_1422@gmail.com', NULL, '1023416546', NULL, '$2y$10$525kfPicqHosFg7pbQ3ymuYC0eZWNuKHKM1dllRgfjlQ3ZD0UnOvS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'UPeA31dxzLUrTSEXUAmryNNOkFVLiDnRpLDQbsKhpn3SmkbRchhZqCozPSxd', '2020-10-30 17:59:08', '2020-10-30 17:59:08'),
(188, 'منيره', 'عبدالرحمن', '', 'العصفور', 'Monerah', 'Abdulrahman', '', 'Alasfour', '', '', 5, 'عام ', '1959-12-31', 1, 'MnoOor_90@hotmail.com', '0503208321', '1022623712', NULL, '$2y$10$mI4Cv8GgzgtsAhe42gSQQe4rCFWAkXXcMfVuu1R.M1e380GYtCZWm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3lyG8Ow8wRU6amcb6mG4X2ZnWpDxBqfpSP2Tot9qsej9gTiofg2QBpdwuM14', '2020-10-30 20:33:20', '2021-10-27 16:14:01'),
(189, 'طرفة ', 'عبدالعزيز ', '', 'العبدالواحد ', 'Tarfa', 'Abdullaziz', '', 'Abdulwahid ', '', '', 5, 'علم نفس', '1959-12-31', 1, 'tarfa.abd1@hotmail.com', NULL, '1055830846', NULL, '$2y$10$3.sR4iykMOSdjD6nCVFQtOld4q.oasRJS9p61ENDuSojx0y4hpfPS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9wRPa3A6MlUn3kDxFR1lSbySDVsGx2XKUDLREOI6v4t1x1KBOD0yxWleIHGw', '2020-10-30 20:59:34', '2022-08-29 14:43:10'),
(190, 'عبدالرحمن ', 'إبراهيم ', '', 'الربيعة ', 'Abdulrahman', 'Ibrahim', '', 'Alrabiah', '', '', 5, 'علوم إدارية', '1969-09-12', 1, 'ekal_1@hotmail.com', '0544115010', '1004791073', NULL, '$2y$10$z54sF7KV8CN66hHZk/IxyOgi6.hjcJYg07TAbQTXWzbaXCH5RYsRy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1GHIpLfW1c8pnMEhg4OOTMNJSqnor0ReeQxeEx6WQwJ9LI1xvoGAZulGRbIa', '2020-11-01 13:27:07', '2020-11-03 11:10:54'),
(191, 'خالد', 'عبدالله', '', 'الخميس', 'Khalid', 'Abdullah', '', 'Alkhamees', '', '', 5, 'علم نفس', '1001-03-01', 1, 'Samary5050@hotmail.com', '0503453691', '1017835560', NULL, '$2y$10$3LjHttKGJApGksZO9aWS0ef5XfXrvhgiJdkV8RHD3trVJZIpc8DtC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vCEUOMgafpvTuQvADbzk2gEHnLMVqhZiQflUzJj5SvjZmr0rxxlJczVHdh4A', '2020-11-01 14:48:19', '2021-10-28 00:12:36'),
(192, 'مريم', 'ناصر ', '', 'البقمي ', 'Mariam', 'Naser', '', 'Albogami', '', '', 5, 'تاريخ ', '1960-12-20', 1, 'bndr.bogami001@gmail.com', '0530089933', '1082797117', NULL, '$2y$10$kKZl5JJiUgVHE5/ECklK6eO3O0snjS4mfuJVWLbFHVojmb0/a.ZfG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'GBFfzc4lxz57PYq7Y3EqdhNnDfJ0KZwLYIrAosf2AWITQwNn8hReBG7I6gh6', '2020-11-01 16:13:32', '2020-11-23 12:48:21'),
(193, 'موضي', 'عبدالله', '', 'السبيعي', 'Modhi ', 'Abdullah ', '', 'Alsubaie', '', '', 5, 'لغة عربية', '1956-02-13', 1, 'hadeelshedayed@gmail.com', '0505451897', '1033526433', NULL, '$2y$10$upgo9HB5CDlJJQ3LDysCRe6h5L4MGpWbxtu/4gIMb7bFwETBEdgWK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hMGYqumcc2dgYbAkgjsXM0bTCk8joQNV2BntHY0HNVxDmvG8gUO1wigHL5Hj', '2020-11-02 01:43:22', '2021-11-27 23:58:50'),
(194, 'جواهر', 'عبدالرحمن', '', 'الجمعان', 'gwaher', 'abdelrahman', '', 'elgomaan', '', '', 5, 'لغه عربيه', '1960-12-19', 1, 'gwaherj@gmail.com', '0500522238', '1106058967', NULL, '$2y$10$03wjqaAHhWMzJ8kuK2tAwOK1XvWOgTbHJmjnv934f2L8212H4OsGK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ph2psDKY05uh9ZpQYB1T8r2hbOPSrTSqpdRqbmSzGdHu5QYXjHtgujDKUCVu', '2020-11-02 16:57:17', '2020-11-03 11:13:27'),
(195, 'فايزة', 'عبدالله', '', 'المسعري', 'Fayza', 'Abdallah', '', 'Almasari', '', '', 5, 'مكتبات', '1953-03-17', 1, 'fayzamas@gmail.com', '0500881117', '1005770555', NULL, '$2y$10$3ShqeOh9AJeFcCy.5eepbO8DQBdI4Qf0clft5H013Uct5TNlwKfvG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Olct7DhNEGAGzOzeP8mbmkGuiy6xa28LBiC6lrZ4Lle2OC0XAmdZTQ9uSPWw', '2020-11-03 08:46:27', '2020-11-03 11:15:35'),
(196, 'هيا ', 'عبدالله ', '', 'العريني ', 'haya', 'abdullah', '', 'aloraini', '', '', 5, 'تاريخ', '1962-11-28', 1, 'hayfacvv@hotmail.com', '0548965716', '1018835700', NULL, '$2y$10$R/TI/epr6cunBYFXrizwXu49b0hPTie2e9GwiQHcR7ErZKf0Tocf2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'RbEgz3h3ZRZHl3hmQyPQtJOMx60Gz3jsOZCaywHgPfBd7XAMHxVpS1UPqX36', '2020-11-03 15:38:35', '2020-11-03 15:39:17'),
(197, 'جوهره', 'عبدالرحمن', '', 'ابودهيم', 'johara', 'abdulrahman', '', 'abudheim', '', '', 5, 'تاريخ وحضاره', '1959-12-31', 1, 'j-aljazirah@hotmail.com', '0505259279', '1020885297', NULL, '$2y$10$gDubl75r3cFHZJrt/.qdue/Bchxc25rH4WkgBZLVavXtpkGqwAxMq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kvRXytwsDaMowKYKUa5PoMGfOFqfP3aWuD1wwSMfY2dlI4UrhwNspgwHDqgL', '2020-11-04 15:24:18', '2022-01-15 20:37:29'),
(198, 'محمد', 'حامد', '', 'الجهني', 'mohammed', 'hamed', '', 'aljuhani ', '', '', 5, 'إدارة أعمال', '1953-03-17', 1, 'maljuhani2010@gmail.com', '0554075558', '1009118652', NULL, '$2y$10$kgzWM6PHEpoKUU3BsKQrfOi9PmZs3PREuv2euOSjjtEfbvgi6kwZa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'rKzVpdjB0yFpVCnFXuawRovIg2gIxeorYM9ZcThm6jac4kHkHoiCyt5Kihgy', '2020-11-04 15:35:10', '2020-11-04 15:38:18'),
(199, 'الجوهرة', 'عبدالعزيز', '', 'الدايل', '', '', '', '', '', '', 5, 'عام ', '1959-12-31', 1, 'Moudii1413@hotmail.com', '0566884567', '1013993249', NULL, '$2y$10$PW3KjnL563GGvQrlDFhba.rAgnT/RWPaU78vJX/.u5ioLGadOVPYG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4JbiVkJBdhA3Ym1zBS5VQ6ktIgtLqb5F1PpSFHoPHno5euY3x7Z1sWDXqXpP', '2020-11-04 18:03:34', '2020-11-10 15:37:41'),
(200, 'سليمان ', 'محمد', '', 'الكليه', 'suliman', 'mohamad ', '', 'alkaliah', '', '', 5, 'اتصالات', '1974-06-14', 1, 'abu_talla@hotmail.com', '0593411130', '1007097692', NULL, '$2y$10$NZ2LPIMxM/eHm7HQyx7wAuBfBCJuJt/JkY3jw/bU3E4qKhPCXSGs2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Yah4N1I2C7KszF6983Cq0FiRtTKGYFBXs33zAMDGkFuW2D0C9xdY36CuwcnA', '2020-11-08 13:37:25', '2022-01-14 21:48:16'),
(201, 'مسفر ', 'عون', '', 'الغامدي', 'MOSFER', 'own', '', 'ALGHAMDI', '', '', 5, 'شريعة', '1955-02-23', 1, 'mosferown.vip@gmail.com', '0502677791', '1005998255', NULL, '$2y$10$myEhcdo4axhsLreB8K505exrgJR9sl29l3.OdNLW0rA5aas11Xwdi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yLSik4uVq6yQ9Av9wVu4EOAEq21o1Z47BdbsC1NKsCxsGYdJbmlAFfQYugsV', '2020-11-08 14:38:35', '2020-11-08 14:42:36'),
(202, 'عبدالله ', 'راشد ', '', 'قعود ', 'ABDULLAH ', 'Rashed ', '', 'QOUD ', '', '', 5, 'علوم سياسية', '1963-05-30', 1, 'ralqaoud022@gmail.com', '0558240872', '1015559055', NULL, '$2y$10$wcZLdM3SyFJCJXNxpOeNSOD5ihAbkVOjVeVzoGw1WwwPCbCirU7KK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MAmY0rFfRE3BDsB8uWz5PQvwrwXvJZnA0miKedIA1NrXN6y8ZO2ALGhCN2FO', '2020-11-09 18:29:38', '2022-09-21 15:23:12'),
(203, 'بدرية', 'أبراهيم ', '', 'الدريعي ', 'Badriyah', 'Ibrahim', '', 'aldrai', '', '', 5, 'دعوه', '1959-01-11', 1, 'reem.a.d1411@gmail.com', '0533433775', '1030334146', NULL, '$2y$10$yjYOVn7OzXv2WraOoIb8AO4bDrj4OThKJ8Jsl0Xb0DNBnUCiPllxi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'iSfxkYwyHmYItcUpogjWlUVrH0EmYQkdXmXd5zWWUdnqMlUo25CIViQvDmnU', '2020-11-12 01:52:51', '2022-01-01 23:12:29'),
(204, 'عائشة ', 'مبروك ', '', 'الراشد', 'aishah', 'mabrook', '', 'alrashed', '', '', 5, 'مستشفى ', '1953-03-17', 1, 'eid_e@hotmail.com', '0503434052', '1050758133', NULL, '$2y$10$WrjVIo5anhWxGExSzDrVeei.Ax8JeoPvBS1uzQMtCOimKFMjEirXO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'y3UeIMo1x3zHj7DFssBZ3PtkOg4t4WDGTElACiCP2QgDi0HdKmZ9bTCIzHZU', '2020-11-12 13:03:04', '2020-11-12 13:13:58'),
(205, 'وئام', 'عثمان', '', 'الجاسم', 'Weam', 'Othman', '', 'Aljassim', '', '', 5, 'صيدلة ومعوماتية صحية', '1970-09-24', 1, 'woj24@hotmail.com', NULL, '1009100593', NULL, '$2y$10$RuuyYAVoXut2v79Y5piCx.1AsfFS31/5NngXrlngvAmMPOFJpzK0u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'aQorFR6USw68uBRUQ7TWFlaECohecOsOIsheQOoKq7KXYRCPUImES5vcVIOq', '2020-11-12 15:37:43', '2020-11-15 15:02:18'),
(206, 'مشاعل ', 'إبراهيم', '', 'العبدالرحمن', 'MASHAEL', 'IBRAHIM', '', 'ALABDULRAHMAN', '', '', 5, 'جغرافيا', '1964-11-05', 1, 'Meshail.j.t14@gmail.com', '0553098988', '1011988373', NULL, '$2y$10$a9Ix5SU/.b7wInU8D9jZde1IoXbG4xvQ/l46q5KwJsAE79KEO8y7q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AB9JggtNfRshBoJ0ERobBBvSjmsTu64yMIdCSd3bxNHASDa8VTUFaZAmc8Vx', '2020-11-12 20:31:40', '2022-02-20 18:21:02'),
(207, 'عبدالله ', 'سليمان ', '', 'الحربي ', 'abdullah', 'suliman', '', 'alharbi', '', '', 5, 'تاريخ', '1959-08-05', 1, 'abuturki01@hotmail.com', NULL, '1023437658', NULL, '$2y$10$7zxbphOjL70al/lnMQhrY..Pq6/c5Z7KR//2xy2Afaq4Dnt6TKGaS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Bn5QgCYmGyk5LL1H8aF2ZPdaYCxMoqPHBSSAnBee2CplY28AY4pm4qxLAnt0', '2020-11-15 14:43:34', '2022-01-04 18:06:39'),
(208, 'فاطمة', 'سعد', '', 'الفهيد ', 'Fatmah', 'Saad', '', 'Alfehaid', '', '', 5, 'ادبي ', '1958-06-22', 1, '1abdullhm@gmail.com', '0555423335', '1001218500', NULL, '$2y$10$VawAx56CV7C616DBumqaSOEvFK3CYlz0xQE4YZ8eWmwZUBH22rSDu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'tIBkWRUhgFSFVqn8gneD2pcudSxLBy63h2VfdLNAQL6csNbOnKnRgRt79W3E', '2020-11-15 19:31:26', '2020-11-16 14:41:28'),
(209, 'مدينه', 'مسلم', '', 'الطلاسي', 'MADENAH', 'MASALAM', '', 'ALTALASI', '', '', 5, 'عام', '1956-02-13', 1, 'MADENAHTELASI@GMAIL.COM', NULL, '1071964165', NULL, '$2y$10$R5ia2nW6BiQannV/vzM5UeeyITS4DPhI55NWj.60qbutUhHdzTa.u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KqomSeaivFG10Ldk6HyBPzf12htJTenQpljvlOOg4x4aqYPFRwoPvlxhwfY8', '2020-11-16 15:24:03', '2022-01-04 17:58:06'),
(210, 'خالد', 'فهد', '', 'الشدوخي', 'Khalid', 'Fahad', '', 'Al shadokhi', '', '', 5, 'رياضيات', '1964-09-17', 1, 'almath1433@gmail.com', '0505426782', '1032182949', NULL, '$2y$10$OKNkgAuPJZKWkUnwn9RQ4uJxCm.2EpaAWFUZDDHXHKJTipGPDkWZK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mc8qhs5rDKagT1MngcAVOgVhTsyKrBtudC5lnDgROyUFHISgefsEqRJ3pHEX', '2020-11-17 13:40:59', '2020-11-17 13:40:59'),
(211, 'الجوهرة ', 'محمد', '', 'الشويعر', 'Aljawhara', 'Mhammd', '', 'Alshwiar', '', '', 5, 'رياضيات', '1959-12-31', 1, 'fagrsa@gmail.com', '0554407393', '1093822425', NULL, '$2y$10$xSBBE1E9YF/leReTROFlG.8CD5LqpKskkk68L/XM74V0rmLoB2gAG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'RqPNtatoOfKTwUY1PIxCp4Lia4HBP1VtCrpE0yKEtZfDdEJOCHPshliPfM7l', '2020-11-18 13:17:01', '2020-11-18 13:17:01'),
(212, 'حصة', 'عبدالله', '', 'ابوعبيد', 'hossa', 'abdullah', '', 'abo obid', '', '', 5, 'تربية', '1953-03-17', 1, 'h4351a@gmail.com', NULL, '1026684595', NULL, '$2y$10$gNqyMWz7t52jVaJA/SdQwO76k.E2CNQRyX0oDmdfWa7cvJ4qNoMdi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1wWBqrm37gmA7nnfI5jAEByT1e1EwELXuriHNxLgNvhFcVWi5Ej4K0syfv8p', '2020-11-18 22:04:59', '2022-07-03 01:47:53'),
(213, 'موضي ', 'عبدالله', '', 'النملة', 'Modhi', 'Abdullah', '', 'Alnamlah', '', '', 5, 'جغرافيا', '1965-10-25', 1, 'Masn555@hotmail.com', '0536141366', '1036235792', NULL, '$2y$10$4jUHMaGnQsDiToy1NAvUfOw6B9ULcMYUaMnPKbq0PnyVSxfhTusYS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'l2ry4Xv0caTZUntO5KhbppeJEQpdTqv1gHefZTKh3iZq7yjdI1HhzOBmZePK', '2020-11-19 00:12:33', '2020-11-24 11:38:16'),
(214, 'مقبل', 'مزيد', '', 'العنزي', 'MEGBEL', 'MEZID', '', 'ALANAZI', '', '', 5, 'علوم عسكريه', '1955-02-23', 1, 'MIGBEL62@GMAIL.COM', '0533109417', '1007153016', NULL, '$2y$10$Pilmg5fy85X5Fp4gWBD/DujOhMT45acXgjAHF9IJ0abfoeksdqFM.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '0ZZecM9w809XN1737wWzF8xB4pwRdkEbK3ceEQqIvjuaQnK9VtNy6LppVW0g', '2020-11-19 12:36:06', '2020-11-19 12:40:57'),
(215, 'مدرهم', 'عايش ', '', 'البقمي', 'MUDRHIM', 'AIYESH', '', 'ALBOQMI', '', '', 5, 'عام', '1957-02-01', 1, 'FAISALNY@HOTMAIL.COM', '0566229320', '1009455070', NULL, '$2y$10$jesKUMQjBJCxZ9KaUDZEW.8vZ3N/0MrXFadR2hTHffkiFgn/Exida', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HXNt4715p8ZNbiZWTzxVTj3aZe0HIXf9DDJsefFq94tcA3lcSHww9vULUNq5', '2020-11-19 13:10:06', '2020-11-19 13:15:21'),
(216, 'بدرية', 'عبدالله', '', 'العايد', 'Badriyah', 'Abdullah', '', 'Alayed', '', '', 5, 'علم اجتماع', '1965-01-03', 1, 'Badria.al.ayed@gmail.com', '0505595005', '1061608806', NULL, '$2y$10$fZpWcxzScYPjCsogeM/05u0yW/US.o0ujn1rJn4BJ4BdF.RmwmGtq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'w575OyAgxgS0Hp4jdyfvQGerAdAy5Z5TLu7YYglyncpveYw4Zf3QD4z2AIyy', '2020-11-20 00:20:16', '2021-11-28 20:28:51'),
(217, 'سعد', 'حسان', '', 'العنزي', 'saad', 'hassan', '', 'Anzi', '', '', 5, 'صعوية النظق', '1996-03-18', 1, 'saad111s222@gmail.com', '0556645341', '1090323567', NULL, '$2y$10$cLixMmmnOsy7ixh4pb.lReGMKLc8AxSaku.mL17BQuNIveb4q0ghW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PWbLACnV1eqs4dXq3lJIHKfakO4bATZYY7zCrTeNX2tIjuytOpHsEV2oNgXI', '2020-11-21 20:47:15', '2020-11-21 20:47:15'),
(218, 'ناهده', 'محمد', '', 'عمر', 'nahdah', 'mohamad ', '', 'omar', '', '', 5, 'عام', '1956-02-13', 1, 'mohmmed2323899@gmail.com', '0576660089', '1000174241', NULL, '$2y$10$rXNkT.tYWTJfvJk90mgSF.KJu7crq9XIZD5BFW3j8XiUkeM/Ovqd.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZrZC3x1Fkth3oJ2pihX1cEt2v6nD9zM1VO4H0W1nUxfEj4HKI3FIWtspTFIs', '2020-11-22 10:32:16', '2020-11-22 10:32:16'),
(219, 'فهد', 'حمد ', '', 'العمري ', 'Fahad ', 'Hamad', '', 'Alamri', '', '', 5, 'اعلام علاقات عامة وإعلان ', '1960-12-19', 1, 'binhamad@live.com', NULL, '1011294459', NULL, '$2y$10$vwMK6az3vldKs4HBRqDoLulQConWBFq0bw8TddIkZWfb9Lg2IvHFW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Eh1TU4UqH7OOICisKxgE0VSMdvGGGKq7d6qNnXxQqowA3T3pDzTMBEOLaB12', '2020-11-22 18:51:47', '2022-06-30 10:55:36'),
(220, 'مشاعل', 'سليمان', '', 'الناصر', 'Meshael', 'suliman', '', 'Al nasser', '', '', 5, 'عام', '1963-11-17', 1, 'mashael.alnnaser2000@gmail.com', NULL, '1034012540', NULL, '$2y$10$6DZvZdX1kWPrkCzfwybbZOZNj.09Z2QOedfAwJV4u4VH4vUkyGAuy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sUYxBWVn3JuY0HlEwvJ4hBl0HAF42SA9om1BAmOTjIjapm0KzSekhhKkwSHX', '2020-11-22 22:02:12', '2022-08-24 11:17:29'),
(221, 'ليلى', 'أحمد', '', 'عبدالمجيد', 'Layla', 'Ahmed', '', 'Abdulmajeed', '', '', 5, 'مناهج علوم', '1965-01-01', 1, 'dr.majeed.layla@gmail.com', '0555202199', '1021340136', NULL, '$2y$10$VuoHmMJ9t/denT1csg3nHuQnhiYiPUT7H0DgR2bFd0652Aj0SrkYG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yl9SFsIpAQtDKeKYyMzxGnA0kMTFCnVOBX6Md3CHaUbVWznd4OgZyzJ8D28J', '2020-11-23 01:10:37', '2020-11-24 11:33:34'),
(222, 'أحمد', 'يحي', '', 'ال عمر', 'Ahmad', 'Yahya', '', 'Alomar', '', '', 5, 'علوم طيران', '1950-04-18', 1, 'mohammed23238@gmail.com', '0566977202', '1000174233', NULL, '$2y$10$AMfEwfbHFEK6mknncNvBPu1hsJa5wpQ.kXLxAXe/.bxuCOIXMIC46', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'y2ep1Au3oguRkjZAHmZWAIT5yRC1loun5mOEqApJb3DtNMWh94T3klkyW0MS', '2020-11-23 01:34:39', '2020-11-23 10:16:45'),
(223, 'محاسن', 'فرحان', '', 'مبروك', 'MHASIN', 'FARHAN', '', 'MABROUK', '', '', 5, 'عام', '1955-02-05', 1, 'samo999@hotmail.com', '0550775207', '1018403163', NULL, '$2y$10$WG1JoVp3x0rwpO9WCPFaLu8uOqlaCtN7iDP9GiTIARPuihF1K5x8W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'lCOQ1BcL9ZbeHpALsd5evO4s7HPpqEtJ1vpA6M6uchhRcYgcvH4HpQWuXFi7', '2020-11-25 15:09:07', '2021-11-29 02:12:08'),
(224, 'صباح', 'ادريس', '', 'فلمبان', 'SABAH', 'IDREES', '', 'FELEBAN', '', '', 5, 'علم نفس', '1950-04-18', 1, 'knifeee@gmail.com', '0554443290', '1010901658', NULL, '$2y$10$yAZF6Bkvai1eREtJaKTj6uHa5rwSB9eb2Ac6kDwG8oFm2oAp0lL8S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'lrcUtiWorMBetJWdmK0hGefR7FbCaVomgc31mmvNu9Chmtvh0ZhGhAaEvQFh', '2020-11-27 21:47:28', '2022-09-05 17:14:46'),
(225, 'صالحه', 'فرحان', '', 'بن مبروك', 'Saliha', 'Farhan', '', 'Bin Mabruk', '', '', 5, 'خدمة اجتماعية', '1954-03-06', 1, 'salehafm@icloud.com', '0599348585', '1023109190', NULL, '$2y$10$BPw20k6j3McVo8oGdvG7OeZRi866QR5T5iEaNzMBolk2QNMEct.BS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eWc9k8eKFopsUJhHzL78meJFkVd30SpClyFCU87FxKR2Ifg8NyDDwYRFndV7', '2020-11-28 13:01:03', '2022-01-28 20:25:39'),
(226, 'سامي', 'عبدالرحمن', '', 'الحمدي', 'Sami', 'Abdulrhman', '', 'Alhemiddi', '', '', 5, 'اعمال مكتبية', '1980-10-31', 1, 'sami.alhemiddi@gmail.com', NULL, '1010522074', NULL, '$2y$10$ULuahBH9s2cuT/ZT4b5ry.eKqJ/Yk/Xve8g2LFKF2eRYfsfas7zCK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kdkGrDHN7yNwGkmbkTjoPs1o8Afs0IMdlH65p2Amgpm3iIudgeKrbcElDrnO', '2020-12-02 14:32:06', '2020-12-02 14:32:06'),
(227, 'موضي ', 'عبدالله', '', 'الدهيمي  ', 'Modi', 'Abdullah', '', 'Aldehami ', '', '', 5, 'تعليم', '1956-02-13', 1, 'abdulhadi_alsahli@icloud.com', '0500506522', '1007900994', NULL, '$2y$10$UZtPsXdqluCF2JtbWKLR0.8nay854lg4.CZXOrGolvxm8M8/d3dCS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9spHPVUhiPKzkLkaRvwTJ4RBFSWP0cjnoe6j6lNEDV07edizPUjQZ3BqPKsY', '2020-12-02 19:37:24', '2022-07-13 10:52:46'),
(228, 'احمد ', 'ناصر ', '', 'الزهراني', 'Ahmad', 'Nasser', '', 'Alzhrani', '', '', 5, 'طالب', '1953-03-17', 1, 'mm09vv32z@gmail.com', '0557711818', '1007539248', NULL, '$2y$10$KX8FGf3DisBOz03gSLUYWOthxM0I6bTetTOwKGPalrKyajfN63nXO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'YxNyTrP09evgt0hHpbEl5mRVSKpM2qGWdqZ23DZ6QZSbgdq1J9YYrtDRUVeF', '2020-12-06 00:23:09', '2020-12-06 12:19:44'),
(229, 'سعد', 'فايز', '', 'الدوسري', 'saad', 'faez', '', 'Aldosry', '', '', 5, 'شرعي', '1968-07-01', 1, 'saad138869@gmail.com', '0559598182', '1018016533', NULL, '$2y$10$JVOQ9PjePqRRHz3a5UNAGuOgLiBIHrRk6hnZvDMXxx7auceN8n03u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NB39sHmNEy66lmMBZV0psZA5wahQ1MYt6fSRllMgsbAbSzQqaVZXlVh9phNZ', '2020-12-06 05:46:15', '2020-12-06 05:46:15'),
(230, 'زايد', 'عوض', '', 'الثقفي', '', '', '', '', '', '', 5, 'ادبي', '0000-01-01', 1, 'zayid202017@gmail.com', '0502885315', '1028704755', NULL, '$2y$10$oHT49uIaQubIQdZFgGEA0evwCyK46Usj7YdUZA3Q/hd5eiDtlDH5C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1n0NmoT8H2RR5ACSHAYXAzTHSSdqV0SAATf6yFqNRtfB6aluCohTXTtgvvMk', '2020-12-06 12:18:07', '2020-12-06 12:18:07'),
(231, 'عبدالعزيز ', 'ابراهيم ', '', 'العضيبى ', 'Abdulaziz ', 'ibrahem ', '', 'alodhebi', '', '', 5, 'صناعي', '0000-01-01', 1, 'aio991@yahoo.com', '0505132086', '1012555858', NULL, '$2y$10$Hw7XAVw44E/awBrNHNCR7.ORF5lVAtVGyN5gR35.k6b1oKW2hmNNG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kXUuEcW8RLFOQ9qNsKX0p3dWyDhpIKHWFxCHa5abyR8PmyzRFWR9nSks9myZ', '2020-12-06 14:33:37', '2020-12-06 14:33:37'),
(232, 'محمد', 'سالم', '', 'العُمري', 'Mohammed', 'Salem', '', 'Alomari', '', '', 5, 'كهرباء صناعيه', '1965-10-25', 1, 'ms89ms89@hotmail.com', '0501866680', '1054728553', NULL, '$2y$10$YwLvxeOH7O3j7LJdGOBXPuwSw/b9jRtsbl/iOzUa1MnyW6NZYS2YG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZRv5xSxxwUr6rPfvmOji8FzvOcL3B0fORWOjlrx1jlcOuHQoKw4w9nu6UHsp', '2020-12-06 20:05:56', '2020-12-08 14:30:25'),
(233, 'محمد ', 'علي', '', 'عسيري', '', '', '', '', '', '', 5, 'علم اجتماع ', '1971-08-22', 1, 'mh.6643@hotmail.com', '0560403010', '1019433521', NULL, '$2y$10$k49e2TDZGxCO4OiSHS2O5.LXtJnhVUb9RXKWIH/wnspp.wos.6yrm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'guotDqLfSzytCVHzCGO5oncJEIARqRJan6NZX3ITiZsfDAl0kAa1ghH6j1jD', '2020-12-06 23:52:49', '2020-12-06 23:52:49'),
(234, 'مبارك', 'صالح', '', 'ال عامر', 'mobarak', 'Saleh', '', 'Amer', '', '', 5, 'ادبي', '1967-10-04', 1, 'msmw3294@gmail.com', '0598303157', '1004529697', NULL, '$2y$10$28Ch13l7I3OICeZuqTsM5erGwFxr/GiFhWYzTRK/QWhZkI/54RHUm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xEyphYwJALJ5FabeEaUh79w2jMsD5oVjnkSLOkgoxC02jOlyJGZrnHd32eHG', '2020-12-07 00:44:22', '2022-09-19 15:11:18'),
(235, 'فاطمة ', 'صالح ', '', 'العيوني', 'Fatimah ', 'Saleh ', '', 'Alayouni', '', '', 5, 'رياضيات', '2020-11-23', 1, 'Fsm.777@hotmail.com', '0558511130', '1065052696', NULL, '$2y$10$CmQAQx7wtMI8rRGGu0KZA.j29R7bLLqa8NaZ4ZKF.eEr839QJqc2K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hZpRk0ergPKUIVO0xAA5ve6S1rCxOii827J89zgCtqvds2VYtEtIfCsBcWWo', '2020-12-07 02:48:25', '2022-08-21 11:02:38'),
(236, 'احمد', 'محمد', '', 'الزهراني', 'AHMED', 'MOHAMMED', '', 'ALZHRANI', '', '', 5, 'علوم عسكرية', '1957-02-01', 1, 'abokhaled9438@gmail.com', '0537008899', '1008779439', NULL, '$2y$10$kNzfMl/kyDMh6IihtevpY.c1t9Zl4GOkYv9WZchXxWMhdGFRq13um', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1IujrB7W9NgF0h9wVApBRkdsTrBRT9r0AF13aIiDfKC9at83ko8Gj6xKBksy', '2020-12-07 13:49:51', '2022-01-24 14:47:59'),
(237, 'فراج', 'سعد', '', 'السبيعي', 'FARAJ', 'SAAD', '', 'ALSUBAI', '', '', 5, 'فني اتصالات', '1954-03-06', 1, 'farajalsubale@hotmail.com', '0553218218', '1011266259', NULL, '$2y$10$1abroWdx2gCEAn6yVbkTZuLhY50uT2qXmqKVfr8Nfa70xiQt2a2LO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dg5O29nuILg8cvzPJr5oWb9A71476pSQT1nqYel80AMTAODYcqKWNZZ8XovJ', '2020-12-07 20:05:05', '2021-12-31 00:52:39'),
(238, 'رمضان', 'علي', '', 'الزهراني', 'RAMADAN ', 'Ali', '', 'ALZHRANI ', '', '', 5, 'ميكانيكا', '1956-02-13', 1, 'Albdaade@hotmail.com', '0509191166', '1025465889', NULL, '$2y$10$z54gYjuGk45Z9o9oBVGCv.zwFGpA1WYo3QVFtXr8kxLqeD9j2LJe2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qCkth9cldzYNmaR3Tr7bpWULbiE9u8Dbp8Yfu1dUWwR9XW3OrOymTf3iSBGz', '2020-12-09 16:34:40', '2020-12-13 11:28:25'),
(239, 'عائشه ', 'إبراهيم', '', 'الفارس', 'Aisha', 'Ibrahim ', '', 'Alfars', '', '', 5, 'علمي', '1959-01-11', 1, 'Sami.kh1937@hotmail.com', '0509879879', '1026385342', NULL, '$2y$10$pFEU1ofYp7MUUqWghKgteugE7GWfeXk9.GwxBjKYV.RrS9mGKpec6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uZ3mrhxKBLSzpW0DTnxGetUEfHsqh5lDpb7x6wLru9ry2YeZMQl4CK10EkQL', '2020-12-13 00:09:08', '2020-12-15 13:50:53'),
(240, 'د/مقرن', 'ابراهيم', '', 'المقرن', 'Megren', 'Ibrahim', '', 'Almegren', '', '', 5, 'مناهج وطرق تدريس', '1959-12-31', 1, 'toftrees2000@gmail.com', '0505100720', '1010164364', NULL, '$2y$10$Ljm1HIIijDqbxaffauau7ek0cvUD2ZpafGdY9GQjAb4sAAX5ld/2q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'g7Pz1pNzp3NOWzig2bCjHHnEC5FxrxHFeltTK7TNYWh4azExshJeyvH6yOxp', '2020-12-13 20:04:36', '2020-12-13 20:04:36'),
(241, 'ابراهيم ', 'عبد العزيز ', '', 'اللهيب ', '', '', '', '', '', '', 5, 'شريعه ', '1954-01-01', 1, 'lhiib222@hotmail.com', '0540796678', '1036344545', NULL, '$2y$10$W6fXVyZV1kPTJwBBiFGBIOJ0mNY0v.2DZyeGK8acgjYsES76.MLia', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ECDkUiT8BHWU3rEubZ3rs3nVOnSKVXrC7luR4kalzSHcBqUSyuIma3K79MD4', '2020-12-14 14:48:55', '2022-02-04 16:39:49'),
(242, 'فهد ', 'ناصر ', '', 'ال قنيعير ', '', '', '', '', '', '', 5, '٧١ ب', '1973-05-19', 1, 'Abo-naser2011@hotmail.com', '0538332202', '1032222364', NULL, '$2y$10$KG0I47NsFiE5jb2qrSNiJeZ63xBdTdFkjtJvB5sP620zmcCf6ghNe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9pvHtHTv4uGf16WsvvvQxmbVreZZfHDGRcFZB3MlJPR56ZrtLMshXLVfFGJc', '2020-12-14 21:38:14', '2020-12-14 21:38:14'),
(243, 'نورة ', 'سعيد ', '', 'العمري', 'NOORAH', 'SAEED', '', 'ALAMRI ', '', '', 5, 'عام', '1969-09-12', 1, 'GHADEER.ALAMRI2@GMAIL.COM', '0538666688', '1015916461', NULL, '$2y$10$7ChVQDsp0pTMskf4FMV4UOG/31kiK0jc7HBSUm9WyZaqLnl7TzBGG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DOS8CzYHJNLXBWHpay1mCd3Mm1RsBVtmdwETxCh6hVQpk9nagpgojAx8NEqe', '2020-12-15 13:40:52', '2020-12-15 13:49:35'),
(244, 'لوله', 'سعيد', '', 'قزي', 'Lulah ', 'Saeed ', '', 'Qazi ', '', '', 5, 'رياضيات وعلوم', '1959-01-11', 1, 'lola.gozai@gmail.com', '0503129129', '1002589628', NULL, '$2y$10$0YzM0FxKT/j63X0eaj.Y5ulf/vVgMOGo5EbA9abpi67lZKHENOcjS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 's1l9ZVaFWu2RPdCLlxmGFwl2PZ4rsOY3DlpnPd2ZIMKNKqWwH2kZdpfSkbLd', '2020-12-15 22:59:02', '2022-01-04 18:02:32'),
(245, 'حنان', 'عبدالله ', '', 'اللحيدان ', 'Hanan', 'Abdullah ', '', 'Allohaidan ', '', '', 5, 'لغة عربيه', '1960-12-19', 1, 'sba_njd@yahoo.com', NULL, '1002706131', NULL, '$2y$10$oBmz.2vNz700loSD2YFo..pzXl7ZmAy04cfW6Y0.ZuRKKE/IUtnDC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IRLBwN4Q2IihfUIVa6PkxLhZnIVFe3Bb8y8ZFJcggoQcfzZFBh7tax4pj8Nj', '2020-12-15 23:14:00', '2020-12-16 12:29:34'),
(246, 'فرحان', 'عبدالله', '', 'الجبلي', '', '', '', '', '', '', 5, 'هندسة', '1950-04-18', 1, 'Farhanaljabaly@gmail.com', NULL, '1019304904', NULL, '$2y$10$RujPefLKjdCOmJuaX7p/JuOGbnULsv0DZA94fkfKFzY9NkkGaEE/K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MkQEsL8ArNyxf0P7DHdzaU2L7piqH0Cn5Am8uj4IJzJmikMXJeyV8asLJzDx', '2020-12-16 00:18:58', '2020-12-20 12:10:49'),
(247, 'محمد', 'احمد', '', 'القرني', 'Mohmmad', 'Ahmed', '', 'Alqarni', '', '', 5, 'دعوة كلية الدعوة ', '1954-03-05', 1, 'Mohmmad1441@outlook.com', '0508869860', '1042315885', NULL, '$2y$10$bdBsfj5O9AdHu7R4Blo2wuWOQ6UMk9mnBd.zUCNMKlzJaFUSR6ZJq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZLJwfetvWINXO6xtKu7KY4m0Zg2DIXgyoIhYEeRzYtJvCTd0ZHt3Ktlm9sOE', '2020-12-16 01:44:34', '2021-01-25 10:07:22'),
(248, 'سعيد ', 'محمد ', '', 'المالكي', 'Saeed', 'Mohammed', '', 'Almalki', '', '', 5, 'الاشراف التربوي', '1957-02-01', 1, 'it-1@live.it', NULL, '1011889555', NULL, '$2y$10$dyaAw18/.3vKUBsV7b2NDO5nDGuJbjQIDnasJOIV4eq6Pwj5eQAhm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4Wt1gFy7oSd9lu3L4c5SzYGUe8x456vfKXa0JFu8vVqjApb3D94wvdheifR5', '2020-12-18 15:58:59', '2020-12-18 15:58:59'),
(249, 'عبدالله', 'حمد', '', 'الحميضي', 'Abdullah', 'Hamad', '', 'Alhomaydhi', '', '', 5, 'تدراسات اسلامية', '1963-09-19', 1, 'Abdullah.5678@icloud.com', '0592102500', '1029418934', NULL, '$2y$10$An8AVRKjd17lTA6g1Tn2eOPZgurZ8nob1uTqE073SwtAKL8I/DXnu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sHa4KS0SoBqqxdHmabBjjFnWWBmy7a9zctf7DNY5dBN610NS3klAIxq8ieEq', '2020-12-19 21:14:56', '2022-03-28 14:03:25'),
(250, 'علي', 'محمد', '', 'المقرن', 'Ali', 'Mohammed', '', 'Almogrin', '', '', 5, 'اجتماعيات', '1963-01-01', 1, 'almogrin.mohammed@gmail.com', '0504312123', '1006467581', NULL, '$2y$10$h3BHs/oY8mjfWr9WvZZsROqsvEPWDTz0orE8Zqw9MqW95ALjuB6Ru', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LDir1oLNltQ7ZsBVVrydYhD5vyoePffdxi1GPpIES9WKwDqkPVgqTQX5E6mu', '2020-12-20 22:51:11', '2022-01-02 19:49:01'),
(251, 'خليل', 'ابراهيم', '', 'الصوينع', 'khaleel', 'ibraheem', '', 'alsowayna', '', '', 5, 'رياضيات', '1955-02-23', 1, 'khaleel.ios@gmail.com', '0505233396', '1010169637', NULL, '$2y$10$fHlvmzAWxy81mzV1gM43A.jMXusEZc5hBi8eNkeHupQRmURN1zPKO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hvnZYQLxaHdSYcamAYXDgSAMRzWa5Tu8jbQwZAVOuZEi4wWhAE4v1MvLU1qy', '2020-12-20 23:19:22', '2022-01-23 19:42:53'),
(252, 'هدى', 'صالح', '', 'العُمري', 'Huda', 'Saleh', '', 'Alomari', '', '', 5, 'صفوف أولية ولغة عربية', '1964-11-05', 1, 'huda.s.alomari@gmail.com', '0555461309', '1051517215', NULL, '$2y$10$xxJTJNNNyEN9xKgZTQaZlec1QRu3BPdqRUNI2FsDG8rakcQH.5aqq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wwh6VwvSWhyQAw2MM02Eh6rldsjJ7bzk5QFLBWLYCDig9gq2EDSfv1BmpKVa', '2020-12-21 15:43:08', '2022-01-08 18:42:12'),
(253, 'عبدالعزيز', 'عابد', '', 'المالكي', 'Abdulaziz ', 'Abed', '', 'Almalki', '', '', 5, 'طيار', '1962-11-28', 1, 'malki8624@yahoo.com', '0554737300', '1038862007', NULL, '$2y$10$DT5Q1619MOc/tG/DqyhbC.oETekfyttdnqqYUUvnr/FC1aReUI8Pa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FBc2eQ1pkUXqDvBAP78dRRn3wVX28blv38ZTcXOGXdo2FpMKwveyGnzKipdr', '2020-12-22 08:53:50', '2020-12-22 08:53:50'),
(254, 'سعيد', 'عيضه', '', 'المالكي', 'Saeed', 'Eidhah', '', 'Al_Malki', '', '', 5, 'التشغيل والصيانه', '1962-04-26', 1, 'Sammalk375@gmail.com', '0595111011', '1029426911', NULL, '$2y$10$yhYYCjNn3vKvlowuszZ0Zu40ESOMaEjOGNKAI09g4CxqCTm.9ee0a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ybGa6W3E3ctq78jl3vzOYa2kIPoXMkrJtUMSQEOCPE5gu6Ff6OykWAho7bE6', '2020-12-22 15:37:27', '2020-12-24 15:11:23'),
(255, 'ذعار ', 'تركي ', '', 'السبيعي', 'THAAR', 'TORKY', '', 'Alsubaie', '', '', 5, 'قانون', '1988-12-06', 1, 'awa7755@hotmail.com', '0551166595', '1080344631', NULL, '$2y$10$5.ZUuxh5ILvj5YDM7Lp2/emHszA/IsB5/zR5pbQ9vSVC0Rw7qvLjS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'APhPBBfeWMNPXRqRf4Wqnv0l4zDVJWIctKjOCTXLNUMk1rPW6NNJlePlAU1O', '2020-12-22 19:12:57', '2020-12-22 19:12:57'),
(256, 'محمد', 'خلف', '', 'العنزي', 'Mohammed ', 'Kahlaf ', '', 'Alanazi ', '', '', 5, 'لغة انجليزية', '1972-09-09', 1, 'adel241@hotmail.com', NULL, '1021484199', NULL, '$2y$10$ajdKhMHntLMlAtcY3xo3CeuTSPbG4dSsvW6fbalfyv8eQAK04QWDa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'lP8gkhawKbjrBESSycPmNtG60j2Ey3bAgoZqwSQnARDvo0C9IdyyaC1lkjFr', '2020-12-24 00:33:23', '2022-07-03 02:02:55'),
(257, 'عمشاء', 'سالم', '', 'الجبر', 'amsha', 'Salem', '', 'algaber', '', '', 5, 'تربيه فنيه ', '1961-12-08', 1, 'amchaaljaber@gmail.com', '0554134437', '1003180047', NULL, '$2y$10$HUWPgLD7uuJPJBGoKvOIfuneIxYAO/wXZLREYWE2qkwVnJ7Al4x/W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1qFCm8pyxbp0EgfY3LpAXG6REBZrYXyh6JBsEf9L7cS2ucaS6LWfWe6cnNb0', '2020-12-24 20:32:08', '2021-11-08 21:31:35'),
(258, 'غادة', 'خميس', '', 'الأحمد', 'Ghada', 'Khames', '', 'Alahmed ', '', '', 5, 'مسجل معلومات ', '1962-11-28', 1, 'g.2525@hotmail.com', '0500376006', '1050352051', NULL, '$2y$10$/fUx/wdo7YYjwIyMOxGJOuynWkYxG9dJVYMUOvGEA2iwW4jWzdxVa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1SzDaPTPXbxHjdUkUu0tt67OU5RUOSMl8zp0csUiyvQbuI0clb1JUL2lIMFA', '2020-12-25 05:50:36', '2020-12-27 14:50:28'),
(259, 'موسى', 'عبدالله ', '', 'السبعي', 'MOUSA', 'ABDULLAH', '', 'ALSABEI', '', '', 5, 'صيدلة', '1950-04-18', 1, 'MOUSA.ALSABEI@GMAIL.COM', '0504442240', '1012179444', NULL, '$2y$10$jmGPchNK1GJzmq42PdPTiu5ot2vG970vYZ53ud4jkwXdeeWxkGUfq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8GQcrIEiBjjBVqJhRBvRyNEHrkGu24RTAXw0KWQ5rBvM77I4eiasY5B0nMse', '2020-12-27 15:44:40', '2021-01-12 13:08:32'),
(260, 'احمد ', 'مسفر ', '', 'القاضي', 'AHMED', 'MESFER', '', 'AL QADHI', '', '', 5, 'ادله جنائية', '1967-10-04', 1, 'ahmed.m.q1889@hotmail.com', '0540404516', '1019494069', NULL, '$2y$10$B0t6xP67u5kJqFWtCoRJU.R1vzuuhkd8ohxGQ8YpLkoBOXBp8QJC6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yIBOjyzpr8m5F4nIbm2mduxl2cQedDDFLwZcYaAjkILybe8xkrxooh9Bty4q', '2020-12-27 20:21:42', '2020-12-31 13:43:20'),
(261, 'فوزيه', 'عبدالله', '', 'الدريبي', 'Fozyah', 'Abdulh', '', 'ALduraybe', '', '', 5, 'دعوه واعلام', '0001-03-01', 1, 'Ksaiphone940@gmail.com', '0505271932', '1032714659', NULL, '$2y$10$O/6lv7uMJqq5H2ly73Rrqu/8KSkiN18901L8ReowONswp.Zd47azK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'JrIQLuMTCFS0nY42VAqerK6qqXHHZt8OTvKzWy7OTo3b6BxKlfDEFDYnH3FY', '2020-12-28 13:26:47', '2020-12-28 13:26:47'),
(262, 'معاضب', 'عناد', '', 'المصلوخي', 'Muadeb', 'Enad', '', 'Almaslukhi', '', '', 5, 'محاسبه', '1959-12-31', 1, 'men1959m@gmail.com', '0500262580', '1005096043', NULL, '$2y$10$I/78/BtOwKes0Jpt6kjnSeyNI0dwCTWBM5E4nh.t4PWnSEH6AyrfG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'awYrTKpPKiGm5qu15QQRI7tcFTaXMRC9mTgucBTw5sPgrgw4k0qgJkyFOh7o', '2020-12-28 23:12:25', '2020-12-31 13:45:00'),
(263, 'خليف', 'عشوي', '', 'العنزي', 'Khalaif', 'Ashwi', '', 'Al anazi', '', '', 5, 'ثانوية عامه', '1958-04-20', 1, 'Khalaif001@gmail.com', '0560308484', '1040290080', NULL, '$2y$10$tVwcJuzsMM203RnJYJmeY.Sk7gppC/BHjkHzF9njW8SwTOTwvHnam', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'iCm3cZO1gckVhWuylMPwfrrAg2tWz5uRcDu4Ho3Td76aM0tmPnvxPWQM4CKW', '2020-12-28 23:42:08', '2020-12-31 13:46:03'),
(264, 'امل', 'عبدالله', '', 'الحميد', 'Amal', 'Abdullah', '', 'Alhumaid', '', '', 5, 'حاسب الي', '2020-12-16', 1, 'amal.humaid@outlook.sa', '0560054423', '1048129223', NULL, '$2y$10$wZT1oZ9qIPM7W.08Z0tU4.Xbz8kfwflw33nKneEdL7QQ7z11.nHw.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ORKh0O0TzVHTOH8rhAgtQk1lPjAoaIVeBgrihT8jgtFxddvQSOUI4Exe6fQ9', '2020-12-29 01:02:47', '2021-10-23 19:10:21'),
(265, 'سلطان', 'مطرد', '', 'المصلوخي', 'sultan', 'mutarrad', '', 'Almasloukhy', '', '', 5, 'امن واستخبارات', '1965-06-04', 1, 'sultanmas@yahoo.com', '0505419107', '1028914123', NULL, '$2y$10$pE30UZDFkXgKqj2xjoeXO.GWexDYp4Mocz2CIEFKqCl8sYnpoK/j6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PVwlYjrfHMtuk5bQjxbkehE39SpqZtBnLZIuVgCnBMxniTVHR0FWILOhnjdY', '2020-12-29 21:25:53', '2020-12-29 21:30:34'),
(266, 'عبدالعزيز ', 'علي ', '', 'الشهري ', 'Abdelazeez', 'Ali', '', 'Alshehro', '', '', 5, 'لغه عربيه', '1957-02-01', 1, 'aa76aa76@hotmail.con', '0503212126', '1039638679', NULL, '$2y$10$kFfsbOh8tv5QvnqUraEsJ.pkTPS02BMYSElZjlNI95UWeuBYI770a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Wh0eJXjf2rsCf2LCF5Bhy8RWSQbAkKN732aWUhrAEbwDIku3pu7bRkCCXbCd', '2020-12-30 01:59:09', '2020-12-31 13:38:21'),
(267, 'فاطمه', 'مفرح', '', 'الزهرانى', 'Fatamh', '', '', '', '', '', 5, 'اقتصاد منزلى ', '0000-01-01', 1, 'fatamh41az@gmail.com', '0562002006', '1027446945', NULL, '$2y$10$eCvSqDvnu3LV754ztt/v4.VDGODCAwbi8h.Y2vWU9F7r0TfqEUvfW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'OXSSZ199fjcmQiAl2rKEVikDTs97MtO4Xws22i9ffYHscGlDAeyHKE8EgZdJ', '2020-12-30 03:09:32', '2022-09-06 11:57:50'),
(268, 'منيرة ', 'عبدالرحمن ', '', 'الزومان', 'monirah', 'abdurahman', '', 'alzoman', '', '', 5, 'لغه عربيه', '1953-03-17', 1, 'Mnrzmn@gmail.com', '0541144419', '1015703968', NULL, '$2y$10$nsWxIkoMOfJ2kkwDdoE7CuW8G6/xTbEduChRFrKtdepk6mCDrbWCW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'U8MCdk6xvMHvIupDVp8OFe8WZGX9xS2qXHTmbbo4kAeQfKPHMTnzIAPUsWb7', '2020-12-31 04:20:29', '2022-01-04 18:07:56'),
(269, 'خالد', 'عبدالله', '', 'المسيند', 'Khalid', 'Abdullah ', '', 'Almosaind', '', '', 5, 'ادارة مستودعات', '0000-01-01', 1, 'kmosee1@gmail.com', '0546775528', '1030302077', NULL, '$2y$10$TCIT2wlgVj10jEB0xZ5B0uJDhFZTsVcqe5ujCs4FpTAERHLbLURlu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kZz677RJorurN7H6nV3C4Wkti96MAbd3Bl9S8GPpJQBtztmvrngfWGltytTt', '2020-12-31 13:32:26', '2022-01-04 18:01:12'),
(270, 'فاتن ', 'صياح', '', 'الرويلي ', 'FATEN', 'SAYAH ', '', 'ALRUWELE', '', '', 5, 'عام', '1959-12-31', 1, 'REEMMR319@GMAIL.COM', '0555461642', '1007153024', NULL, '$2y$10$ovQM/tVnIOwWoUZ577kL2.D42umjax1ON0/tL8qxWnFx.XJuLqn0i', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LAQ5CpD3pS6MtBHFknI0MQP9gxCss2YM2Ewl7REJeUYXLzAJxiLIeeVv3dLC', '2020-12-31 14:56:50', '2020-12-31 15:02:01'),
(271, 'عائشة ', 'علي', '', 'القبيسي', 'AISHAH ', 'Ali', '', 'Alqubaisi', '', '', 5, 'فيزياء', '1960-12-19', 1, 'rooma5099@gmail.com', '0504292105', '1038273734', NULL, '$2y$10$1T/na0HAD8tVHKx9iZKa0uaiOXYsOyBOOnq6LU7xn56K64iNce/lG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HLTu6uVZBgY0cbGbR03rMzyTbduepA4cugwfxdZICbcMwcikpq9oZxmsGfog', '2021-01-05 01:23:59', '2021-06-21 13:51:45'),
(272, 'هدى ', 'حماد', '', 'الحماد', 'hoda', 'hmad', '', 'alhmad', '', '', 5, 'تربية فنية ', '1969-09-12', 1, 'Lmh2000@hotmail.com', '0506791383', '1011874441', NULL, '$2y$10$anKMjs8OfGULpgupyTLrmu7WNSETpK7rCwg50KyQfGPRc.cMrn2XC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'G85DqtuJJBeY3SgDeFWVvyNuBOLljPZezxXp6ujRdPaoMTyzRGvVL5VKrMdA', '2021-01-06 14:29:44', '2022-02-20 17:39:35'),
(273, 'عبدالرحمن', 'عبدالعزيز', '', 'المقرن', 'ABDULRHMAN', 'A', '', 'ALMEGRREN', '', '', 5, 'اداب', '1958-01-21', 1, 'aboahmed993@yahoo.com', '0555299305', '1012449276', NULL, '$2y$10$m3vEGeVunzzSpP36OfSiBuGL1CJANsYvtD52pbdDxZmEs9mX2vl3i', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xSCX63O2TCHkZLsbJUnLJP1Ut2TsqfN0vBwIcJEpwDSoSR9YzhYPc37nf3CL', '2021-01-06 17:04:22', '2021-01-17 14:15:24'),
(274, 'سهام', 'سعد', '', 'الصانع', 'seham', 'saad', '', 'ALsanea', '', '', 5, 'علمي ', '1962-01-01', 1, 'Mahaysm12@gmail.com', '0505206269', '1009833771', NULL, '$2y$10$hjVOWcebzhtZa7MOcKRy0.5IOek8cib.N9FbdLa5.85fEl8tefDHe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'H1QILhXKfwB8m6Sx7kQTvLnEGiZ1OoUmjbyYyfm9Wb6pUjvirmjX1lvTcMQo', '2021-01-08 18:55:02', '2021-01-18 11:32:02'),
(275, 'آمنة', 'يحيى ', '', 'الشهراني', 'Amnah', 'Yahya', '', 'Alshahrani', '', '', 5, 'دراسات إسلامية ', '1960-12-19', 1, 'amnah.y.sh@gmail.com', '0566777158', '1002738258', NULL, '$2y$10$fPzO0c0n7o9BRlz3sKQFiejNKQPYuOJLw0PDRX7nCBxTv.BU0FRzq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nVH2x9jiRiCoz57niLW2NBdUFjIDO4CiX8FzkSUxqyrRvLrNSgwFlxoshKhf', '2021-01-12 02:17:35', '2022-03-10 16:46:56'),
(276, 'سعيد', 'محمد', '', 'باسماعيل', 'Saeid', 'Mohammed', '', 'Basmaeil', '', '', 5, 'الإنتاج الحيواني', '1947-05-21', 1, 'basmaeil@gmail.com', NULL, '1012824460', NULL, '$2y$10$yBylvy2LoeFVD4kBWVLST.SaA8In1g9v6XWYu.RY4gBWF9AABzRSW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KRFmtDlECgVCOPgRc7ZjZmvbMGSLG3D4c1XMkHAmEUNizHk9D6DLYcNMOyYX', '2021-01-12 15:04:34', '2022-05-11 12:38:09'),
(277, 'حصة ', 'ظافر ', '', 'الأسمري ', 'hessah', 'dafer', '', 'alasmary ', '', '', 5, 'صفوف أولية ', '0000-01-01', 1, 'alrajiah2010@hotmail.com', '0504143563', '1024419887', NULL, '$2y$10$c5qnGWjMu4VSA1J7.UdQ4e77rbOtlzHhZGiHb3dZg6q3RrkItLnnS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5ccZuxsWFPAxhkLoxum14hcyBgiXBieZZQNLhgxHZs0kCyTw7uP7neZpeS4j', '2021-01-13 02:52:39', '2022-07-03 13:23:16'),
(278, 'عبدالعزيز', 'سعد', '', 'اللحيدان', 'Abdulazez', 'Saad', '', 'Al-Luhaidan', '', '', 5, 'هندسة إليكترونية', '1967-05-18', 1, 'aborayyan22@hotmail.com', NULL, '1048661589', NULL, '$2y$10$nBt98fUekbvwbEWYMN37QePLeWffExcQ6ebTVpGQtOXiI1eG0OmDy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '83TbatknXnc7ZyZCnEBiFkkpsnmKItEiKCo5NoE9cmEQCWNIcC2qdkq73Dqr', '2021-01-13 08:01:47', '2022-01-19 18:17:14'),
(279, 'محمد', 'صالح', '', 'الرشيد ', 'Mohammed ', 'Saleh ', '', 'Alrasheed ', '', '', 5, 'اعلام', '1959-12-31', 1, 'm7md.media@gmail.com', NULL, '1041690734', NULL, '$2y$10$ZqabIRXtKupgV9ijOwv9KO6qWcxf4D7vyLw5qy4XBv6afsNhoNiaO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'm0uqyQgtaqekUIIT5N5ufh2QNxIK7KWe7jbvcsSEDOnTJj6UVxQIGMxjUmfH', '2021-01-13 19:37:36', '2021-01-13 19:37:36'),
(280, 'محمد', 'عبدالله', '', 'آل حموض ', 'mhmoed', 'abdalah', '', 'alhmod', '', '', 5, 'مهندس اتصالات', '1960-12-19', 1, 'hammodh1877@gmail.com', '0554904243', '1020864912', NULL, '$2y$10$sys2GyGUXEEkLSz/wHlu8OHJtkwmRirvnLx1lcTzH/u6weABOPF3O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'G48ohWakqAOHzSrz1sAfZltcsU2cEEVGRqMhT6CmMzXmhy4jq9Wz8tBofsND', '2021-01-14 11:42:47', '2021-01-14 11:44:04'),
(281, 'شريفه', 'عبدالعزيز', '', 'العنزي', 'sharifa', 'abdalaziz', '', 'alanze', '', '', 5, 'لايوجد', '1960-12-19', 1, 'nooral30mrs4@gmail.com', '0555413738', '1049288549', NULL, '$2y$10$trGcscBtFyaZb.NiSbcsVe9zRN53Z.EDd0oE79.HJt2awRGuyhxd2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'G7yssEPMJvZuJTQhqHfjRjjwf3wy3FuUugnyAecz9quqh2wf5k3CNlMjUOhJ', '2021-01-14 14:52:26', '2022-01-08 18:17:07'),
(282, 'علي', 'بخيت', '', 'الزهراني', 'ALI', 'BKIT', '', 'ALZHRANI', '', '', 5, 'بكالوريوس علوم عسكرية', '1966-06-28', 1, 'ali-bakheit9937@hotmail.com', '0504226586', '1035996022', NULL, '$2y$10$Oei6SwHSBofvbC4JpOxdZuW9G0auc034DAhd8Ntt.j8vHUg63Eer.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mjCtSLnnggBkhVrpJTjMDRksRkyShbz8lgSHNNdz1BIPVS9p4L4n1FxnaD9Z', '2021-01-14 15:13:40', '2021-01-14 15:15:07');
INSERT INTO `beneficiaries` (`id`, `first_name_ar`, `second_name_ar`, `third_name_ar`, `fourth_name_ar`, `first_name_en`, `second_name_en`, `third_name_en`, `fourth_name_en`, `employer`, `retirement_year`, `qualification_id`, `specialization`, `date_of_birth`, `membership_type_id`, `email`, `phone_number`, `record`, `email_verified_at`, `password`, `role_name`, `Status`, `paid`, `start_date`, `end_date`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(283, 'انتصار', 'عبدالعزيز', '', 'الهذيلي', 'Intesar', 'Abdulaziz', '', 'Alhuthaily', '', '', 5, 'ثقافة إسلامية', '1963-11-17', 1, 'bedoor.1987@gmail.com', '0500799500', '1002086393', NULL, '$2y$10$vEwgcnMxjGZM6M4xV0NVHum13/qmhcQGK54aMOeAZ9AvMyo5yzhzK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Tl9vsrW0wmUpcyu4JdfnIMs8vYpJ7IEiEr22IuOZVycaKEC7iYUoUuN9pVkq', '2021-01-16 16:49:46', '2022-08-18 12:00:44'),
(284, 'محمد', 'سعد', '', 'البراك', 'Mohammed', 'Saad', '', 'Albarrak', '', '', 5, 'الشريعة', '1957-02-01', 1, 'abdullah.barrak@gmail.com', '0566448040', '1008591388', NULL, '$2y$10$hEz6QGK87GEWB4SCuEh4OOsraj4XNogjbkAXlOiGiPA.um0ZmDYaS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'iz33ZKMtHPRtoUrR6f4uzNXjGV7cJfdPMK6pthVxs0HxUNWybiQpDqfjdhbo', '2021-01-16 21:00:09', '2021-10-05 18:13:55'),
(285, 'هند ', 'صالح ', '', 'الخمشي ', 'Hend', 'Saleh', '', 'Alkhmshi', '', '', 5, 'خدمة اجتماعية ', '1968-09-23', 1, 'Najlaalkhmshi@gmail.com', '0505183113', '1014387334', NULL, '$2y$10$dt55s22OdOssu2c0EF8st.tPIgH..ak4ORyTvJHjAUD7iGRjgbjDe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7oqXishRqzaPRQMMkAUmgey3DQg97mUbdR0EubxJCr9CPgo2mjdVUBFHD4VO', '2021-01-17 01:09:34', '2022-03-10 16:54:42'),
(286, 'مها', 'صالح ', '', 'الخمشي ', 'Maha', 'Saleh', '', 'Al kmishi', '', '', 5, 'معلمة', '2021-01-14', 1, 'Maha.alkhmshi@gmail.com', '0555468878', '1006327603', NULL, '$2y$10$nJUpnU041UeFlHktRNQYH.6UzvLEbtENK/28RhnSbEWb/4kGMohA.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZEgU94yI86t9UrGLiLyhKqsgbY7sWNoVgIBrJ2YJdbMBLsJJ0LcmDQjSZiLM', '2021-01-17 01:29:49', '2022-04-24 13:24:03'),
(287, 'لطيفة ', 'فهد', '', 'المطرف', 'LATEFA', 'FAHAD', '', 'almotref', '', '', 5, 'لايوجد', '1959-09-19', 1, 'Latifahalmutrif@icloud.com', '0505253471', '1003475801', NULL, '$2y$10$jANa2qFwuXpPp407yCWYieSiKv3S6kQm3pX.3iqSoWVamQTmxj./e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9eDO68ZyPEKLI19qb3sTT8CjPaDg67866M4T5Pr2C3ijwkbabTgzZBPfGeXr', '2021-01-17 13:42:10', '2021-01-24 11:57:13'),
(288, 'عبدالمحسن ', 'محمد', '', 'البجادي', 'abdalmhseen', 'mhmmod', '', 'albgady', '', '', 5, 'دبلوم صحي عالي', '1955-02-23', 1, 'M.al-bejadi@hotmail.com', '0505253471', '1003475793', NULL, '$2y$10$/hv6xcubYK1majcFnsvWseqAAMV3ESQsAcsjkXvbLks4bDAWTKHte', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vaTsfPiI34puFssATfT9nCleRHUgGz0A2EpmiMQ9P302vQHusfG8px5JksIz', '2021-01-17 13:56:17', '2022-01-24 14:48:57'),
(289, 'سارة ', 'عبدالكريم', '', 'العبيد', 'sarh', 'abdalkarem', '', 'al abed', '', '', 5, 'لايوجد', '1958-01-21', 1, 'sara-170@hotmail.com', '0580226624', '1023636457', NULL, '$2y$10$Fngv6Gxd0kWy1fvLzXqwCezuXDSLQcJdU66rEEIjjII3r3JifzUTO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5PakSAePMBuOIUSZYSmWpiZbKsDmAUxHNwpzCaEWeR0VSDzSvMV3WkXxSGBE', '2021-01-17 14:30:03', '2022-03-10 16:28:06'),
(290, 'سميرة ', 'جمال', '', 'المشهراوي', 'smerah', 'jmal', '', 'almshhrawe', '', '', 5, 'علم اجتماع جنائي', '1959-12-31', 1, 'samar.mash@gmail.com', '0505479198', '1017645589', NULL, '$2y$10$N/ejEI9/lqnyN2J1kxMOK.F4kxp95otMa.JhKzs4i7NYg7tlHBq3u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Z7SRhD1t9CwC54emmisvBNUU92aQwgV6grw2x3B0qdU4kVHAOGPgVbaUq7aG', '2021-01-17 15:12:33', '2022-01-28 19:55:57'),
(291, 'حياة', 'جميل', '', 'الساسي', 'Hayat', 'Jamil', '', 'Alsasi', '', '', 5, 'ادبي', '1959-12-30', 1, 'hayatalsss@gmail.com', '0554145700', '1004651897', NULL, '$2y$10$5lTPR9hxYSeX.V/O4pmoJu6yYW0K3Jg2K3LDjcjX9MxiIr6DXzMHG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hVxc2S9IVAb92tvU6RLdfzpWipxkVC7wIkBVqMXU0VS8x833na0WBIeoc8TQ', '2021-01-18 01:57:34', '2022-05-08 12:39:40'),
(292, 'عبدالرحمن', 'زيدان', '', 'الطويلعي', 'abdulrahman', 'zidan', '', 'altuwelei', '', '', 5, 'عام', '1956-09-13', 1, 'bn_zidani@hotmail.com', '0504409963', '1044200416', NULL, '$2y$10$Ifm7pdT3F8mFdCpg3FLWL.TBvId1AT9VlkKSxgzUBn.5w.GsFWM1G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FfCOe6R9c49z3PYYqXJOjEA1qBvErStRzGDVO3c46wzl8D2bfmFDTlUmFRkY', '2021-01-18 12:56:18', '2022-06-18 19:16:09'),
(293, 'عبدالله ', 'مفرح', '', 'السبيعي', 'abdallah', 'mfrh', '', 'alsbyie', '', '', 5, 'لايوجد', '1961-06-20', 1, 'abdullamefarh@gmail.com', '0580722333', '1033872084', NULL, '$2y$10$lvuZqnariSIK34u/IOmHKOMKJ4AWKOVrP7B.Q2TmJOlxZVzC8ygZq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gnBpoivxi6Y9G7pzWQgFAaLGIQ0xgBK17czXSMjMKcM1zgMiz8Jv6wJ3b7Gk', '2021-01-19 12:38:21', '2021-01-19 12:40:17'),
(294, 'حايل ', 'غالي ', '', 'السهلي', 'hail', 'kale', '', 'sahali', '', '', 5, 'عسكري', '1951-04-08', 1, 'hail.sahali@gmail.com', '0505119666', '1010962619', NULL, '$2y$10$q1RJFS8e91Dbw/pR50v0ueKiNaDVG6HqDMKzZp.h17XqvE2Pcv0ty', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kJ4PuIFqyNBmHXP4uo9Ik6jRhXKSjBmIeskcOs4ryiERHXCXtwMCdkBtCpk5', '2021-01-19 12:57:19', '2022-07-17 11:30:52'),
(295, 'الجوهرة', 'علي', '', 'المغيرة', 'ALJAWHARAH', 'ALI', '', 'ALMUGHYIRAH', '', '', 5, 'دراسات اسلامية', '1964-11-05', 1, 'raaawan96@gmail.com', '0505271819', '1058875012', NULL, '$2y$10$f6H4zvbx9X7ESRyVnBBMEO7e6JeUZQjtxXxBDxLrZs.YVZXgO3o7K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2RuWdOrsqR3URmm67OrBHhJcSwr2z7mV4yaQVAePydZCUzmdhywtkF46fJtV', '2021-01-19 13:26:25', '2022-04-25 13:58:17'),
(296, 'صالح', 'محمد', '', 'العزام', 'saleh', 'mahmmod', '', 'alazzam', '', '', 5, 'علوم فنية', '1952-03-27', 1, 'hid3144@gmail.com', '0555740519', '1026533743', NULL, '$2y$10$mgm0pkx1aE2GlQ32X.GmVOOR6gbbDbgrq1e8Y1JcH0nujARe2a9cS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dBeiiuN1PVK4vG1F5ApkfnwQOhXcK55KNhpLkaOxAlOrDWbbDN5yZwFctirW', '2021-01-19 13:45:41', '2022-07-03 01:55:22'),
(297, 'علي', 'عبدالله', '', 'الجربوع', 'Ali', 'Abdullah', '', 'Aljarbou', '', '', 5, 'جامعي تاريخ', '1950-04-18', 1, 'Ali_aljarbou@hotmail.com', '0505215617', '1042403020', NULL, '$2y$10$cgQOJ.NoKJAvuMswS.9Bu.P0r7EwVrfC/hmz4qbfOrBmTCpIqMJty', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qYdPchd4L9kzfNFKDhYrLEBpCjedKBFSCl5w2lbyKDkhrW37a9VMp0UWAXUi', '2021-01-19 20:23:39', '2022-01-08 18:05:32'),
(298, 'تركي', 'فهد', '', 'العيار', 'TURKI', 'FAHAD', '', 'ALAYYAR', '', '', 5, 'صحافة', '1959-12-31', 1, 'alayyar59@yahoo.com', '0505470037', '1029289202', NULL, '$2y$10$ZqGqhDxELBpylK89Zl5qxuopQrC6bHGngm22IUM4L6V.WLz9udo3C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sMveJSNQGqLXfieTSXJpEEO9l1FDmHCrUylWJNAm7BpTM20lgKKvZPQWjsrT', '2021-01-20 15:02:02', '2022-01-08 18:14:37'),
(299, 'جميّلة', 'عيظه', '', 'الحارثي', 'Jameel', 'Eidhah', '', 'Alharthi', '', '', 5, 'مدرسة', '1963-11-17', 1, 'Jih404040@gmail.com', '0556565566', '1054082795', NULL, '$2y$10$drZVUBhc57aGomETxZbfEOmFpNubzlUEqcOduN4EbE0J9QF6Fhxui', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'emyCn5ZZ4o9OVriQJ2VC9LWE4u3Whe37axESiilQQPhkeBDOXG7SXorYJdVg', '2021-01-22 14:06:19', '2022-05-08 12:46:46'),
(300, 'نوال', 'عبدالله ', '', 'الجميح', 'Nawal', 'Abdullah', '', 'Aljumaih', '', '', 5, 'دراسات اسلامية', '1959-12-31', 1, 'Noil204843@gmail.com', '0552842000', '1000876845', NULL, '$2y$10$y1/chjju9BsBXuA3yE6b5OPRpPeYiwoJcI.a.722clXirVDYrt8Bm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Ngo98Y9PQ7NOVRrzfrtGuti3F9RPnAOeqKh6BdLnKVLiBnPaH3KAzrpqUaUr', '2021-01-22 22:00:06', '2022-07-03 01:59:21'),
(301, 'راشد', 'عبدالرحمن', '', 'الرويس', 'Rashed', 'Abdulrahman', '', 'Alrowis', '', '', 5, 'آثار ومتاحف', '1960-12-19', 1, 'rashedalrowis@gmail.com', '0549440088', '1027497260', NULL, '$2y$10$kjh75RR0u8ZdBR0fv05qp.sJajJgqhiRpFV0awa3VrSM8Hmg4X1ji', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '98SIF299En6kv8CH6VJyKk0LATHpJOowK4FuK91A5WQU8XHJL8oV77mPHFuc', '2021-01-24 22:37:13', '2021-01-24 22:37:13'),
(302, 'حصة', 'عبدالكريم', '', 'الزيد', 'Hessah', 'Abdulkarim', '', 'Alzaid', '', '', 5, 'دعوة ', '1962-11-28', 1, 'Hassah.alzaid@gmail.com', NULL, '1056792078', NULL, '$2y$10$zaj6P7vdgBp6WxImjH6CuOr8nxAPdmfGXApVUX0s8Czw9ySy9ehz2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jD3IrQy4GS3m20WODhPzAWV1O1343CVljH4hj6Qrd5fC3IMjpmJ2iosh3yNg', '2021-01-25 09:32:24', '2022-08-29 14:39:46'),
(303, 'عبير ', 'حمد', '', 'الشريم', 'ABEER', 'HAMED S', '', 'ALSREEM', '', '', 5, 'دراسات اسلامية', '1974-11-28', 1, 'MNAALRAjHiy@yahoo.com', '0505449167', '1037670781', NULL, '$2y$10$u/ZjVUbFZn/1/n4Gle4lqOt1mdNdcxsShFkPsCbJlGX.j4iVeviIS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '09ciuL4UeVk5Knm7WV9QX1TqtEpqOTKbOENdvnuZ2oypyYPpzgka9LyHn3cg', '2021-01-25 16:12:49', '2021-01-25 16:21:31'),
(304, 'محمد', 'ناصر', '', 'الراجحي', 'mohmmad', 'nasser', '', 'alrajhy', '', '', 5, 'هندسة', '1961-12-09', 1, 'ALRAJHI@ALRAJHI.SA.C', '0501444441', '1028556809', NULL, '$2y$10$Z3feRX/WQYAclo4rJMlCfue0p3FRIBC/tAcKUIf9lEbYITvgBZhgu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gYcN1GTX3LBrD5veY3fI5jjMir1zvBMhEeMjjXu8Q7ysXddB9DKRvGbX2wS0', '2021-01-25 16:27:03', '2022-07-03 01:57:53'),
(305, 'حصه', 'ابراهيم', '', 'الشبرمي', 'Hessah', 'Ibraheem', '', 'Alshubrami', '', '', 5, 'تربوي', '1962-11-28', 1, 'Altmeemi@outlook.sa', '0595100444', '1018694149', NULL, '$2y$10$oAgB6R2Np0bPiPhTxkWTCOD5faAWmj95QfE41EIvNEKRTVvUlOOdK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'D1B92aOOFDQnck0fbViF8SGmF2Bf5tbFpj0b4fQ3yKr8FMBzKLljnsKhjuHx', '2021-01-26 00:37:59', '2022-05-12 13:00:53'),
(306, 'سعود', 'عنقان', '', 'المطيري', 'SOUD', 'ANGAB', '', 'ALMTIRI', '', '', 5, 'لايوجد', '1946-05-31', 1, 'saudatgan2@gmail.com.com', '0505429203', '1004204655', NULL, '$2y$10$DhB2trX2HqO0bjgUT7IXc.mUr9G6A5nQpO6uwJKiYdWCw5o7/ySGS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wauJqwBAdPQJ8x7cvxfHlSZrLmPIs5sCKLv9aiGCtYT5SkjBgT2jCkCJ8YDj', '2021-01-26 14:03:43', '2021-01-28 10:43:48'),
(307, 'هيا', 'ابراهيم ', '', 'الكثيري', 'Haya', 'Ibrahim', '', 'Alkathiri', '', '', 5, 'صفوف اوليه', '1961-12-09', 1, 'wejdan.alkathiri@gmail.com', '0553551576', '1010411716', NULL, '$2y$10$Er2Y65a9hBgVLgzkTUmHfewW80QUbCxzICzNokhOgAwnTkRj7ZjMW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8JN7QHjhE0YgwpP6a6NBylsMgUDlp9qg4QGvAr6eo3Y6Bpoy8v4Cv4j8Kidf', '2021-01-27 17:29:07', '2022-09-06 12:02:19'),
(308, 'نورة', 'عبدالله', '', 'الحميدان', 'NORA', 'ABDULLAH', '', 'ALHUMAIDAN', '', '', 5, 'تاريخ', '1959-12-31', 1, 'nourah5abdullah@gmail.com', '0555441793', '1014437535', NULL, '$2y$10$KuYxUHtp4KDFEZstEeSmnucoZ9IiKWR4xdd5LKAT/T1liDVzvyGby', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jfHuOskQ9tpSwDOxJgpvNkPk4i4xJ1JfJL2jQsVGqbQvqE5BQrgVSGXKJPqU', '2021-01-27 19:10:57', '2021-02-02 11:34:13'),
(309, 'سند', 'عبدالله ', '', 'الحصيني ', 'Sanad ', 'Abdullah ', '', 'ALHUSAINI ', '', '', 5, 'علوم امنيه', '1969-09-12', 1, 'Sanad.aaa@gmail.com', '0593383846', '1011739925', NULL, '$2y$10$lzl.oFv2g6dNwC4SR7AjneYbyZzK6O8nIxUuhFck8al4wjvJsDdvW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1RLmJcrVL7y8rV1zM6PdAPEVudYpR33XlHM3XazG0mazuleQAvgchEomJhUy', '2021-01-29 00:57:42', '2021-01-29 00:57:42'),
(310, 'عبدالكريم ', 'محمد', '', 'التركي', 'Abdulkarim ', 'Mohammed ', '', 'Alturki', '', '', 5, 'تربيه رياضيه', '1961-11-22', 1, 'no0oney11@gmail.com', '0556007711', '1028843891', NULL, '$2y$10$m5sQIubDbJjKOk/QYliqGeHTFQrmsteDYgwkBqJujitfhn8oOCd.6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AHBNRiNqDjZHbu6kEtzgFRnSlDO9l3rhwmCJvpltlZn2AXuPLWQd1gmXeJOi', '2021-01-30 22:43:10', '2021-02-01 10:12:11'),
(311, 'مناحي', 'عبداللة', '', 'الحمالي', 'mnahei', 'Abdalh ', '', 'Alhumali ', '', '', 5, 'علوم عسكرية', '1966-10-15', 1, 'mnahe1010@hotmail.com', '0561110110', '1012266472', NULL, '$2y$10$xqDjY1RPfVKHpOVpJk8.a.IWdcwm2GEy4vmg5B49pFQHqNb8/kyhS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6cfdMEp4HsQVmw3X4fqbstNXWpWDJy5NUHFksDzEnOIxMyWEUZxIkoyPDzvR', '2021-01-31 01:18:11', '2021-01-31 01:18:11'),
(312, 'لطيفة ', 'عبدالله ', '', 'الضويان', 'latiifa', 'abdallah', '', 'alduwayan', '', '', 5, 'عام', '1956-02-13', 1, 'Latiifah061@gmail.com', '0504259850', '1095202444', NULL, '$2y$10$TQh.4SjbGiAEDBwZNA7D8e8K5lUFDPedbm/SOpy/il3KKWjdw2qt2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PiL1wIgjd086Oo4DPDMvgOrjybKr2WAGsE6KvVtON1ctGqxhXxzFw6v0vige', '2021-02-01 13:05:43', '2021-11-28 20:56:23'),
(313, 'محممد', 'عبدالخالق', '', 'الشهري', 'mohammed', 'abd elkhalek', '', 'alshahri', '', '', 5, 'عسكري', '1950-04-18', 1, 'MM-MAj@hotmail.com', '0502321465', '1028739421', NULL, '$2y$10$dZ1VDDWpL9B6MlcGhUlhCu2JPHg8x.CA41bbjxzndDr4IRzz6g6OW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'j2VKNKiDACSBK9plLbdyWcVbZCnVlQT9g7qbRn1cZvCvY86X2eDkqt3qIBBO', '2021-02-01 13:23:57', '2022-06-30 12:43:49'),
(314, 'فايزة', 'احمد', '', 'ال حسن ', 'FAIZAH', 'AHAMED', '', 'AL HASSAN', '', '', 5, 'ادبي', '2001-09-18', 1, 'fayzah.ahmed@icloud.com', '0561555449', '1026705986', NULL, '$2y$10$0j6tfQIgKVuZibFNQH7CKeipc7xSX/FYPFY/35hCW6kz.m.rAHePO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MVw0paT1gL7VaD9W96rSLTEa6RMZ2ZS4hPl8Njk8gwJD8wBovabyHs7AvNsP', '2021-02-02 17:38:51', '2021-09-26 21:15:57'),
(315, 'عراطف', 'محمد ', '', 'الرميح', 'Awatif', 'Mohammed', '', 'Alromih', '', '', 5, 'اخصائيه صحيه', '1972-08-10', 1, 'awatifhala22@gmail.com', '0509676580', '1062557960', NULL, '$2y$10$bp2R0FHEVFCeceS8QNL6C.lRJgRuCrxsL/Hw4xUKcU7/af95HuPq.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dnYRGUkbVyPEr4fCbFDsblh7D8n7osrfEC9x5RsvkTG0xyF8LiylFxxSJVm0', '2021-02-03 13:59:15', '2021-02-03 13:59:15'),
(316, 'هايف', 'خلف', '', 'الرقاص', 'Haif', 'klif', '', 'Alraqqas ', '', '', 5, 'عام', '1959-01-11', 1, 'TurkiHaif@hotmail.com', '0569559511', '1023144312', NULL, '$2y$10$1Hp2dwoIGgWxttEOIz1toONxjhBgWF.g/YlIJegg06otyL5XqMPDS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KmNMWGtOeMTSdiPreFs8pjHg4V81tdatHuvDFArupSurG3DVY5dYX9nTjoQR', '2021-02-07 15:15:25', '2021-02-08 11:21:35'),
(317, 'محمد', 'عبدالله', '', 'الحديثي', 'mohammed', 'abdullah', '', 'alhodithey', '', '', 5, 'اتصالات', '1972-07-12', 1, 'mh5555mh@gmail.com', NULL, '1049027053', NULL, '$2y$10$U6vWq7S.RC/Pl/3rKoBkT.gSB.1rVdXoydDUj7xh5wi5cdYTNpG.C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '77qAiSKnv9XK1Ur729KIARIkCcXluAGmRuVLRkCnUqX1f1wCUGB0zs23Mhae', '2021-02-12 01:29:55', '2021-02-12 01:29:55'),
(318, 'لطيفه ', 'عبد العزيز ', '', 'بن دغيشم ', 'latifa', 'adbalzizi', '', 'doshaim', '', '', 5, 'لايرجد', '1962-12-02', 1, 'latof90901@gmail.com', '0550581527', '1039361066', NULL, '$2y$10$KRHwxPYFQnSNnMDBaYqlVO9N2SnVWMYMTVb4hry9OFbMjFFEiHiDC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-02-12 21:12:03', '2022-07-19 12:16:03'),
(319, 'بدرية', 'محمد', '', 'البريدي', 'Badria', 'Mohammad', '', 'Alburaidi', '', '', 5, 'علم اجتماع', '1968-09-24', 1, 'boodoor242@gmail.com', '0548672640', '1044681276', NULL, '$2y$10$ppBpz7tVDY47HQ8K3H25WOAtDo8ho3FyEg9jDBEYnQMLoztahqK/q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'YsvU1BvB9ZXmEPNCjvLFBwHLd3qUxKr6fGIaCogkKCcHa0wdESZxfbp2EZne', '2021-02-16 01:42:03', '2021-02-16 01:42:03'),
(320, 'حمود', 'حامد', '', 'العتيبي', 'HWMOOD', 'HAMED', '', 'ILOitiby', '', '', 5, 'ادبي ', '1974-07-20', 1, 'homod331@gmail.com', '0561963489', '1047219215', NULL, '$2y$10$/zRgVIZPElYSAnr0xTTPFubszuX8hAF0cShrigDBu5kQuYcf5owoS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-02-16 18:17:45', '2021-02-16 18:17:45'),
(321, 'موسى ', 'سليمان ', '', 'العتيبي ', 'mousa ', 'suliman', '', 'alotaibi ', '', '', 5, 'علوم انسانية ', '1962-11-28', 1, 'mwag.0120@gmail.com', '0534336906', '1009613033', NULL, '$2y$10$ApDmzg00Biyh9OPyCVjyn.QkVGoOAjQsnKeH5laqft1osPNDnOpMq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-02-17 00:52:23', '2021-02-17 00:52:23'),
(322, 'فيصل', 'سغيد', '', 'الغامدي', 'Faisal', 'Saeed', '', 'Algamdi', '', '', 5, 'توليد وتوزيع الطاقة الكهربائية ', '1970-02-06', 1, 'faisal.26265@gmail.com', '0544314151', '1011284856', NULL, '$2y$10$E8Kbb8ehMWU0DPjAfogNlOciYfZOa2d3sFwsowPGu8ckWnVvheyKy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-02-20 04:06:27', '2021-02-20 04:06:27'),
(323, 'ناصر ', 'محمد', '', 'الشهراني', 'nasser', 'muhammad', '', 'al shahrani', '', '', 5, 'علوم شرعية ', '1969-09-12', 1, 's7s755@hotmail.com', '0538558797', '1033786862', NULL, '$2y$10$OFSETc3JFZZMNLzelqlj6eYSWO2NacQzZfSDTBWaCCVc97TdchUS.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-02-23 12:28:09', '2021-03-06 18:44:20'),
(324, 'قرنفلة ', 'حمد', '', 'المطيري', 'qaranfilat', 'hamd', '', 'almutairi', '', '', 5, 'تاريخ', '1952-03-27', 1, 'a19m86q@gmail.com', '0543229995', '1029496906', NULL, '$2y$10$aOa.FQvILnNEkaxKU3/Auu7V9NA.pVcTnHtd6jgG7a/Wgk88cXHs.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, NULL, '2021-03-03 01:35:36', '2022-03-10 16:31:20'),
(348, 'ضيف الله ', 'عيسى', '', 'عياسي', 'dayf allah', 'eisaa', '', 'Ayasi', '', '', 5, 'لايوجد', '1975-07-10', 1, 'a1077634226@gmail.com', '0566701217', '1077634226', NULL, '$2y$10$XvNQt7tf3ZCAWX6rqzbotu1bLLT5woyTTmnzCgtLtVuXsMxDmiPQK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'W3JfcK5mwtnra8ysn4vjELKBhanGGhfOrHbBiDKi9Kicm8nuptbIlCndNiwG', '2021-03-06 19:11:03', '2022-07-03 01:51:26'),
(349, 'فوزية ', 'عبدالله', '', 'المزعل', 'Fawzia', 'Abdullah', '', 'Almizal', '', '', 5, 'لايوجد', '1962-11-28', 1, 'Fawzia.f.6070@hotmail.com', '0554460608', '1061866750', NULL, '$2y$10$60CMrmvmsZuCPpb9mQfHqe7HddA0rG2wZltKDE.Ty9rX8po7uda.e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mVQligKmHL54mV9uKKzVuaFcJQzxaL5xgHB1P5kFUcLdpxD0nUm0o7vADZYB', '2021-03-10 17:03:19', '2021-03-10 17:04:27'),
(350, 'هذال', 'سعيدان ', '', 'العصيمي', 'Hathal', 'Suaidan ', '', 'Al Osaimi', '', '', 5, 'لا يوجد', '1950-04-18', 1, 'Hathalalosaimi@gmail.com', '0502060888', '1017455930', NULL, '$2y$10$sDDL69cTHASyfwwk/HJdK.4CYHA.61EB66rZ1mRhQ9HwLRDozcBcy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'n440OeKnkcnLKdQK8Err03WOU2HchMqN170P3IeYosHEhr9IXiwZZCgd1dxk', '2021-03-11 21:27:35', '2021-03-16 11:22:02'),
(351, 'هيفاء ', 'صالح', '', 'النافع', 'Haifa', 'Saleh', '', 'Alnafea', '', '', 5, 'استشارية نساء وولاده واشعه صوتيه للام والجنين', '1962-11-28', 1, 'hnafea@hotmail.com', '0505464893', '1054509672', NULL, '$2y$10$D/IJY0zKy.TBZxN6kZEnKuMbhyUu2JmPY4a1jlOMUed8xWR4DbX.e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Rgs6QFWd9bb32Wi1S3InFuCP8EyjGZqnJgzXnDqh53pqcYjPzrJE6MtX3jkB', '2021-03-16 08:00:55', '2021-03-16 08:00:55'),
(352, 'علي ', 'مرعي', '', 'الربعي ', 'Ali', 'Mari', '', 'AlRabii', '', '', 5, 'لايوجد', '1950-04-18', 1, 'abukhalid1393@icloud.com', '0506431118', '1033951433', NULL, '$2y$10$GnLnhdyFrbAg47fkOm4ak.j5GQyLUb/yZtms16HxYQjQImqeaIQMS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Z1V15ZsIQsBBrk4md9G6oCGDa6sMaVAbFHObDZkpte3R04tmrFK3mETuYCjl', '2021-03-16 13:55:53', '2021-03-17 11:39:42'),
(353, 'محمد', 'ابراهيم', '', 'الراشد', 'Mohammed', 'Ibrahim', '', 'AlRashed', '', '', 5, 'لايوجد', '1954-03-06', 1, 'mo.allashed@outlook.com', '0599934040', '1011661434', NULL, '$2y$10$qfM/ZJTAYTfBrkLVzJiQ0.UTk/.C7BoOVnaVlZ4wUm7ffxvPoy.x.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'V87MSjUgXUhan2QiOCmX2VfozLopQUGlik9FYh84dj1sUSdLCtesQjlYjCbc', '2021-03-17 11:23:58', '2021-03-17 11:27:33'),
(354, 'ظافر', 'خلوفة', '', 'الشهري', 'Zafir', 'Khullwfa', '', 'Al shahri', '', '', 5, 'لايوجد', '1938-08-26', 1, 'akkhh9991@gmail.com', '0559243748', '1005794357', NULL, '$2y$10$9xn3KUN8tWDSNSwaDB3q1uH29LwH1Yj07GC4y4/Nh3S3pDl0hngG2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ghGLodg8hVQjcMoEoqKNTJXWFcix5hU0tFcDoYyAOk18bEd8KxBIoRUDPNhE', '2021-03-21 11:40:12', '2021-03-22 11:46:47'),
(356, 'عقلا', 'صالح ', '', 'الحريص', 'OKla', 'Saleh', '', 'AlHorayess', '', '', 5, 'فيزياء ', '1959-10-15', 1, 'ohorayes@gmail.com', NULL, '1048995722', NULL, '$2y$10$bbSlMtULWnqRNu5Fl4iz5.MYYpgDnbSa6YRDsjTKQwAHYwMzX6D4y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LvkNg4GywgI3e8I6b389bvaG1jOuDD7LdK2eeabTI8KmcSmNGSoCJZNr7JHT', '2021-04-01 01:12:12', '2022-06-05 17:06:17'),
(357, 'صالح', 'عثمان', '', 'الباز', 'Saleh', 'Othman', '', 'AlBaz', '', '', 5, 'ادارة عامة', '1959-01-11', 1, 'saleh515@hotmail.com', '0112632811', '1013533482', NULL, '$2y$10$Wz7kFO2/nHdRrhXgaNN.f.QyrAGeUB3ksRZv0V8jqjT1fb9u0vtHi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '285tcPi6io3ugxCNBMottVqRRLsWs5HRikYvEjgKEgYKlMVAIcFnaqV0xrAL', '2021-04-06 12:01:52', '2021-04-06 12:02:27'),
(358, 'خالد', 'حسن', '', 'السواحة ', 'KHALED ', 'HASSAN', '', 'ALSUWAHA', '', '', 5, 'حاسب آلي', '1959-11-22', 1, 'darkblue_boss@yahoo.com', '0500428471', '1000294486', NULL, '$2y$10$ADZqzB7zXgK80AMslIQipuNE7lhXsX.OATOP5hns/8pAB6D0JiCkG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7Ic0PkLdIO565JFGSVZNQZzPXCjiRwJNCokQaB6wt1scJMslRsUharo6Ef0p', '2021-04-07 02:06:29', '2022-01-15 00:48:54'),
(359, 'عبدالرحمن ', 'صالح', '', 'سلامة', 'AbduRahman', 'Saleh', '', 'Salama', '', '', 5, 'ادارية', '1955-02-23', 1, 'abdrhman200300@gmail.com', '0555444891', '1002068698', NULL, '$2y$10$ZyKBDFPGNTdW49qrkjNtheSoyEki37ziFA/GxTpv3me58oqu4LRWi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6eLIPzjLlLPyla1LGeJHJZUcRsMUoKI96b7Ob8f4v8S8yKCOq1q1vyDuMWZu', '2021-04-08 15:37:40', '2022-09-19 15:26:25'),
(360, 'عبدالله', 'محمد', '', 'الموسى', 'Abdulah', 'Mohmad', '', 'ALMOUSA', '', '', 5, 'دعوة واعلام وقانون ', '0000-01-01', 1, 'Mosa41477@gmail.com', '0558668683', '1039868458', NULL, '$2y$10$2zOOn4TSjfNUo6ax.jc1zOy317KwCYpI4FOnqWIV1NzdRdRKNQs2G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'waoGZKV1vO77O7amMT2xwJngqVtbJgQoDIyz312GqwGMtJfCeMUbSxurBVeE', '2021-04-08 22:24:55', '2021-04-08 22:24:55'),
(361, 'غيدان', 'هادي', '', 'ال راكه', 'Ghaydan', 'Hadi', '', 'Al-Rakah', '', '', 5, 'فني صيانة', '1943-07-03', 1, 'mohammad50612@yahoo.co.com', '0536004840', '1015579871', NULL, '$2y$10$HnOgF1ty1DCOifma3IV2.ewcfbymO8.Vuubv27.RRc7ql1s.ZFL3.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4BRhSkeVs2cxXxdftECaHgqmn8YmmGFACh4leRjVG7WLYydXUYrG4sTZKFVh', '2021-04-17 02:49:13', '2021-04-18 02:28:32'),
(362, 'ناصر', 'علي', '', 'المشيقح', 'Nasser', 'Ali', '', 'Almoshagh', '', '', 5, 'اداري', '2015-12-19', 1, 'Newsunfun@gmail.com', NULL, '1013777808', NULL, '$2y$10$vkApKC4mG6Z0xLlgq8mP2eaM6.GDevtPV3mM3Xlfr9LUubQSXckwG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6kB06vrjHULesBaHTqdWiCfrQ0Iuuj8jt4THgkUE8xNcSExvlTxFSBdAQ02T', '2021-04-17 14:02:02', '2021-04-17 14:02:02'),
(363, 'عبدالرحمن ', 'ابراهيم', '', 'ابوحيمد', 'Abdulrahman', 'Ibrahim', '', 'Abuhymid', '', '', 5, 'ادارة اعمال', '1947-04-16', 1, 'abuhaimid@gmail.com', NULL, '1023819707', NULL, '$2y$10$KtUH/tMY3Bw0j/xuirOEB.NvmuIu74pmsAjzSi53cnRaKu61uYK6a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ofbmeB4xlJVzrX9PQACUoqADRhVbRsNfsnn8UtZxXn18ybulkksL2QsZ6jil', '2021-04-19 16:03:05', '2021-04-20 03:35:40'),
(364, 'عوض', 'ناصر ', '', 'الاسمري', 'awadh', 'nasser', '', 'alasmari', '', '', 5, 'متقاعد', '1949-04-28', 1, 'Awadh.nasser20@gmail.com', '0557314700', '1006101453', NULL, '$2y$10$ZZROhJiD0LX7f4PXbBbrZ.FuiMJA9brXOdyJWxuTDMoLo5DypMWEm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9nncnD9iTGs4ain8sF5LoUVSTA03Z0h4jdUBsUAU4ZAIyAZdHnOXaeskhDbh', '2021-04-28 03:24:52', '2021-04-28 16:17:04'),
(365, 'بخيت', 'عوض', '', 'الزهراني', 'bakhit', 'eydt', '', 'alzahranii', '', '', 5, 'دبلوم معلمين', '1960-12-19', 1, 'bageetvip17@gmail.com', NULL, '1014878373', NULL, '$2y$10$r2mdP7trHsDztM0jCA/f4.OwErIYvz6VOsN17E/kiesOF0VPj6vlC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'E8KveNC4PvjmKiYk9s2omkWIWNSdlQEhhgVz0PojRNkWIndmXDWrfVtAmnBa', '2021-04-28 17:21:15', '2022-07-05 11:44:53'),
(366, 'خالد', 'عبدالرحمن', '', 'الشويحي', 'khalid ', 'abdulrahman', '', 'alshuwayhi', '', '', 5, 'فني', '1961-12-09', 1, 'foogge@icloud.com', '0502760043', '1030713141', NULL, '$2y$10$L8CV/Z0HzhVjEoK.ueXnFufJ1OHEvhEyrQ7XXAeu/LW6AVG5Dh8P.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5LPUVJdXQokIIpCPMwhDktaA2RhbEUt5IqCwDkXgSmJUDLYHi91PC4TrkN0t', '2021-05-01 04:40:02', '2021-05-01 04:40:02'),
(367, 'بدريه', 'عبدالكريم', '', 'المشيقح', 'Badriah', 'Abdulkarim', '', 'Almushaikeh ', '', '', 5, 'إدارة وإشراف', '1959-02-23', 1, 'b.almushaikeh@hotmail.com', NULL, '1030214579', NULL, '$2y$10$j72hp1/tz/Lwb949DGXf4ObVlGc6wgdNAur3NJcsAjE5caHvny7NO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 's8btR7srLhQ2b7Psbjd3mTAa6QR0uRLVigkTM6esnroIBQYBktZS9qzPfRLv', '2021-05-01 08:11:03', '2021-05-04 14:00:00'),
(368, 'ناصر', 'حمود', '', 'القحطاني', '', '', '', '', '', '', 5, 'مكنيكا', '1983-05-18', 1, 'nasra1414@hotmail.com', '0551992466', '1037839865', NULL, '$2y$10$CNSjRf3rQeaI5G62Lm9k0.ZwDbDlUQCyHvIbNh/lxemo4QCv4lz/y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kFI7mS8QWxIGLxMP2mu4SNyfyPmVVteoynQdCbAEhVNThbj0hMSaPIOGTslT', '2021-05-18 11:55:59', '2022-06-27 13:05:09'),
(369, 'عبدالله ', 'ثوابي ', '', 'الجرعي', 'Abdullah', 'Thawbi', '', 'AL-Jarai', '', '', 5, 'عام', '1944-06-21', 1, 'ALSyryb008@gmail.com', NULL, '1040182410', NULL, '$2y$10$HO3bGhaOznCSZtii.4DFAeXHayI53DBInLDKUARYOgQrzwqiY4zy.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'SYLC30TKQLdDNvDdehcjstQaRlemID5rfcIvldMFexH5KduSB7q2Pkv5H5eB', '2021-05-20 13:21:04', '2021-07-08 15:40:45'),
(371, 'بهيرة ', 'محمود', '', 'الحلبي', 'Bahira', 'Mahmoud', '', 'Alhalpi', '', '', 5, 'أدب انجليزي', '2021-05-01', 1, 'bahirahalabi@hotmail.com', '0532334653', '1022819021', NULL, '$2y$10$ogtP/L44.a/K/xWBlKOOUeIFL4rQNor3RArmcy.r8Y7frnAKfaxJK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yR4VAJt1X0TFQvrSfg76eZpesgvo7Vb9Cvk52jWHHv8x6cGQ4liKwMJXprAH', '2021-05-27 13:59:34', '2022-07-03 01:52:55'),
(372, 'منصور', 'احمد', '', 'المالكي', 'Mansoor', 'Ahmed', '', 'Almalki', '', '', 5, 'عسكري متقاعد', '1967-07-22', 1, 'manalmalky23@gmail.com', NULL, '1000688216', NULL, '$2y$10$fcIixh6eFSeOwtrlnkb00.4rEXFKnNQqMB41KRxXI9MI38ic4f7ge', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yXrVyqpxKDqiQviOIlM00rixjDAuFJP3AcTkKbBrxwaEALECTzLcSsfaB52D', '2021-06-01 09:26:59', '2021-06-01 09:26:59'),
(373, 'خالد', 'ثنيان', '', 'آل سعود', 'Khalid', 'Thanian', '', 'Al saud', '', '', 5, 'العلاقات الدولية', '1960-12-19', 1, 'hrhp_khalid@yahoo.com', NULL, '1000381820', NULL, '$2y$10$wAS9m6DrAXypLCklJifRfeVfSG2JB.UiMrmAaxfC1VWmAIw9ENnjO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Zkz1hoX2PtLBXGSGaj5uGwBxuJb9nzDPFA4mdNkIBnDCsrUGJnNzosOzfvkV', '2021-06-02 12:07:30', '2021-06-02 14:57:47'),
(374, 'محمد', 'شامان', '', 'الشامان', 'Mohmmed', 'Shaman', '', 'AlShaman', '', '', 5, 'تربية فنية ', '1962-11-28', 1, 'art4177@gmail.com', NULL, '1024295592', NULL, '$2y$10$uKZJI7J48PrLnk9WbO9xrewCpQLqNpS6CHKah7RAdDcPhL5VhmzMa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hLfgrbSourp4Rn2gdFFcpjTL0mLTo5uvuG9KbKvJEOiQp8zHICHBAqwUyBpw', '2021-06-02 17:12:05', '2021-06-29 12:44:28'),
(375, 'مهـا ', 'عبدالله ', '', 'القطــان ', 'Maha', 'Abdullah ', '', 'Alqattan ', '', '', 5, 'خدمة اجتماعية', '1959-12-31', 1, 'mhawy.qn@gmai.com', '0550040240', '1046269559', NULL, '$2y$10$soRNaPq7EuTXE01FSnVqTuxRb2UsNsMkz4awxJzp43y/U8LBXXC2O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FPs7IZeyYZBf5HQce3Q1tCsHdCVuEO0dcrX2WoVHklVmNd0oE6DiVHB6pmPh', '2021-06-05 17:16:09', '2022-07-17 11:27:40'),
(376, 'لولوه', 'منصور', '', 'الكنعاني', 'Lolo', 'Mansor', '', 'Alkanani', '', '', 5, 'دراسات اسلاميه', '1957-02-01', 1, 'loloalkanani57@gmail.com', NULL, '1001704285', NULL, '$2y$10$zG7hqF7Yi2Q33FR7BmB9Ze7dc5hxYQkPTm5UhR.cnC84SZrVV/QwK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eOvrS0hF0JyMS2RX6r7LoCOGOIhb2rkSIqc9QfPtXPVFDIGmp5gzdMsRMzmf', '2021-06-07 20:00:35', '2021-06-07 20:00:35'),
(377, 'محمد', 'عبدالعزيز ', '', 'الذياب ', 'Mohammed', 'Abdulaziz', '', 'Al-Dhiab', '', '', 5, 'تعليم', '1944-06-21', 1, 'abdulilah78jcc@gamil.com', '0555497404', '1000916690', NULL, '$2y$10$gghp2W8KrMvxovTeA4zqIOCJwDhqo0W/EJkiuDt7/G6F0KBHKhOKG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gsRLCFVq2YSmPNO5F1obqSVbc9zrScxLKi49yvDy1VtLbynA2hN4e9XXZs4x', '2021-06-08 14:28:43', '2021-06-08 14:29:06'),
(378, 'نوال', 'عنبر', '', 'الفيصل', 'Nawal', 'Anbar', '', 'AL-faisal', '', '', 5, 'خدمة اجتماعية', '1959-12-31', 1, 'Nawalalfaisal99@gmail.com', '0557656215', '1050965373', NULL, '$2y$10$vOBneSaTFQHfP3R6qwZ6kOcgiJFphWJVCaUwBKpnIA2pU0a6VEgTe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WIDYdgjZBAblHeHksNf3zeP7wGaBt6EtsauYbE1630vsEt9B6H6qrZ46QaVv', '2021-06-15 11:44:11', '2021-06-15 11:46:44'),
(379, 'منيره', 'سليمان', '', 'الغالب', ' muneerah', 'sulaiman', '', 'alghlb', '', '', 5, 'معلمة الصف ٣ ', '1968-09-23', 1, 'muneerah.almnsor@gmail.com', '0554177991', '1046915623', NULL, '$2y$10$pVxSGTJcb.fkqIloAJFwv.yJoh7QCmfA7f9l1SWQlvVDdN/OFkTV.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'A90GsnqRw5d5YD4BvwiDkNIl00KdcHMDPFS4KC2y67MkoTtX3acRdc6RsonH', '2021-06-19 00:09:56', '2022-06-30 12:29:06'),
(380, 'صالح', 'حمد', '', 'الصقري', 'Saleh', 'Hamad', '', 'AL-Saqri', '', '', 5, 'العلاقات الدولية', '1954-03-06', 1, 'Saleh.ALsagri@Msn.com', NULL, '1050018942', NULL, '$2y$10$NmYo9TawxIQmXMyQPihPxuZG3wWu8qpVgVgbLa608JNg8s1dnMm4u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IIdxllT9FAahQ6F3g1yPrVseU5S0AAcHaMexhhUX6dTNwerUG10RlCedBIb2', '2021-06-20 12:48:26', '2021-06-20 12:48:50'),
(381, 'نبيل', 'اديب', '', 'سلامه', 'Nabil', 'Adeeb', '', 'Salamah', '', '', 5, 'هندسه مدنيه', '1953-10-15', 1, 'n7salamah@gmail.com', '0505400520', '1001760684', NULL, '$2y$10$Gks2qaq6idtcM6UN9FZ/lOxJTTkeSXWAyYzySXhDKLYP8S2QUVxFa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'bE8pXuvvY4IXNJ7xoKQey4rEIZHklLfEHzB3DHW36KCJGACGet2Bgzfjp3kB', '2021-06-21 17:18:53', '2021-06-21 17:18:53'),
(382, 'علي ', 'عبدالرحمن', '', 'الحصيني', 'ALI', 'Abdulrahman', '', 'ALHOSAINY', '', '', 5, 'حاسب الي', '1964-11-06', 1, 'hosainy@me.com', NULL, '1008546556', NULL, '$2y$10$iJHfh6KFf4xIMP7Ya1wULeqsINq2GTgHmP/KbcmIfmWH.G5Vws4A6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2tBbmC8CIE9QOw46aVtLIMmItOe0AQ87DKaaKNTMcBO1vxYYyvPaKyslJqLz', '2021-06-24 00:26:51', '2021-08-01 23:09:27'),
(383, 'ماجدة ', 'محمد', '', 'بن سحيم ', 'Majed', 'ohammed', '', 'bin Suhaim', '', '', 5, 'جغرافيا', '1961-12-09', 1, 'Almedlel21@gmail.com', NULL, '1019708377', NULL, '$2y$10$hwHXtSKMJDcKIMcBCQfZmOAe2/nMtClDoKULOHC.rXQNoqUPDlsIK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dK78zTLzBp778sUdKapPDbhwgaVOXVsLqgcH2Hdc2PB1vN5m7YYjrRLZoKH7', '2021-06-24 14:28:08', '2021-06-24 14:29:38'),
(384, 'خالد', 'شوعي', '', 'آل ربيع', 'Khaled', 'shooiay', '', 'alrabye', '', '', 5, 'مضيف بحري', '1975-07-10', 1, 'alrabye070@gmail.com', NULL, '1041019462', NULL, '$2y$10$rLyRMk6NuUK0fi5pNJKkxufrfD3v2BRHdKk3izVtMNV7FxgU1a98a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nZx2kYJLSvO8occSfNLG3DdRkVm6ogkU973mWzCdBJmdyv1moCmKWc3To4kN', '2021-07-01 05:10:17', '2021-07-01 05:10:17'),
(385, 'حنان', 'عبدالعزيز', '', 'العقيل', 'Hanan', 'Abed alaziz', '', 'AlaQeel', '', '', 5, 'جغرافيا', '1962-11-28', 1, 'Hanan@hotmail.com', NULL, '1029052377', NULL, '$2y$10$XWkIu7ce4WknaKc1XrwRkecj.W.yuqXkWQJVevey45mhZUoHm1zz.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'MyubiZfqpAVZ58RH9AE196pB4GoHuEOnwG8UVP0GSaOLA9ImAyeDm8tANpOp', '2021-07-02 16:38:21', '2021-09-27 20:04:30'),
(386, 'هيفاء', 'فهد', '', 'بن ربيع', 'Haifa', 'Fahad', '', 'Benrubaea', '', '', 5, 'دبلوم اقتصاد منزلي وتربيه فنيه', '1969-09-12', 1, 'haifarubaea@gmail.com', '0590006286', '1005970833', NULL, '$2y$10$hTRMGjtHBS6uau1hV2Hrq.e0VY7PY2lnYjY4OUFwopMCU2rpr6zrS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NW6aN7oFeQq1LpSxgDKqgFxrrF1Y9kxwt6bd9wYjVyvSEHbCuOXzne8py9Jw', '2021-07-07 04:15:37', '2021-07-07 10:30:17'),
(387, 'رياض', 'مرزوق', '', 'آل شعبان', 'Riyadh', 'Marzuge', '', 'Alshaban', '', '', 5, 'اعمال ادارية', '1960-12-19', 1, 'riyadd@gmail.com', '0554416077', '1022073538', NULL, '$2y$10$VPuCkfyMPCYucK4lFysOcOxubH2NYQ/UDJKq9dR8X8XmwrSiMQDEC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'TaKT7vHwp2xboilyejGEdlSXbEmuoyarUN3LHNVbq0VKGwIp6SrboxwUlDrQ', '2021-07-08 15:33:55', '2021-07-08 15:33:55'),
(388, 'يوسف', 'عبدالله', '', 'الدخيل الله', 'Yousef', 'Abdullah', '', 'Aldakheallah', '', '', 5, 'فني زراعي', '1961-12-09', 1, 'aydakhil@gmail.com', '0541335223', '1001197258', NULL, '$2y$10$0K1dcfgHUJi0StmSCchO3efc2ChjSPvVG4hxxhvtND10nNWAVOIvy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Njw817kTkfJKxHrgnw3jhm9SbHClnJX0CRMa4QilRYrj68PQitMEfi0Bp7bO', '2021-07-10 15:22:10', '2021-07-12 06:40:50'),
(390, 'عبدالله', 'غزاي', '', 'العتيبي', '‏ABDULLAH', '‏GHAZAI', '', '‏ALOTAIBI', '', '', 5, 'الرياضة ', '1975-01-12', 1, 'al7b1976@gmail.com', '0539116033', '1012097703', NULL, '$2y$10$/Mat1.rLWA4SA8qrH8P3z.9.uRTNpMPt6IFnQoEic5LSMIoPBKTqC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'XqdAjT0LNupMsUFL1g9hbOnHrPL8S7vHl6dW5N0fdoVLOirV92IRgTTmNVtf', '2021-07-29 17:33:59', '2021-07-30 05:21:04'),
(391, 'أديبة', 'عبدالله', '', 'الشماس', 'Adeeba', 'Abdullah ', '', 'Alshemas', '', '', 5, 'علم اجتماع', '1952-07-01', 1, 'Adeeba.a.sh@gmail.com', NULL, '1017681642', NULL, '$2y$10$.3qQSus5T.k3aeizg8KtDuHlM0vRh8M.fne4gR0XqcoyMIGxPeaMy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'YNJUIaZuBOHm3QID45jjT3vVzIfDwaYS5k7jUlrlXBa0cAdL1agxcHbACLie', '2021-08-03 19:24:05', '2022-08-02 13:38:59'),
(392, 'عطية ', 'يحي', '', 'باشراحيل ', 'Atea ', 'Yheea ', '', 'Basrahaeeil', '', '', 5, 'موارد بشرية ', '1969-02-18', 1, '3soolh8@gmail.com', '0580914848', '1037982646', NULL, '$2y$10$Mcq110OceeWcIkYw2peM9eZKwD6krgLupkG6.ChFrm1H/O9oUoZXy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'a8PnqI9ANs6G3Rato2Yx0tse9bLzmbvYL8mT3bcmlNQsR2KagFY71sgzNsAL', '2021-08-04 16:17:45', '2021-11-30 18:43:00'),
(393, 'مقحم', 'عبدالله', '', 'المقحم', 'Muqhem', 'Abdullah', '', 'Al Muqhem', '', '', 5, 'علوم', '1955-01-08', 1, 'Muqhemma@gmail.com', '0505400494', '1000516128', NULL, '$2y$10$7ow1O9hYtig8/9Hz6FYj0eiM5eOSpVA0ym4In1f4fYmnJFHROguxG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zRDfJy55Oq3Ji6W9UrLCNRmsgcwHlbKH3uLSzSDHwS6vKGLcEecPhVFhyP2Q', '2021-08-06 01:36:29', '2021-08-06 01:36:29'),
(394, 'ناصر', 'عبدالله', '', 'الشميمري', 'nasser ', 'abdulla', '', 'alshmimry ', '', '', 5, 'تقنيه', '2011-12-06', 1, 'gandoraa55@hotmail.com', '0533636293', '1023629239', NULL, '$2y$10$ysVGQDCFl1QVbv9OlRjroeVASe34zFWRFilCJuJW79EZAEtzYFJp6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AHiIF6cwRwc70rm1UTMw4a3sZ2Z2L6U8ufjAHehUuCrrQ9vljH4LhlSmmK1f', '2021-08-10 16:14:58', '2021-08-11 07:14:51'),
(395, 'هدى', 'محمد', '', 'البليهد', 'Huda', 'Mohamed ', '', 'Alblaihed', '', '', 5, 'دراسات اسلامية ', '1972-02-05', 1, 'hmb122333@hotmail.com', '0543501492', '1022110868', NULL, '$2y$10$fegroIvkFfjv5CmI6HkB3etUraId05XNfcp6vh91yynahU5vC9Yam', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9UMq1tqu9887o3SjCm5I6HkZwuMeOAtkeG0KAMRqLgs2rsWMuxABiMG920Z5', '2021-08-11 00:00:34', '2021-09-21 01:28:30'),
(396, 'هلال', 'نايف', '', 'العتيبي', 'HELAL', 'Naif', '', 'OtiyBe', '', '', 5, 'علوم طبيعية', '1967-02-14', 1, 'stab321123@gmail.com', '0582750747', '1022883696', NULL, '$2y$10$WtxQnoWnbqrh/YNGehbYzeWyPYynF6Q.dV6iWMUTo1aevd1odsoPG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BctE2b8JkDEJzHwrLN3pjY7vSytNVXGXgqFg2yUwsDBnNVeR0XEC4KvlH4Od', '2021-08-11 20:44:21', '2021-08-11 20:44:21'),
(397, 'فاطمة', 'الحميدي', '', 'الماجد', 'Fatimah', 'Alhumaidi', '', 'Almajed', '', '', 5, 'عام', '1962-11-28', 1, 'Fq.g@hotmail.com', '0505377983', '1059293017', NULL, '$2y$10$2mT7XrsBh/GQ/YBdQt6VluTDiu0U1d4KcVRXwd7dnhhW/ZTx1jF92', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mhiBibLbbqkC2bR621qX3BxTM2ziVXMY6db7SYoepwFF5EnSsqN0tAcYRQAp', '2021-08-12 21:54:11', '2022-03-21 13:20:41'),
(398, 'مساعد', 'عبدالمحسن', '', 'المحيسن', 'Musaad', 'Abdulmohsen', '', 'Almuhaisen', '', '', 5, 'فني', '1960-12-19', 1, 'rr2211@hotmail.com', '0592964005', '1011313788', NULL, '$2y$10$B8VPv4LH8qWzSt/R7eF5O.6wMNIVfDCVOj.cMpRo3qXterhHmk0fC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DaZvlUunhnO4cAYludmtx1u9nNrGovd90lAJTXmhK4eeWrk1m3D0eSxkXUl9', '2021-08-13 00:34:46', '2022-03-27 12:37:12'),
(399, 'فريدة', 'عمر', '', 'فلمبان', 'Fareedh', 'Omar', '', 'Felemban', '', '', 5, 'معلمين ', '1943-07-03', 1, 'Fareedh15@yahoo.com', '0542200999', '1000115970', NULL, '$2y$10$.hVC7.Y0LGw8GMIlUJmsEOiymS5jKcK16noYfxGz52jde6kMn8ejm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2MQ1rYmNdL44kEzPVjj6FuivXRn6n6JaRqNt5n01LlaIIbLfDMLy5GjsTmDZ', '2021-08-16 22:50:04', '2022-09-05 17:04:56'),
(400, 'نوره', 'عبدالعزيز', '', 'المبرد', 'NOURA', 'ABDUIZIZ', '', 'ALMABRAD', '', '', 5, 'جغرافيا', '1962-11-28', 1, 'noraha420@gmail.com', NULL, '1002446076', NULL, '$2y$10$jPFr.FLlX4FXxfh0GSA2b.6uUox1C7X.a.4p/sPuRlTfO/fpODDJG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1dEixcpTcIJGdPfFl3KADVE2pGcZAsOeqwaudhv3hSBT7TBVBeM0UYoEOrM5', '2021-08-17 20:42:57', '2022-08-18 12:11:13'),
(401, 'نوال', 'سند', '', 'الحصيني', 'Nawal', 'Sand', '', 'ALHOSAINY ', '', '', 5, 'أصول دين', '0000-01-01', 1, 'Nawalalhos@gmail.com', '0504211336', '1008546564', NULL, '$2y$10$A2sTMhkCUKVQ0G9dA3SE7.gwFMwOYJ9v/9XF.MoBqGevXjUDBAqMy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nVR3JgN7wtWH2wlnC0mffleqIG8J6XFyr66D9pJen9ezVtypgWJOWLneKFuU', '2021-08-20 11:46:40', '2022-03-21 14:02:53'),
(402, 'ابراهيم', 'محمد', '', 'الشويمان', 'Ibrahem', 'Mohammed', '', 'Alshowiman', '', '', 5, 'هندسة زراعية', '1982-12-08', 1, 'Alabthen@hotmail.com', '0504118866', '1018705382', NULL, '$2y$10$c0EdVjPE9c.XpPK63pWjH.zNW6zvLPOsRmYWophOMbzgkkA8FhjHW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9aKwhv12PXqhH4uXqEoJdeSo5fPGS28myO3YPqeVXZz6WKTNh6SYF1Rnp42W', '2021-08-21 19:00:10', '2021-08-21 19:00:10'),
(403, 'صباح', 'عوضة ', '', 'الغامدي', 'Sabah', 'Oudah', '', 'Alghamdi ', '', '', 5, 'شريعة ', '1962-11-28', 1, 'Fajer5897@gmail.com', NULL, '1018108751', NULL, '$2y$10$nXxza7e0oMBmDG/4Jl/bc.NabN/Ewfexo50qEtTU9eKkrNPrV1puO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3bAKmJd6ssaS63Uqsejk6YBlmUFrjmEirCHnArdUcFe3jzmPRInEdzftG2aD', '2021-08-25 13:50:58', '2021-08-27 04:24:19'),
(405, 'محمد', 'صالح', '', 'الجارالله', 'muhammad', 'saleh', '', 'aljarallah', '', '', 5, 'علم نفس جنائي', 'Invalid date', 1, 'drmuhammadaljarallah@gmail.com', '0557417944', '1000852382', NULL, '$2y$10$0yhVj6GjqsE9ZG8fq2IQtuOSlvgGHsiyUcM4QqdX7GarRHYLIgflW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kkBCsUFc8ah7DA1zgmNe0ni9QU06ELYFQ7R7vU3zdILufnQZqJGFHqnMFxdv', '2021-08-26 06:26:09', '2021-08-26 06:26:09'),
(406, 'غازي ', 'مفلح ', '', 'جرمان ', 'ghazi', 'mefleh', '', 'jarman', '', '', 5, 'تاريخ', '1960-12-19', 1, 'jarman566@hotmail.com', '0000000000', '1005890114', NULL, '$2y$10$Y5FzgP.045hJJfWul1qkJe.78tu0Aa/599QRL7KqPaAJPYGWxak7a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'm7oCVcm6Pmq9HjRLL1BwNba7dRRmbarotlgmWfQBp4ilJbOjCh8YWJDKdZ7i', '2021-08-29 03:20:25', '2022-09-06 11:52:05'),
(407, 'فوزيه', 'عبدالرحمن', '', 'الشعلان ', 'Fawziah ', 'Abdulraman', '', 'Shalan', '', '', 5, 'تربية', '1963-09-27', 1, 'Fofoas1404@gamil.com', '0505273396', '1009999937', NULL, '$2y$10$l8mW9p//MqfM/FJ3EWxj6OLp0naCAJfPnT5kl7nL8Nt2T06PzwF3a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xUqrlF3SYbHsknsvN7RCnXQctErnElswP5zmfQ3BKVluRwW8U61eMGecvNCD', '2021-08-29 21:12:58', '2021-08-31 04:29:13'),
(408, 'بكر', 'يوسف', '', 'التويجري ', 'Bakr', 'Yousef', '', 'Altuwayjiri ', '', '', 5, 'ادارة أعمال', '1968-03-09', 1, 'bakr1234@gmail.com', '0551634564', '1005768757', NULL, '$2y$10$NDlO4cCwhiddIVt4hETkj.1uGFCdhm/bDrbQC4k./BWzWg3k77nqO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9nhA8NAPU6IVr8Kjg5dsIHFyaZlMoongBfOp1HxPUBustKgm1kbuLStyNNEX', '2021-08-30 17:34:10', '2021-08-31 04:28:07'),
(409, 'علي', 'زيد', '', 'بن دريهم', 'Ali', 'Zaid', '', 'Bindrihim', '', '', 5, 'تاريخ', '0000-01-01', 1, 'da0azali@gamil.com', '0504416229', '1008367813', NULL, '$2y$10$GFGXAHfuT7AzJVFEicqB8uX/.jifIOAEkfHHTO5r12P9SeyTtoMkq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HRRCvUdGMBM3BgrAWHYqsNeO7UybH4Gs6kveEcvBeS8HE0cCwLkVckWOdRHn', '2021-08-31 01:06:55', '2021-08-31 01:06:55'),
(411, 'هياء', 'بلال', '', 'العبدالله', 'Haya', 'Bilal', '', 'Alabdullah', '', '', 5, 'تربية فنية', '1957-02-01', 1, 'haya.fm7@gmail.com', '0502079368', '1063105736', NULL, '$2y$10$PT8H00vBRFdZdEP2tAMUruCQh6y4z3TXgFmCjFVGXH0xvht3a/4Sm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Rq8vSNFucNnuOkut1aI8Qud68mrlo28BaauhmXsAbfVzV94eM5cFeQaLFf9t', '2021-08-31 22:12:53', '2021-09-29 20:04:47'),
(412, 'شريفه', 'محمد', '', 'التويجري', 'Sharefah', 'Mohammed', '', 'Altuwaijri', '', '', 5, 'تسويق', '1962-11-28', 1, 'Sarabandar11@hotmail.com', '0555993400', '1008141002', NULL, '$2y$10$X9rid/tXtMAkqHrgvhQ1.Oyf51gQ.aO.ZZe67V3RZxpONHzd2Qhd.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AQPf3LCBwfhEkGluj9YixL2XBIYUSnawRcSL8uTgLhuegxp8UdjhXy8SPBzc', '2021-09-06 03:17:10', '2021-09-07 14:16:00'),
(413, 'عائشة', 'أختر', '', 'إسماعيل', 'Ayesha', 'Akhtar', '', 'Ismail', '', '', 5, 'علم الفنًون', '1953-01-23', 1, 'ayesha_ismail@fastmail.fm', '0500020728', '1055309304', NULL, '$2y$10$FiVzei/VT3dLMou8p7zCyu8kKeqIPw9BS.nKPJEn1JcSKRIIUoyCy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vUl9uwHRNs5MGOedj0BJ704VVJ7gxer0RYhPR3rjGliC3igr7QNTkAEags2d', '2021-09-06 09:33:46', '2021-09-06 09:33:46'),
(414, 'سامي', 'جباره', '', 'الاحمدي', 'Sami', 'Jubarah', '', 'Alahmadi', '', '', 5, 'ترحمه', '1959-01-11', 1, 'sami.j.a@hotmail.com', '0551398851', '1002158549', NULL, '$2y$10$6QSN7Te094ACt5RtkUWmEueOA0WZMNkPo.0hsOjzqV3BrAJgkBkY2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FcgUjukjn23CkOyHjQ4G9JAkMuGUPazDuJsm92ojwhB57F1WimhlFtWlgKwk', '2021-09-07 18:53:26', '2021-09-07 18:53:26'),
(415, 'ابراهيم', 'عبدالله', '', 'الخميس', 'IBRAHIM', 'ABDULLAH', '', 'ALKHOMEES', '', '', 5, 'علم نفس ، وعلوم عسكرية', '1959-12-31', 1, 'iakhamees2004@hotmail.com', NULL, '1019141017', NULL, '$2y$10$38w/U.K8SxXoriOx5kQ4y.sDQEPdhr9F190c0o9WZl3KcigpKf4vi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uZWI2F1xj3T3gBAMKNbosaYSeR1iGL6r4oFd7YSTsE0iEssSgQ9egI9zE20o', '2021-09-08 01:27:02', '2021-09-09 00:33:09'),
(416, 'عبدالله', 'ظافر', '', 'الشهراني', 'Abdullah', 'Dhafer', '', 'Alshahrani', '', '', 5, 'أمني وإداري', '1952-09-21', 1, 'Abdullah-151-@hotmail.com', NULL, '1049123852', NULL, '$2y$10$z.fTmKnc5gJtQxXnrc3PZeBnkYW5wtuY4M7XlM4N91nMZ6O3mqIbC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'JMcyeWR1w1kDhhG35HjOnUTg1hsDUS5JLEbTupgTN5bGl01VFQZKJPUeiSZV', '2021-09-08 16:56:27', '2021-09-09 17:10:25'),
(417, 'حمود', 'سعيد', '', 'المطيري', '', '', '', '', '', '', 5, 'علوم', '1961-12-09', 1, 'hamoud.sa.almutairi@gmail.com', '0543548009', '1026267623', NULL, '$2y$10$H6shoVhzQXEK75hSCCaiA.cs8yDsGxQHSBUm024XOmBK1hWcV9rKW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jpQVwjCPmKpieJUvtlauN5qTFCXlllDKxuGcxKv75LjzHpkcLGIuFU0Pl9RM', '2021-09-09 07:11:08', '2021-09-09 17:12:32'),
(418, 'خالد', 'فهد', '', 'المرحوم', 'Khalid', 'Fahad', '', 'AL-marhoum', '', '', 5, 'ادارة عامة ', '1961-12-09', 1, 'almrhoum.k@hotmail.com', NULL, '1046868244', NULL, '$2y$10$3F.v4t1FxP1YTRpwa6mWuOEJxZbUvnKeE./6RganhXCFc4t2kJpGm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zVHITcMIcmQbMk8X9fSu6DnXbfV9htydqIckW1CRKulpfjSbuVq4hb4K4eDZ', '2021-09-12 21:05:45', '2022-09-13 12:55:32'),
(419, 'عبدالكريم ', 'عبدالله ', '', 'السلوم', 'Abdulkarem ', 'Abdullah ', '', 'alsalum ', '', '', 5, 'مكتبات ومعلومات', '0000-01-01', 1, 'xxslomxx@gmail.com', '0503558558', '1025966662', NULL, '$2y$10$b3S.V4zphT.AoQ6KRKd77u5SYDeb7xlPwYX2fnLHW0Cq08YdHb3nm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'djj09IlH5iXJXQ1ympretFeg8Atmu1oyYCxECdZI0IribFUjK7sT7eaFzkBx', '2021-09-14 21:26:00', '2022-03-21 12:55:29'),
(420, 'منى', 'عبدالعزيز', '', 'الركيان', 'Mona', 'Abdullaziz', '', 'Alrokyan', '', '', 5, 'لغة عربية وعلوم اجتماعية', '1966-08-27', 1, 'rhik_m@hotmail.com', '0566072102', '1079582985', NULL, '$2y$10$VAYihuF4Nh/wugRAHpfaVuDXtTHdqe9jsmaQGKtGbM/sz9WjP2dly', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Js7Cor0ZjhOBDGqDQJLUvrJLynPVYikCl84FoWZBbW6R5hCgfLrQDD5cdS6f', '2021-09-14 22:02:58', '2021-09-15 22:00:07'),
(421, 'د/ عيد ', 'حامد ', '', 'الشمري ', 'dr.EID', 'hamed', '', 'alshammari', '', '', 5, 'محاسبة ', '1951-04-07', 1, 'alshammari-242@hotmail.com', '0532620000', '1046402978', NULL, '$2y$10$QsSwjLHPRHyz7MdyENPVo.I5ZnvmWHeTXGivgadMxxJrsy24GMYqC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5YM3oTsnxtRAJb5j6Eh36twnixV9cXCm002ZW7Q1fbfWRWYr7RXWBjveJoWG', '2021-09-15 12:29:22', '2021-09-15 12:50:57'),
(422, 'ضيف الله', 'سعد', '', 'اللحيدان', 'dhaifallah', 'saad', '', 'alluhaidan', '', '', 5, 'حاسب ألي ', '1960-12-19', 1, 'saaddl@hotmail.com', NULL, '1005605355', NULL, '$2y$10$mDOSnj95ea0e82smRlZ/SutzIn8.S6UOGhgsFqYOfuv/RCIgCG.ri', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'l6paD7cXGl6DGU97AhjlKH7L1Hr6kfTcWQ0NpeddbFflcqOrq0S4o7eEDh3E', '2021-09-15 14:56:22', '2022-09-21 13:59:48'),
(423, 'يوسف ', 'عبدالله', '', 'الحامد', 'Yousef', 'Abdullah ', '', 'Alhamed', '', '', 5, 'تاريخ', '1960-12-19', 1, 'Yalhamed0@gmail.com', '0505299007', '1001628179', NULL, '$2y$10$OWK1n7Jy9TTTF.LdKTraX.JuU6pGCL8Mm5xZBiy7rv4b.snE14yFq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wfRwau2gnmf9ckIltRBn9iQk4YyGNDZrIEkQZmWr0pcPTGStakGeG2ZbGEW1', '2021-09-15 21:07:11', '2022-09-21 14:23:57'),
(424, 'عبد الكريم ', 'محمد ', '', 'السعيد ', 'abdelkrim', 'mohamed', '', 'alsaeed', '', '', 5, 'زراعي ', '1951-04-08', 1, 'I-5000@hotmail.com', '0000000000', '1018820553', NULL, '$2y$10$Va4Za.pPd.YXqTPHLii/guNc6LFqnDoi7UPDKNwSFaTuqvwm8bn6W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7bXpfoK88xA1drEDKcqC6zNGQaAQt4q39M0kI5WaNzwZfNsI1tgjNI0MVwp6', '2021-09-16 13:39:16', '2021-09-16 13:40:23'),
(425, 'إبراهيم ', 'عبدالله ', '', 'الجاسر ', 'Ibrahim', 'Abdullah ', '', 'Aljasser ', '', '', 5, 'إحصاء ', '1962-11-28', 1, 'iaaljasser@hotmail.com', NULL, '1008601088', NULL, '$2y$10$kYV7wZm76qFimrZElfm9ueKVJV.zGLlnreXxDA/ByuoTHYXZUugL6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mkcKBkMphKezRDpOg2yHe91mQy2dk2HrbTdARiSyyaHDYyqHHNqkSGeJPByY', '2021-09-18 18:13:02', '2021-11-27 23:49:52'),
(426, 'ناصر  ', 'عبد الكريم ', '', 'المطوع ', 'naser', 'abdlkaim', '', 'lmutawa', '', '', 5, 'علمي ', '1959-12-31', 1, 'nasser.a.almutawa@mmail.com', '0555422618', '1038937569', NULL, '$2y$10$dc.calhtJETFP1O5ZSRkiOPSW2R9Stk2U2eGmgqeFBGT8oMRLJOSu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DfEjQsWGcvgATVPje81QORUMhOIjTNzBJ1pgnDKLJbeHACfE7GVLaPFl0fCR', '2021-09-21 01:53:33', '2021-09-21 01:57:52'),
(427, 'حصه ', 'إبراهيم ', '', 'الحمد ', 'hissah', 'ibrahim', '', 'alhamab', '', '', 5, 'أدبي ', '1958-01-21', 1, 'ialmuqrin@hotmail.com', '0506048736', '1026549269', NULL, '$2y$10$NC/m1et3d3dDDybGs01h6OxFlvTu2OYCXT4Z4nMvrtLrmTxu9lagq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 't0SvXVHqNBadFAQydj8kUKkfIsLpIE5P2KGIemsGIzhXhk0CJNuOSxc6ZxuO', '2021-09-22 17:21:16', '2021-09-22 17:23:27'),
(428, 'محاسن', 'فرحان', '', 'مبروك', 'mahasen', 'farhan', '', 'mabrouk', '', '', 5, 'علمي', '1955-02-05', 1, 'hani_1355@hotmail.com', '0536533149', '1018473163', NULL, '$2y$10$igwgKVhgk5UV4Q/LjrHei.7pbYX5WTsEuWNpGpu48swgF3kM6seJ6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'bbZM8zwL6H0XapDiKyywoNJ0Q80BbBuaDHls5Ce7Tf3pXDV4UdYXuPQrSPta', '2021-09-22 22:07:38', '2021-09-22 22:07:38'),
(429, 'عسيلي', 'عوضة ', '', 'الغامدي ', 'Osily ', 'Aoda ', '', 'Alghamdi', '', '', 5, 'عام ', '1965-10-25', 1, 'Loloo2312155@gmail.com', '0503406409', '1003427943', NULL, '$2y$10$9EvZSWWJ6WXt0CtD8msKCO33EZNRtq2DoXpOBnLEtHAIyNQLjl/LS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IlK0AmlXuT4T97EkatvydI7TaIBOQCMfsE1JAWZ7TEAEOks5CYJlJ7YECbzO', '2021-09-25 02:25:33', '2021-09-25 02:25:33'),
(430, 'فايز', 'خليفة ', '', 'الجعيب', 'FAYEZ', 'KHALIFAH', '', 'ALJOAIB ', '', '', 5, 'إدارة الأعمال', '1965-05-13', 1, 'fayez97mba@yahoo.com', '0545566900', '1005227580', NULL, '$2y$10$1nr5jHlr6BcRx.pFMej6FuyfuUq3Wd61k21MwXEdFU1JVQbSbLOde', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '8vyEMyaPksVHaSyXXutSjdzLcQsfW0lxygqfuthbo2B7VzgI6ASo6iL41bR3', '2021-09-25 15:32:49', '2021-09-25 15:32:49');
INSERT INTO `beneficiaries` (`id`, `first_name_ar`, `second_name_ar`, `third_name_ar`, `fourth_name_ar`, `first_name_en`, `second_name_en`, `third_name_en`, `fourth_name_en`, `employer`, `retirement_year`, `qualification_id`, `specialization`, `date_of_birth`, `membership_type_id`, `email`, `phone_number`, `record`, `email_verified_at`, `password`, `role_name`, `Status`, `paid`, `start_date`, `end_date`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(431, 'هيا', 'ثابت ', '', 'العريني ', 'haya', 'thebet', '', 'aloraini', '', '', 5, 'دراسات اسلامية', '1963-11-17', 1, 'heemmo@outlook.com', '0505202050', '1056381203', NULL, '$2y$10$AqFKQl6HOh7qSikP56TJu..9DMnbbLE8SvOQE671goDOyxMvDt6e6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FI2EwCJ8RFXBa1M9Qyz1PU73DEEq9KTnuyFN9Z4ImiM69Vt4RGAWsQNGUryj', '2021-09-26 13:45:45', '2021-09-26 13:46:41'),
(432, 'فوزية ', 'سعد ', '', 'الغامدي ', 'fawziah', 'saad', '', 'lghamdi', '', '', 5, 'تربوي ', '1961-12-09', 1, 'fwz9200@gmail.com', '0555463887', '1001351111', NULL, '$2y$10$E386rWmk7pxaqv85Rb6u0OhwkBRUX8syqklwMTKsrYW.AgVYRlAuy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BggARubkDTO2MblqrU8ymXmGVgdPWgyzyi9m4HmT14sc1LAaIoZJBr5bd2U4', '2021-09-26 14:22:49', '2021-09-29 20:00:16'),
(433, 'عبد العزيز ', 'محمد ', '', 'البخيت', 'abdulaziz', 'mahmmod', '', 'albukait', '', '', 5, 'أدبي ', '1958-01-21', 1, 'a905ziz@hotmail.com', '0000000000', '1015055237', NULL, '$2y$10$jWSRRRzWncI47Ks3Oo7KM.nZLcjhaB1LuPPuGrX/agBHbtfJQZZTW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ptOJraZrZGq3F4mzSC2fPGy3q5ESW7NMQ8hxtum8Uv4T2Spxp1OSKwANZ4he', '2021-09-26 14:52:28', '2022-09-06 15:13:50'),
(434, 'هدى ', 'محمد', '', 'البراهيم ', 'huda', 'mahmmod', '', 'Alibrahim', '', '', 5, 'تربية واقتصاد ', '1956-02-13', 1, 'hudhud401@hotmail.com', '0551688000', '1025390509', NULL, '$2y$10$wLH2NmoRWtys/iIFVKPb9.xFgw31Pf2zydYcXUzaiPgDMO5.acjhK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7kGHo38XQobd2yWZO9OxJkuqyi5yebPbL9pWGWxr6LLCEikT89hy5aJ96BMP', '2021-09-26 21:36:33', '2021-09-26 21:37:47'),
(435, 'نهأ ', 'محمد ', '', 'العبد العزيز ', 'noha', 'mohamed', '', 'alfayroz', '', '', 5, 'علمي ', '1962-11-28', 1, 'rocher.dad7@gmeil.com', '0500544144', '1004172639', NULL, '$2y$10$wWv09BcYwgIU94FNiuBo1OlnmcoILlGvXi0mUcMKPtZzze4B6eJ.y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'tEfGB58VMDiOksnNb9GskNmJSFbRkogBy6IQ49Mz21r5x1c6hiL4554RfqPg', '2021-09-27 20:01:22', '2021-09-27 20:02:03'),
(436, 'نورة ', 'علي ', '', 'الزهراني ', 'nourah', 'ali', '', 'zahrani', '', '', 5, 'لغة الانجليزية ', '1965-09-21', 1, 'nonnah2009@hotmail.com', '0504718466', '1035655016', NULL, '$2y$10$i.oIxaiQIk1KEMozSYrn8Ovaeivk54b5lJO69q4IeCp345jr8FhcK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gZRBg1LXpmlwavX7GSCJyOkeCwT3LhCrLOzGzHmqJ8JObzU7oK3yN2ZrBVYH', '2021-09-27 20:14:27', '2021-09-27 20:38:49'),
(437, 'راشد', 'حمد ', '', 'الثاري ', 'rasheed', 'hmad', '', 'althari', '', '', 5, 'الدعوة والثقافة الاسلامي ', '1967-10-04', 1, 'rashed1430@htmail.com', '0505209519', '1017329598', NULL, '$2y$10$cfRPwKLJbN2QeENH4q6cUeeI6jfB8B9a25tf1RI7gBjVB4YTqqor2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ewHU3EkjSazfVgtBf7VCUyLHjTCTRAu5aEegMzvrKgZcYhYzVB6pSeXDtTtP', '2021-09-27 20:26:55', '2021-09-27 20:38:32'),
(438, 'عبد العزيز ', 'محمد ', '', 'ال فهيد ', 'abdulaziz', 'mohamed', '', 'al faheid', '', '', 5, 'أصول دين ', '1959-12-31', 1, 'of2010@gmail.com', '0000000000', '1014319014', NULL, '$2y$10$TPwgV71pAqtO1Yy8q7wa3emKJyPFjm25xXO0pinRvZ/wrMZMfEB5K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'B0MzKZEHilNScJtklUc3o4tGTSXWUq6ByKCP5E4pxMYkG7KmnJg1x4CgcW6M', '2021-09-27 20:34:56', '2022-09-06 15:41:06'),
(439, 'بدرية ', 'أحمد ', '', 'ال حسن ', 'badriah', 'ahmad', '', 'al hassan', '', '', 5, 'تمريض ', '1959-01-11', 1, 'balhassan15@hotmail.com', '0544564419', '1006017782', NULL, '$2y$10$vTrFxGmwA5jvenIsO4qAgOUigfY7eXKSpcoNtErbQR2rf2puislDy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IcMMQoOrifcGhTEUjA9D4iSd6twsVlJXEgGfFply9ZYBTYnkqxxFTqgdeNMC', '2021-09-28 16:09:40', '2021-09-28 16:11:18'),
(440, 'عبد الرحمن ', 'خلوفه', '', 'الشهري ', 'abdulrahman', 'kalofh', '', 'al shehri', '', '', 5, 'عسكري ', '1946-05-31', 1, 'ala2k354@gmail.com', '0553298741', '1034738524', NULL, '$2y$10$JAVmNRhcsBUC5yyIbAV.qerVMiGsqQL6fWSNhBRgt0TcRGFMqwEqu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'aJl76yiqTYM6VtxuqNkfffGsxCYY8yN19k1DnFuxnxiHxHZldnkmTfbs90l0', '2021-09-28 16:31:59', '2021-09-28 16:33:41'),
(441, 'نورة', 'عبدالله', '', 'العريني', 'Nourah ', 'Abdullah ', '', 'Aloraini ', '', '', 5, 'تثقيف صحي', '2021-02-13', 1, 'Nahool40@gmail.com', NULL, '1014452609', NULL, '$2y$10$oDRV.7UUMgWY5R3cEEDQveLAOoY2IWckvpgMwfDJI4EzpTlRvxY9.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gozT6X0XRibiqZTWVrwgKoKK42oqT4w1CP3HY6bnGelnCAwqYeheNUy7y72l', '2021-09-29 15:38:08', '2022-03-21 14:41:41'),
(442, 'عايض', 'محمد', '', 'الاحمري', 'ayed', 'mohammed', '', 'alahmary', '', '', 5, 'فني', '1953-03-12', 1, 'shookri.97@gmail.com', '0565877755', '1005738503', NULL, '$2y$10$hQ9xuhMEc1CQQS9iTsF3IeHTAn2DTo/lkowmMrVdqCzZy0/pP7u1m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FBdM70Roit5qHZRg9h7F8iJrl0u1qUtgfkCzYZSKJFnWvG1m6db75fdC80dL', '2021-09-29 20:37:23', '2021-09-29 20:37:23'),
(443, 'مها ', 'محمد ', '', 'العواد ', 'mahaa', 'mohamed', '', 'alawwad', '', '', 5, 'علم الاجتماع ', '1386-04-26', 1, 'ngda4988@gmil.com', '0000000000', '1001392289', NULL, '$2y$10$p5IdiruPa9z8Y0PFF/p8vepp27VmODPRlQMCNFeOpfeWsHwwd49MO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '51qBjZfGXkEgmvoLcuZwMdEwbD7NSkP9j3upMelLfj04uiVYOwIhDvRqlDJz', '2021-10-05 16:32:44', '2021-10-06 15:32:17'),
(444, 'منيرة ', 'عبد الله ', '', 'البسام ', 'monerh', 'abdullah', '', 'albassam', '', '', 5, 'علمي ', '1952-03-27', 1, 'munirah.albassam@gmil.com', '0000000000', '1029566609', NULL, '$2y$10$KBZ2FYs1RnAGRc9b8dkhFOcZHQ3aKl0YUhAIvtbT.VJzdwWrtw202', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sq19xKvUzlK5zvkGys4dLneYQnE0ic9nifDfbqb0fQuHZrtLBT9vsuvbLFeL', '2021-10-05 16:43:52', '2021-10-06 15:36:33'),
(445, 'محمد', 'حامد', '', 'الغامدي', 'moahmmed', 'hamed', '', 'al ghamdi', '', '', 5, 'علاقات عامة ', '1958-01-21', 1, 'mhadi1950@htmail.com', '0000000000', '1029270236', NULL, '$2y$10$4CNSfYg5sH.FsbHoEjD3zO6oW1rKMTdW7VvMLXsH.OBaAlJrW0W2m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'md2cqpRbmlKAGWkKcycYGqSDgMFCFjj0FuOpDJKTgMbmdQ3hAxI84iIwLLUD', '2021-10-05 16:54:27', '2022-01-27 10:16:30'),
(446, 'عبد العزيز ', 'صالح ', '', 'العمري ', 'abdulaziz', 'saleh', '', 'alamri', '', '', 5, 'علمي ', '1959-12-31', 1, 'a1379-1379@hotmail.com', '0591515105', '1025930205', NULL, '$2y$10$RTZPch7KTfEDwuVI/PZOTuV7p6XsAIbowHHbZqhLtb3c7VCjrRrfi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Ob19XJh4fY4DadNjNEv4TfA5LdcZqcqTI3D63qED036yLhQpn4io1aAVWWBc', '2021-10-05 18:03:43', '2021-10-06 14:55:54'),
(447, 'لولوة', 'عبدالعزيز ', '', 'الدويش', 'Lulu', 'Abdulaziz ', '', 'Aldawish ', '', '', 5, 'خدمة اجتماعية ', '1962-11-28', 1, 'lolo.a.d@hotmail.com', '0560267666', '1031948381', NULL, '$2y$10$Gl/MLQcnLtgZi4ibxR56leEvS2EHc/yMEitObOOvObveGVwFA1yjG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'jgNcuTbBMDttWLXtKp6gRhKF43lfxmvgYBsLQu9A95ga4Lt8ax6LBgkYMp2t', '2021-10-06 00:18:04', '2021-10-06 14:41:40'),
(448, 'هدى', 'سعد', '', 'بن منيع', 'Huda', 'Saad', '', 'Maniae', '', '', 5, 'لغة عربية', '1976-06-02', 1, 'Saad111222333@gmail.com', '0550099636', '1023012360', NULL, '$2y$10$2k8WIemspM4azBwhXRp5Ue6Gn3Va2FmMNjtGk76PZznQrWoRQWGGm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qrkbVUxnXHXVTXafevIAJHMCShv1zYPxxv4Obao0HljLKuobmNIwkgOMSnef', '2021-10-06 18:23:35', '2021-10-06 18:23:35'),
(449, 'نوره', 'شينان', '', 'الدوسري', 'Noura ', 'Shinan ', '', 'Aldossary ', '', '', 5, 'لغه عربيه وعلوم اجتماعيه', '1964-11-05', 1, 'Noura71711@gmail.com', '0507171037', '1049511833', NULL, '$2y$10$j8eRD7rMv.Jx4qNNznran.fJ2v0Sxd4nSjtNL5XVWeY6MGNwyqEgm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WHPSihJJ1x4OGJqai4NCF1P3Qoa0KxjG2uI98B7bZiJmAKWsz8owLsYS0QM4', '2021-10-08 03:37:38', '2021-11-11 17:37:28'),
(450, 'هند', 'مهدي', '', 'ابو سليمان', 'Hend', 'Mahdi', '', 'Abusulaiman ', '', '', 5, 'اقتصاد منزلي', '1969-07-20', 1, 'hanomas6@hotmail.com', '0504208596', '1038604284', NULL, '$2y$10$lZuwHFeyQ2CoYn2258fzzewOz96P4H5E/udRHOrv7rE6gaNi6gpA.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4czWrW3tlAMO8ol71UgvRmeLd9DBXKYUh7Jtmoedis8Ii4X7D3JKtfwqIUZD', '2021-10-08 09:12:36', '2021-10-08 09:12:36'),
(451, 'منيرة ', 'إبراهيم ', '', 'السران', 'monerh', 'ibraheem', '', 'alsarrani', '', '', 5, 'تمريض', '1962-12-28', 1, 'munirh0900@gmail.com', '0000000000', '1025507779', NULL, '$2y$10$QzsmXgXQeE.poUdbiCZd3ec5yTne0YoS6wVmesMJeVp.zolA9SKrC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vBfvIX3GwMKMMAOKvcOBzkPabS3iVyhqGsyycgHNoQVgXKD5OvRRwLYijpdM', '2021-10-10 09:21:29', '2021-10-10 09:22:31'),
(452, 'محمد', 'عبدالرحمن', '', 'النتيفي', 'Mohammed ', 'Abdulrahman ', '', 'Al-Nutaifi', '', '', 5, 'تسويق دولي', '1968-04-05', 1, 'manz94@hotmail.com', '0557798171', '1009962389', NULL, '$2y$10$uPQCmzFNV0wxdU1lkhmoPuanDK/se2/ID0pO4YhE3heLSsAePkB5m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '04MvUtaTRfMyqrLXdCbG0utiHYnAIbooWMu4SmES2ZJyqvDWUKzUYgi6QIh2', '2021-10-10 13:15:57', '2021-10-10 22:54:44'),
(453, 'سليمان', 'أبراهيم', '', 'الصقير', 'suliman', 'Ibrahim', '', 'alsoqaier', '', '', 5, 'أنجليزي', '1960-12-19', 1, 'ssoqaier@gmail.com', NULL, '1039035249', NULL, '$2y$10$a41ZcqEyfVL69mBJV2eIt.aQCGSeq4g5o4J./kHB2FkSwOo9yHDya', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3lprG1eRa8TVmNPUUi6AQFktOzD6tuzMPxkbcms57Ct1WUud1OxSvRZPZC58', '2021-10-10 13:30:23', '2021-10-10 13:30:23'),
(454, 'عباس', 'زكريا', '', 'ادريس', 'Abbas', 'Zakaria', '', 'Edriss', '', '', 5, 'سائق', '1956-01-14', 1, 'Abbas.edriss2015@gmail.com', '0500197610', '1035415817', NULL, '$2y$10$V4gerDl4I.Ttk3Dht46B0eKN8SojsDmi9qpVdOE2qlDOq3DpGpCxe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'XkBzaYyr2dS7WCzQzx4k1OMUyL985aqW22wfSZSeqd5bRYb5IyStqK3q37Ni', '2021-10-10 15:55:55', '2021-10-11 20:04:07'),
(455, 'وفاء', 'صالح', '', 'السالم', 'Wafa', 'Saleh', '', 'Alsalem', '', '', 5, 'لايوجد', '1970-09-02', 1, 'shehanaalyahya351@gmail.com', '0550356644', '1041241298', NULL, '$2y$10$e6rxVgFrVNpDusE3xPDmG.TSE/DikTldaM9495/8.UuLLxbhUlAKi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'u1S9oOlmHyH0KseO1YLfX5SinXOFCCeqSmfRVEfVMnTeMKPIcbCKFdNCqsmb', '2021-10-10 22:12:38', '2021-10-10 22:49:37'),
(456, 'ناصر', 'عيد', '', 'السبيعي', 'NASSER', 'EID', '', 'ALSUBAIE', '', '', 5, 'القوات البحريه //ضابط تنفيذي', '1961-12-09', 1, 'HADBA511@HOTMAIL.COM', '0505106020', '1020486955', NULL, '$2y$10$8fimI6laQNoJJOd.Qn8TN.gmTXBOMuZecgJT79f1obenywCXz1tnG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sLQjlTxjlnUUirDVW5DP6wcfED7zhKAFR0ystWTYVhhUfjQxcCuoxKpKL7M6', '2021-10-12 14:01:45', '2022-06-28 09:59:06'),
(457, 'عبدالله حسن محمد الميمان', 'حسن', '', 'الميمان', 'Abdaallh', 'Hassan', '', 'Almiman', '', '', 5, 'اعلام.صحافة.', '0000-01-01', 1, 'Almiman9@hotmail.com', '0502411696', '1040883124', NULL, '$2y$10$AU5vDaNt2tBDTOkcq5x7kOQ.0tXPY0L1NR4waUwOhoS3TvV4z89A6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IkiYVzgvOZqX0J1hDOPcn1ICjarwwhFDVIGflVolhg2YKY7Rnn6uvVMnepgf', '2021-10-12 18:17:02', '2021-10-12 18:17:02'),
(458, 'أمال', 'يوسف', '', 'أبونيان', 'Amal', 'yousef', '', 'Abounayian', '', '', 5, 'علمي', '1958-01-21', 1, 'Amaal.y@hotmail.com', '0555486955', '1007240409', NULL, '$2y$10$JEmbukXZvLdT1GIFCQ5SWePTJ.Z3orBSjXCxyeHt5TXICTypn64Ia', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Fc3irB8M5p5y343gFXIbd9tuICS0ql1hhUcyHTW7U42RLaXbvxZSVPASDhjS', '2021-10-12 21:17:25', '2022-03-27 14:13:18'),
(459, 'حنان', 'عيد', '', 'الحربي', 'Hanan', 'Eid', '', 'Alharbi', '', '', 5, 'اقتصاد ', '1963-11-17', 1, 'Hananhar4@gmail.com', '0566917271', '1001956430', NULL, '$2y$10$55.9INWE85R/ZjewP5ZYS.II8FbiT7BUWPVcZhTQT2OwUz5HPHyqa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'tn1DYgU3XkC9XDc2gu47X0Ty9vUho2zBEBxM3dh3zMHY8FrgbQtbn4JEiggE', '2021-10-12 22:00:23', '2021-10-12 22:00:23'),
(460, 'عبدالعزيز ', 'محمد ', '', 'الوهيبي ', 'Abdul aziz ', 'Mohammed ', '', 'Alwohaiby ', '', '', 5, 'فيزياء', '1958-03-01', 1, 'thewohaiby@gmail.com', '0555257883', '1030303547', NULL, '$2y$10$iJV1hLICl6joGmsbwCeNAeg0LwEhruGuyHK0Bpag1DRCBXHTRXq1O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'n2BrplujorfqoTxue5UtYNmRN1OOevcf2merHFT1H2arrpuODeSIONXeOnwi', '2021-10-12 23:32:01', '2022-06-27 12:17:25'),
(461, 'منصورة ', 'محمد ', '', 'العضيب ', 'Mansoura', 'Muhammad', '', 'Alodaib', '', '', 5, 'لغة انجليزية ', '1966-10-15', 1, 'alo_mkm1@hotmail.com', '0502271942', '1046852842', NULL, '$2y$10$E2QB.89iGaxACcPJiVV3suu9X1nOYjiuo6MnKgdTTKk10pF3U60xS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NdOw4HqwpPXUKxOZosTcw5083KomLME7HIoOPvMdm8sByu8pfjz96lucjoZ9', '2021-10-13 16:06:58', '2021-10-13 17:16:47'),
(462, 'عبدالعزيز', 'محمد', '', 'الحماد', 'Abdlaziz', 'Mohmmed', '', 'Alhammad', '', '', 5, 'كاتب', '1969-09-12', 1, 'P0554101001@gmail.com', NULL, '1017650555', NULL, '$2y$10$stlNNS3XAMqCAxNFC.lGYul/gaLIrtTAR1Fwh7dv6e0q7awZEeE9a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9YgZCPGGYfJ17sy9KKEMxYeEm7evR42uKio5LqbCUhAXed7Tyl47i9mJQglX', '2021-10-14 00:01:20', '2021-10-14 00:01:20'),
(463, 'ناصر', 'محمد', '', 'القحطاني ', 'nasser', 'Muhammad', '', 'Al-Qahtani', '', '', 5, 'مدير قسم ', '1968-09-23', 1, 'nw2009nw@hotmail.com', NULL, '1020157010', NULL, '$2y$10$VWPfZ3y/8SRmcAgyDWCPZ.dIqSPaj.fzj1UI2uP/Cc8mfBMxJLSlW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mylmEJzTMcn5nSzqyVkliIq0V63XbSu9J7M6sS5eUWu1ckhz9RttCdl9D5ib', '2021-10-14 23:29:19', '2022-06-27 13:00:14'),
(464, 'سعيد ', 'حمد', '', 'التميمي', 'Saeed', 'Hamad', '', 'Altamimi', '', '', 5, 'أدبي ', '1962-01-01', 1, 'Maltmime7@gmail.com', '0500943680', '1024913897', NULL, '$2y$10$01HtKmx7e38Rr8UXa0cki.5lwNpYLTdufsW2fTadwh.PBrjYAP7ra', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Xnz1QJKMXd8zGxjNk4NiPhDsmSlXg5f5HInBaiJqIePQ9Ab2vKo7ALfWOqdk', '2021-10-17 23:39:03', '2022-06-27 12:13:34'),
(465, 'زهوة', 'عبدالعزيز', '', 'الرشيد', 'Zahwa', 'Abdulaziz', '', 'Alrasheed', '', '', 5, 'تاريخ', '1959-12-31', 1, 'zahwa.alrasheed@gmail.com', NULL, '1051851226', NULL, '$2y$10$dSq/gN2t88GJB5Sn0c2IzO6.NtLXUJI/OzVzO5pkMFo/h2hFwO4u2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WHRogimQALHkWQrVul7ys5pJZY3GrR1kTSWd23wQcscL7AJUwfM9RIqvmVEO', '2021-10-19 20:55:50', '2022-01-09 22:17:55'),
(466, 'نادية', 'ابراهيم', '', 'الفريح', 'Nadia', 'Ibrahim ', '', 'Alfrih', '', '', 5, 'علوم ورياضيات', '1968-11-19', 1, 'tnt1388@hotmail.com', '0509942268', '1018818409', NULL, '$2y$10$apO0u/UyFYD/F/ZFd8MeU.xfGYs3wMeNsFDNoYY6U.Wim3J4mA4Mi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'viAx8PJ2sYr0OQ9UbD0XzQP8xsOAzq7xtr97OQLMwXg3fvVi23m8awU21a1p', '2021-10-20 04:37:30', '2021-10-31 20:04:18'),
(467, 'عبدالله ', 'ابراهيم ', '', 'الهويشل ', 'ABDULLAH', 'IBRAHIM', '', 'ALHUWISHIL', '', '', 5, 'ادبي', '1955-02-23', 1, 'mmmr23@hotmail.com', NULL, '1035023702', NULL, '$2y$10$FPe6cGaOADDXDoa.QZGpfuqhzaRAV9aYN./NmEeUj.ztWsH.iSljC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hWPbNnjw75DPxDbBkYynlJX7957A0mmoe8SlydUiLtC0pT1IgiXwvOeUPYG8', '2021-10-20 14:29:17', '2022-06-27 13:43:30'),
(468, 'إيمان', 'فهد', '', 'الصعيدي ', 'Eman', 'Fahad', '', 'Al Saidi', '', '', 5, 'الأدب الإنجليزي ', '1968-11-19', 1, 'eman.f.a@hotmail.com', '0553003800', '1063388704', NULL, '$2y$10$ZjAlMMs1ZOyrbxIBEy501e5MD7jWJaollGQsPoIIk6/JiUbOlpua.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vlSjqZWWKcbVh419jlXlxqKfBmmz4nL3ht5qEVNIkrePedcDboMA7JiCTU62', '2021-10-22 19:00:15', '2021-10-25 17:37:44'),
(469, 'نفيسه', 'يحيى ', '', 'العسيري ', 'nafessh', 'yahya', '', 'assort', '', '', 5, 'تمريض عام ', '1956-02-13', 1, 'nafesah123@icloud.com', '0000000000', '1023103078', NULL, '$2y$10$gcQ/bkJyyWq0TmO.seujPuZOojNzmSN8zPDpDu95ZGV7Vu35/EUbu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FSfac4m6F2fqydEGjP11jKJlw6AtsmGSQK39mm9Jv0lILGn63a7BWg2W1lWh', '2021-10-23 18:40:08', '2021-10-23 18:41:26'),
(470, 'دلال', 'عبدالعزيز ', '', 'الصعب', 'dalal', 'abdulaziz ', '', 'alsaab', '', '', 5, 'عام', '1971-04-26', 1, 'reem.alsaab.20@gmail.com', '0504467741', '1026657500', NULL, '$2y$10$WrNhb0ePtXFsLc3aOSDlA.v87j3FoaG4A4j5CTxup8aevQ56PQ6HC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'GgUJxLUQH6bZHtwLj35OhnoBZI0ohUZJxjuqzmbwA77HuewL21pmEtWSRDcr', '2021-10-23 19:14:18', '2021-10-23 19:14:18'),
(471, 'فاطمه', 'ابراهيم', '', 'الميمان', 'Fatimah', 'Ibrahim', '', 'Almiman', '', '', 5, 'ثانوي', '2012-02-02', 1, 'alsaqabi.r@gmail.com', '0502995470', '1004444699', NULL, '$2y$10$kUpVtedYBqW14M6xKFy/HO9TxwFP3b3ZErBYPt..vvXxmEF0j/XcG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'oTo7w7oXlqfVnu6ypw5GYreSOsUNDwyEucKQqZsxGNS8QqKP2gpXh5hYovYc', '2021-10-25 19:09:46', '2021-11-07 20:45:36'),
(472, 'عثمان', 'احمد', '', 'الغامدي ', 'Uthman ', 'Ahmed ', '', 'Alghamdi ', '', '', 5, 'ادارة اعمال ', '1959-06-20', 1, 'Majeed.joury@gmail.com', '0504137502', '1056505645', NULL, '$2y$10$HFUsFlNZ2/mfNKkEr8/17ur2hih/XGLtSg3KhrZ6K7VagBWZZnskK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Z33hWC9uBXCVoxhwwbBRVIsKY13U86EIWuKfbfRIOrs9ZLl1m5KqJA10Itfn', '2021-10-25 21:46:05', '2021-10-26 19:10:47'),
(473, 'مهاء', 'ماجد ', '', 'السبيعي ', 'Maha', 'Majed', '', 'Alsubaie', '', '', 5, 'أحياء ', '1983-05-15', 1, 'dream.2009@live.ca', NULL, '1050747771', NULL, '$2y$10$ntPb1sthvx5VrRvqMvtV7um9L6lhc6DGsC0sePnAWRhHt6CdiNdGK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'iTTtGzSS0IGgvuzjtfcEFVlP2fg6MI8qBBa3iPMXnw0ncZNV8y01h1Yvj6tL', '2021-10-25 21:53:57', '2021-10-25 21:53:57'),
(474, 'لولوه', 'عبدالعزيز', '', 'الراشد', 'loloh', 'abdalaziz', '', 'alrashed', '', '', 5, 'ادبي', '1965-10-25', 1, 'um-turki1234@hotmail.com', '0551199776', '1012110373', NULL, '$2y$10$rDEDc47GfH0ExL5wu9CFtOu.XuFs6Px2d.UEHRm2HxhW4fyFI8e.S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'h4klCdaKI0p9Zx6wTFBv1Ve2DjSoYoLlA6H50QVVIpZy9fKcuogUoiYtkjmg', '2021-10-29 18:20:51', '2021-11-07 20:43:02'),
(475, 'مها ', 'عبدالكريم ', '', 'البريثن', 'Maha', 'Abdulkareem ', '', 'Alburaythin', '', '', 5, 'علم اجتماع', '1963-11-17', 1, 'Mburaythin@gmail.com', '0534252993', '1001168432', NULL, '$2y$10$KbB18z/HXih387Wpa4HG.e/R2YNxs4m62CPBqYOzVzT4liwyBLI5G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3h8CIoqhiO3vujJ49cGdlIBx7C9EbP8YOPWSZoYui5GssSGQFuqS56pBN5Hj', '2021-10-30 21:07:48', '2021-10-31 19:48:00'),
(476, 'خالد', 'عبد الرحمن ', '', 'الرزيحي ', 'Khalid', 'Abdalrhmn ', '', 'Alrzihi ', '', '', 5, 'عسكري فني', '1966-10-15', 1, 'Kh123456sa@yahoo.com', '0595109807', '1008854307', NULL, '$2y$10$DhSQFem/V03EyoLjb1rOPO/ZLwuWtHKszJVcH2hL.4n7Of/FGyU6W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hwvbdyQYoFTd1vAEiPPrytGjCvvm1EXJD00JpDDbzXUFdvENKNjAjlBCUvVE', '2021-11-01 01:20:32', '2021-11-01 01:20:32'),
(477, 'أحمد', 'حسين', '', 'الشريف', 'Ahmed', 'Hussain ', '', 'Alsharif', '', '', 5, 'ادارة اعمال', '1941-07-24', 1, 'aba-firas@hotmail.com', '0505755010', '1001403020', NULL, '$2y$10$kNCDHtZAki7vdmSbIMpzdukkYBgLjX7g7yiYihBxAWLVTxWKqtBv6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'swjRmZXvdRfNQyZX6CVJL102xLhmOrUj4fRNUi0KcqBqN5f9IErXFdzkyerR', '2021-11-01 22:56:27', '2021-11-01 22:56:27'),
(478, 'زكية', 'صالح', '', 'الحسون', 'Zakia', 'Saleh', '', 'Alhassoun', '', '', 5, 'عام', '1961-12-09', 1, 'Zalhassun@gmail.com', '0550088660', '1008686048', NULL, '$2y$10$Pd/TLkM9GO/Zdo6NazUfA.zSbTcIzXsAJAfnnAPi6F9xhQhkIWneK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'd2V9cy1927fXBtXtSW0bt4zgmOGDgN6XBUuGvknLf3hJLCnAhD194Ur0QDYp', '2021-11-01 23:25:34', '2021-11-01 23:34:22'),
(479, 'احمد ', 'عبدالرحمن', '', 'اليحيى', 'AHMED', 'ABDULRAHMAN', '', 'ALYAHYA', '', '', 5, 'تجارى', '1965-06-29', 1, 'TIGER707@HOTMAIL.COM', '0504298900', '1010008207', NULL, '$2y$10$Gj0O/5/BX/n.wz.M3jmaIOQFcM2yPgujVkJ2t6wC0uW1PP.MRt1nK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'x05TeMIDquzGKKQTdRo31mtNKzLhFrAhCOfGVtJ6tscKc9nO4L1e5Hho7vm5', '2021-11-01 23:55:05', '2021-11-02 15:45:19'),
(480, 'مريم', 'محمد', '', 'باحاذق', 'Mariam', 'Mohamed', '', 'Bahatheq', '', '', 5, 'التدريس', '1959-12-31', 1, 'Omarbaju@gmail.com', '0505418956', '1000902567', NULL, '$2y$10$9pa.Gng1wA3N0lXYR6AGeeoKjTadSGEM0n2O8F722OqWs9p1E2sZK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PdkAen9maCDbbqK1MI7PBphUD0cbmGE3KvBBf8rBWfD7DJPJCo1XFhGO5jfe', '2021-11-03 18:12:20', '2021-11-06 00:41:04'),
(481, 'وليد', 'فالح', '', 'الظاهري', 'waleed', 'Falih', '', 'aldahri', '', '', 5, 'علوم عسكريه- قيادة-تخطيط استراتيجي', '1963-11-17', 1, 'wfdahri@hotmail.com', NULL, '1018112928', NULL, '$2y$10$vqfe6uildPE3EB8G2mvaOub9g3MGklWbir12vb8fzJAVLvlIhl31O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1zHU8htruHNjEFe1gGI8kGLo42qODHckpKEEmqJf7XqPcNec95OFHV2cT2y8', '2021-11-05 21:18:43', '2021-11-05 21:18:43'),
(482, 'سلمى', 'سالم', '', 'الناصر', 'Salma', 'Salm', '', 'Al nasser', '', '', 5, 'تمريض', '1957-02-06', 1, 'salma.alnasser60@jmail.com', '0509822007', '1039403652', NULL, '$2y$10$eL9hha8SJ/Ovqo1kCGj1yenNGjdq5uTk1iWPxLAJdW49sIORGG0Ge', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5cxdliOlMfHl33SQBF7ETswlXjzEHB61THcHvurlvh5o6lfvlcMOcLXxdxsf', '2021-11-06 18:44:20', '2021-11-06 18:44:20'),
(483, 'سلمى ', 'سالم', '', 'الناصر', 'Salma', 'Salm', '', 'Alnasser', '', '', 5, 'تمريض', '1957-02-01', 1, 'salma.alnasser60@gmail.com', '0509822007', '1039403625', NULL, '$2y$10$4r0Gv6vhIFGVvHb/NoPBiOrPXY8WfH3FrgoZpeJSddi6t0pc0hzDi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'NItJUOs3IjRPXyQTA8DRHB2kzXG9MSzVaYuP1sZtzvSNq4FFGyK1a1ZKqux5', '2021-11-06 23:17:40', '2021-11-07 17:56:55'),
(484, 'فوزيه', 'ابراهيم ', '', 'عبدالرحمن', 'Fawzia', 'Abrahem', '', 'Abdrhman', '', '', 5, 'ادبي', '1960-12-19', 1, 'fooz1555@icloud.com', '0553113225', '1006313843', NULL, '$2y$10$u7z7Eabt0bL4.AXY.6qiy.nQiTFRfb6IRfSKjORTGWM/nuDSYqYOO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'EoFUKFiSrMva6AOxLlys73177j3zpE5Oz5qSZ4TIyiBzdDMUYBCIcQKhjGOL', '2021-11-07 21:11:26', '2021-11-08 20:56:43'),
(485, 'فاطمة', 'محمد', '', 'العريني', 'Fatimah', 'Mohammed ', '', 'AlOraini', '', '', 5, 'دراسات إسلامية', '1965-10-25', 1, 'randah_s@hotmail.com', '0598610336', '1039333388', NULL, '$2y$10$NhGW6NIMtB64jmakOJN8wubqb3VUwBQBhCZ5BCK/owsKKdrhGzqxm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kmlMzqPCIJ9wcEM34HlHNC1cPZMwl3unfxbpspWl029pdXTvsFHBSAoxlCdM', '2021-11-07 23:14:54', '2021-11-08 01:32:02'),
(486, 'عبدالرحمن ', 'ابراهيم ', '', 'مقرن الداؤود', 'ABDALRAHMMAN', 'ABRAHEEM', '', 'MQREEN ALDAOOD', '', '', 5, 'تربية ', '1967-10-04', 1, 'saad2008saad@hotmail.com', '0505405792', '1025386176', NULL, '$2y$10$pXQgJfaMfiRls03QfP.yA.4t3CCMCbZFanTy0oaquyMHKJPVlRRYS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nd1qTVZrf9rMMv6pkzN9pxyq5dpAnz4AR4nei4k3aQd9UJjtqycFMeuHobIh', '2021-11-10 00:23:16', '2021-11-11 17:48:36'),
(487, 'أحمد', 'محمد', '', 'عسيري', 'Ahmed', 'Mohammed ', '', 'Asiri', '', '', 5, 'ادبي', '1958-01-21', 1, 'A-ser-77-@hotmail.com', '0505422165', '1008471177', NULL, '$2y$10$ZhOhaiR.OXxZLzQje5mj.Oh8A6Efjlo2S1xOim8M/sgkiRzoptuJq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'VYkfCM5kB6Hb5ZU30K6QBzGvkFJQYg7wBod9z41AYO0h8xPv9Ipen7afv6Xr', '2021-11-11 12:58:13', '2021-11-11 17:42:47'),
(488, 'هدى ', 'عبد العزيز ', '', 'الغنيم ', 'Huda', 'Abdulaziz ', '', 'Alghonaim', '', '', 5, 'علم حيوان ', '1964-11-05', 1, 'Hamg789@gmail.com', '0554445411', '1026844173', NULL, '$2y$10$/YakZrZ/IW6qA59wRSoe9efUtAOxHRgRMBOWDekO9gjwq.Yx71Acq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eYfaUt7hAbs8VFXkNf7UWgMWxphelQ66kymkZP12yfeC4IfRSnhik7xlJXek', '2021-11-11 18:50:43', '2021-11-16 14:32:58'),
(489, 'الجوهرة', 'عبدالعزيز ', '', 'الجهيمي', 'Aljawhrah', 'Abdulaziz', '', 'Aljuhaimi', '', '', 5, 'لغة عربية', '1960-05-06', 1, 'a_o.3@hotmail.com', '0556655470', '1000303907', NULL, '$2y$10$M/TOIesiGCaQWte71.U.cOyjvdCGIROXQR72gIlAmZnqY27Mx9CUm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5IG3McnAKAogTAiER5xFKO8X0EXhvIdgiCOTn429ynOmxWIhsZOzjQAC8EPq', '2021-11-12 12:15:22', '2021-11-15 13:45:53'),
(490, 'غاده', 'سعد', '', 'الضفيان', 'ghadah', 'saad', '', 'Aldufyan', '', '', 5, 'شرعي', '1969-09-12', 1, 'xghadahx@hotmail.com', '0502600028', '1000108058', NULL, '$2y$10$xul1yq.lwHTVcasn.pRTceWwIlREjBTKgHG1UelMRNuMD0oc51oei', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CmKfUO4poKRfBI7QXaXN0obdqZutT8Is2TeTzQTfHieJ6hN2lXbWeJH6PDkC', '2021-11-12 13:12:06', '2022-01-19 18:34:44'),
(491, 'منيره', 'عبدالعزيز', '', 'الشقري', 'Muneerah ', 'Abdulaziz ', '', 'Alshegri', '', '', 5, 'لا يوجد', '1962-11-28', 1, 'mun4422@hotmail.com', '0533503470', '1043131695', NULL, '$2y$10$mO7/AUl.qp/v./7PPaI8mukeDOQmqb.rrdVFi1jzXHekJ3mHxGB12', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CAyZ8mzoEXAHNJRBJSjQpt0Dwyb7khB6yrzsilF3P7WyIh8r7QJb0QZq6d2o', '2021-11-12 20:51:36', '2021-11-12 20:51:36'),
(492, 'هني', 'خليل', '', 'التوايهة', 'Hana', 'Khalil', '', 'Altawaiha', '', '', 5, 'تمريض', '1963-01-01', 1, 'Hessa77hd@hotmail.com', '0537531746', '1093559894', NULL, '$2y$10$m8v6.VaQItKp8SB6k.DQXejO5B03ryMwuYL7pXgRhhml3sOvD4OOK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hSOO35x9kcR1JokeEBHLUswjgxHcM5N6fv3BnUoF2I6mJeV7cGdVQfDfj76P', '2021-11-15 22:20:44', '2021-11-16 14:32:21'),
(493, 'هيلة', 'سعد', '', 'أباحسين', 'Helah', 'Saad', '', 'Abahussein', '', '', 5, 'اللغة العربية', '0000-01-01', 1, 'hahaghgh12@gmail.com', '0504815534', '1007980293', NULL, '$2y$10$6m4KXK1vjU2fsbmr.adQP.ZT3SpiqejvVQPaGQ0p1Te7206CDcZma', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mnOa3jVjo8MVseOmUN188XR6mZeFQvvqWYoazxzC3WabnuE3yaukcCLBxXNZ', '2021-11-16 23:52:25', '2021-11-16 23:52:25'),
(494, 'زيد ', 'سعد ', '', 'الخشلان ', 'Zaid', 'Saad', '', 'Alkaslan', '', '', 5, 'دراسات قرآنية ', '1951-04-08', 1, 'Zydalkhshlan@gmail.com', '0547402199', '1014373169', NULL, '$2y$10$b2/RU13ABKTgp8Q2A2XrDOMjWtyWHgflawObr.5JQgicnpagrEv7S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'n6ofhGwskdny8MxgMCMyYEHAWZFjUHvvZowv6IOjEZiNgDkarVLdPjSbbUoh', '2021-11-20 17:40:59', '2021-11-30 02:09:06'),
(495, 'عبدالله بن', 'عارف', '', 'خوجه', 'Abdullah ', 'Arif', '', 'Khoujah ', '', '', 5, 'صيدله', '1946-01-01', 1, 'turki4099@gmail.com', '0555135246', '1032341222', NULL, '$2y$10$4PO2b/oS9YRznKNWUCyUn.LL5l1uCwqxBIOOiQiAl0XQ.qmeq6DSS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xhWnJX9F3yGshLWyaT0ein2T5y8n8olhQS9MBGRoUTa9YjJQ3lf92QArnMSJ', '2021-11-23 18:20:41', '2022-06-27 10:52:59'),
(496, 'هاني', 'عبد العزيز ', '', 'الشبيلي', 'HANI', 'Abdualaziz ', '', 'Alshubaily', '', '', 5, 'هندسة تقنية حاسب آلي ', '1979-06-22', 1, 'Se.com.sa@outlook.sa', '0539899955', '1036492344', NULL, '$2y$10$UO2nJEp83UNOrdBqTyWaT.SDsdQd7osOxK4LawGyKlgJeqAilQCSu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'YGPPeixQb2pLjeNPQFG4fDUIPOLrWabx79bnyuF1DbwyVOdJfgV41YHlhfOz', '2021-11-23 21:46:52', '2021-11-23 21:46:52'),
(497, 'بندر', 'أسعد', '', 'سنقورة', 'Bandar', 'Asaad', '', 'Sangora', '', '', 5, 'ثانوية ', '1957-02-01', 1, 'Bsangora2@gmail.com', NULL, '1036751566', NULL, '$2y$10$X3N89YlQmh9xYRUnnNWtHeBXMOVZx9nqY3n7tWJoDMPPTB11nNQTK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'L0LxCWY7yWfvgwow35kpHE4N8t0P2OS7JAYtYxofglUfAh6uDBrex6UpZPIa', '2021-11-24 09:56:16', '2022-06-27 12:13:32'),
(498, 'صالح', 'سيف', '', 'العبيسي', 'SALEH', 'SAIF', '', 'ALOBAISI', '', '', 5, 'شريعة ودراسات اسلامية', '1949-04-28', 1, 'saadsaleh337@gmail.com', '0562216236', '1019356037', NULL, '$2y$10$fVz2L2ZrJEUnTQ4MuimmAeaXFFdE0xcM92eQabpN2ih6heOzfbK/S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4e3PZt0ssalEHux9rcQttLFNbFgEy68UTOwywL0o2kv3gF7S2ao5JuID5jsu', '2021-11-24 15:27:53', '2021-11-24 15:27:53'),
(499, 'جوزاء', 'مشعان', '', 'المشعان', 'Jawza', 'Mashaan', '', 'Almashaan', '', '', 5, 'خدمه اجتماعيه', '1978-11-06', 1, 'jawza-sw@hotmail.com', '0508092020', '1016761775', NULL, '$2y$10$gcaz2jMiE83Wk4zuCPwNYu/JGWxwpmea4frWL..0fCTxemrjN6iy.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'XIzfdA1k6rUPxAydYmhHRGqpZiSiAATwUKv4gVFxc1b5OB2veCo8qkAYXL2c', '2021-11-24 18:35:22', '2021-11-24 18:35:22'),
(500, 'ماجد ', 'عبد الله ', '', 'الدوس ', 'majed', 'abdullah', '', 'aldos', '', '', 5, 'علوم  عسكرية ', '1966-10-15', 1, 'doos99999@gmail.com', '0000000000', '1003552302', NULL, '$2y$10$UEEfowvJeTkRf0zaLc2q7u73qwCfA/uWUVtG3SjsZaahL7Cayuf9y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HoGex3YKk8zyJ2YsooAbZSn0czs4z1126TpRMrax453aCKOIYMlU01WM2jo1', '2021-11-30 01:23:23', '2021-11-30 01:24:00'),
(501, 'ساره', 'عبدالله', '', 'الضويان', 'Sarah', 'Abdullah', '', 'Al-Dwayain', '', '', 5, 'عام', '1961-12-09', 1, 'saraad22@icloud.com', '0505430707', '1020709968', NULL, '$2y$10$y5Q4aWXix.O02BJnjsuDBu7WzOfWjd3bcGa5tJIYDfgXJazxIaYsS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HHb1lXbpZYmUkAEqWM7bnjECI130dtYQvEmgE37ehtmflc9kXgA4bQgv6eZk', '2021-11-30 22:56:56', '2022-01-02 20:01:20'),
(502, 'علي', 'احمد', '', 'عسيري', 'ALI', 'AHMED', '', 'ASIRI', '', '', 5, 'لايوجد', '1972-08-10', 1, 'ali_asiri1992@icloud.com', '0555187804', '1033041672', NULL, '$2y$10$brLcqEtcNP.pLkC26fmaN.cI7XypdGHL2nkhNRdkA7wS0RFR0YZQ6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'JysjL2hVw0ZhTgCgu7kooPPPgm6VkKiVmM8g6AhNQ6qCLfJmDf2hxwzOmAIr', '2021-12-12 19:27:23', '2021-12-12 19:27:23'),
(503, 'منصور', 'صالح', '', 'الجريس', 'MANSOR', 'SALEH', '', 'ALGRISS', '', '', 5, 'علمي', '1950-04-18', 1, 'm.algriss@hotmail.com', '0532329494', '1022904005', NULL, '$2y$10$rE/YPPVqO2NEsGVwFuSGPe8ApENpmEMWttMiYbkoL.HjivpxUSPem', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Ue2wnAmtdO0HtfmZHtkvq9HEyIhcE7AD3fhD5TY8twjnbwSmnoMGJwdza09Y', '2021-12-13 22:31:07', '2021-12-13 22:31:07'),
(505, 'شيخه ', 'منصور ', '', 'الخليوي ', 'SHaikha ', 'Mansoor ', '', 'Slkhelaiwi', '', '', 5, 'Ehealth system', '2011-12-16', 1, 'Shaikhagr@gmail.com', '0583333391', '1046235023', NULL, '$2y$10$lameDwWG5kinZ6buR/KcDOH6S9xmvmXdAfdqFMUZLswCT0OL3r9ZS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LWmKEbSLoXVMCYfmpjqIWdwU27ps01oMFsIUHl4RDW73nZHwPt8essRynYVr', '2021-12-17 11:39:50', '2021-12-17 11:39:50'),
(506, 'عبدالله', 'عبدالمحسن', '', 'المبدل', 'Abdullah ', 'ABDALMOHSEN ', '', 'ALMOBADEEL ', '', '', 5, 'علم اجتماع', '1962-11-28', 1, 'Dro3@outlook.sa', NULL, '1017761782', NULL, '$2y$10$IVdl2uBhrspyO67eEQ0chOI86Z.V29033Em6b8pUhkTML1pW2kPsC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'HtzoP3NYF6TS4qqjKfCfpxFjxvxHuPLBpPqyRrt1s6WVEHPuGpxvOeTEyivj', '2021-12-17 16:30:11', '2021-12-17 16:30:11'),
(507, 'تركي', 'علي', '', 'القحطاني', 'Turki', 'Ali', '', 'Alqahtani', '', '', 5, 'ادبي', '1948-05-09', 1, 'mr.turki.sa@gmail.com', '0532444550', '1004297287', NULL, '$2y$10$kAP7bgYzZfrNkUxT2qYJ9Ore6omi5o1O3deif8BYa5G1kIYg2atlS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'E3gWScX2Lewr5CbeT35atLcj7a4nZQ00gAtfZft1IH32QAn5HTY4tRLdziDu', '2021-12-17 22:27:24', '2022-06-28 13:50:59'),
(508, 'سليمان', 'عبدالله', '', 'السلمي', '', '', '', '', '', '', 5, 'شريعة', '2021-12-05', 1, 'sas1375@hotmail.com', NULL, '1007542614', NULL, '$2y$10$d.di3pyKC00XhFOZn/j1GOuVuCUrleLY/2y7W5OYAS8Rm3kjXypfa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LlWRX9VJmmgaq1xkMZzXnqd0ARAzKHCBrtgOTSe61cg0gp8IBDiGUSnpKgsY', '2021-12-19 12:06:31', '2022-03-17 11:36:17'),
(509, 'صالح', 'سعيد', '', 'زهراني', 'Saleh', 'Saed', '', 'Zahranj', '', '', 5, 'مساعد مدير', '1960-12-19', 1, 'saleeh4763@gmail.com', '0506055568', '1017147065', NULL, '$2y$10$pJKoYdLOdbkFH1Jq/I3QAuXCFpBlEmYzUTy2m0WuuZl/8rlpunICS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'weJnGA5tbJt8UJJcKDue4hUaFtouX4MFGDvNbKedS4UO6u1T2yRh43VAWpyc', '2021-12-19 12:52:23', '2022-01-04 21:00:57'),
(510, 'فاطمة ', 'محمد ', '', 'الأسمري ', 'fatimah', 'mohamed', '', 'alasmry', '', '', 5, 'ادخال بيانات ', '1961-12-09', 1, 'fatmaalsmary@gmail.com', '0583000503', '1012075923', NULL, '$2y$10$/npB9GjqQcGUJWGJueuH0uTkfImcGYWHq8YwlzLpzj2QR7gBMhHSK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'UUHTFqMoNnJnFOvLabbn5GrjuwuDzUR8FONEUxrhQJNUx0j42qRtoFId4dPD', '2021-12-21 07:44:23', '2021-12-21 08:13:10'),
(511, 'علي ', 'محمد ', '', 'السعوي', 'Ali', 'mohamed', '', 'Al saawi', '', '', 5, 'دبلوم عام', '1958-01-21', 1, 'ali.alasswi@gmil.com', '0000000000', '1013450240', NULL, '$2y$10$adN0Tih4SU..lA7d2eyc7uyT6UqPw./qyelD1mp3a7K6YGyPFeqyO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xR1wgObzqDGnGcWgdGtd9Jh6Szo5o5CdG6ozNicjniEIrSLKFPZfAMy5xFRp', '2021-12-21 07:56:04', '2021-12-29 17:33:47'),
(512, 'هباس ', 'فهيد', '', 'القحطاني ', 'habbas', 'fheed', '', 'alqhtani', '', '', 5, 'حقوق', '1957-12-22', 1, 'amerah.alq11@gmail.com', '0555055971', '1030975997', NULL, '$2y$10$Q6xvwf5/l/HmJXS4pkyrce.3/Jp2ZLiZXVdiz/BTwMsf/cpNfDcjG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dl8iOmlQqL6ILL7ZjMVcfJVd74BhX1UKoKp7UfZCh8bXHiTDOhmSpV7flZ4L', '2021-12-26 16:24:44', '2021-12-29 17:40:02'),
(513, 'هند', 'عبدالرحمن', '', 'الحميد', 'Hind', 'A', '', 'Alhumaid', '', '', 5, 'سكرتاريه', '1968-04-30', 1, 'Hindalhumaid@gmail.com', '0500068068', '1010620977', NULL, '$2y$10$vbB7Nhp/ibKxxxLQLa9xteKQZN1nFmVKBt1RQE992CjVE4o246.sm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5PsSnsDXbrfDYinnRYyigHNVBaXGFgevKjuzyTxHYWn64fHY50Er4yWbZHr3', '2022-01-04 03:08:13', '2022-01-08 19:14:34'),
(514, 'عثمان', 'عبدالغني', '', 'الشنواني', 'Othman', 'Abdulgani', '', 'Alshanwani', '', '', 5, 'سكرتارية تنفيذية', '1972-12-28', 1, 'Assalaah@hotmail.com', '0555335659', '1001408127', NULL, '$2y$10$33Vnwu/jyahoy7CqAzUNTOA/maFNlvKiQPNSyetu8cSYBrvlEg2V6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'TdjdkTb4uGvK83JcOoJXjudPESe8o3Jri9liPZrCix54Qeazsd81xdmgrQXm', '2022-01-04 06:20:51', '2022-01-04 06:20:51'),
(515, 'شاكر ', 'ناصر ', '', 'ااشريف ', 'Shakir ', 'Nasir ', '', 'Alshareef ', '', '', 5, 'فيزياء - إدارة وتخطيط تربوي ', '2003-11-28', 1, 'alshareef@me.com', '0548771102', '1032229997', NULL, '$2y$10$RJPJ.TEcDl3JGW4Vf2WHsOGo.hBskBoG6wD5Uc8Oqlos.HG8KpElW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IFHugdQfW29HBXbqkfFdtSdh8TLr0eKArPyHaGWQzuKrJRNRAjlJWZFfh31F', '2022-01-12 17:05:48', '2022-01-12 22:18:32'),
(516, 'فوزية ', 'محمد ', '', 'العثمان ', 'fawzyah', 'mohamed', '', 'al othman', '', '', 5, 'ادبي ', '1961-03-27', 1, 'danaaiahmari24@gmail.com', '0000000000', '1108283902', NULL, '$2y$10$MM/g9RuzUz6Jzzx7Ws/2MeCa3AahI.EoBpbFJhKqaqok9mtjp3MqS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '7GQKqOvKgRcoAnfbvZFwMYMwC5qVFwTwVfXEwV72IAMHBnOT8zNd8ClUWVbB', '2022-01-12 22:34:40', '2022-01-12 22:35:37'),
(517, 'محمد', 'عبدالعزيز', '', 'السليمان', 'mohmmad', 'Abdel Azeez ', '', 'alsuliman', '', '', 5, 'اداري', '1972-08-01', 1, 'od3an@hotmail.com', '0506484398', '1060345731', NULL, '$2y$10$M9Hq.5teqrOi8bEu6x978.giUy.q/Kz7CI0ESK3tqDSXVo9ofTQfq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1vkFG3mvWQLuTr3MISCi9igMSkSTwNgeVmkfo1M9ub9jnPBKSWuaDNr2XtYo', '2022-01-13 18:47:59', '2022-06-27 16:57:35'),
(518, 'علي', 'عبدالله', '', 'القحطاني', 'Ali', 'Abdullah', '', 'Alqahtani', '', '', 5, 'إنشاءات ', '1961-03-03', 1, 'mohndes2008@hotmail.com', '0554499786', '1027600467', NULL, '$2y$10$xS3dkIoBb8SqAmmLZ7mqF.tn4mI09xH15p/xvB2FRmhyS20PDMZkW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'TXf2oXzE5efTql3CdPhtVjrwN3biZMn7YWnUCp0sFlVxigsA17NU5filUUaR', '2022-01-14 17:17:27', '2022-01-14 21:46:04'),
(519, 'سعد ', 'حنش', '', 'الشهري', 'SAAD', 'Hanash.', '', 'ALSHEHRI', '', '', 5, 'عسكري', '1965-10-25', 1, 'salshehri2010@hotmail.com', NULL, '1001029006', NULL, '$2y$10$vBdgxrpcqVJrMv4gYupzM.JlNyHThEu.TO2T.lYcqa390qqUb9oD.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Fth2iR8qkAUYkd3kWbbfD1TyKa3Xm7jSZciH7Nc0R77R5TyGGnnprwrwOUsQ', '2022-01-16 16:24:34', '2022-01-19 18:04:59'),
(520, 'سميرة ', 'شفيق ', '', 'كردي ', 'Samirah ', 'Shafeeq', '', 'Kurdi ', '', '', 5, 'اللغة العربية', '1966-05-10', 1, 'muniraalim@hotmail.com', '0500038497', '1017692755', NULL, '$2y$10$lUiO2rIgsHkLdbSl7cHvRejCpIwITkfU57dVG/sQ7vwj1zkwqRvNq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'rpbZWMTaON3JxSpRUKkeX8rIqaTfPIFzl698whjYnkuHabsnHfxFL8VnsYni', '2022-01-22 21:59:35', '2022-03-17 11:23:56'),
(521, 'عماد', 'عبدالله', '', 'الضويلع', 'Emad', 'Abdullah', '', 'Al Dhuwaile', '', '', 5, 'بحوث عمليات', '0000-01-01', 1, 'dodi46@hotmail.com', '0556428808', '1030492365', NULL, '$2y$10$zHG6/5IYHJRqSjLyFPnuouLyfEE1QyHI6JWO7a6fe2HGDy3jQdpna', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fF9h6e5TDotsyPlsia9e8FfiSNByHAszGUN2HypOOIxioHk4m8aCJ07YEKYR', '2022-01-23 12:51:37', '2022-01-23 12:51:37'),
(522, 'ذوقان', 'معاشي', '', 'العطيه', 'Thougan', 'M', '', 'Alatiyah', '', '', 5, 'علوم عسكريه', '1961-03-11', 1, 't.alateyah@hotmail.com', '0556240022', '1040518183', NULL, '$2y$10$l3pw93Pjy2Ba1WXvzsvkBe167DNhRxKOPo5Rppx5Y6sehN1ItqVKy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IPOltXloj99sXjxWtc0k1v9oueDOOgTl0N6Wi4WWpbKfcd4owUCClfK3lrmA', '2022-01-24 16:08:15', '2022-03-15 14:27:45'),
(523, 'أحمد ', 'عبدالله ', '', 'الدريس ', 'ahmad', 'abdullah ', '', 'aldrees', '', '', 5, 'تجاري', '1950-04-18', 1, 'ahmad-aldrees@hotmail.com', '0500200444', '1000724482', NULL, '$2y$10$Oj5q6ywe8WhKsW4lhW0IHOaAF1ZnSBSzrXEioNQB908ErVYUjRg2e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'BkZCjxjXI3OUHJYhti0b01tQWOQQTFmzmZyEbE72Ot9OvfbXdAYNVMxc59MT', '2022-01-24 16:36:33', '2022-01-27 10:24:31'),
(524, 'فلاح ', 'عبدالله ', '', 'المطيري ', 'Falah', 'Abdullah', '', 'Almurairi', '', '', 5, 'دعوة ', '1962-01-01', 1, 'falahcscs@gmail.com', '0535401402', '1039964232', NULL, '$2y$10$n9IjJaaeW.fhodE.U3FPNeWAPEO1NpLX6/A9G56yd.aeJqxlCHN8W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'H8pRYM1JyYK5kuToq4mStyoz3GRQ8Uo0MdbNnURJfJcN0MqognArBFuVHC0U', '2022-01-26 19:36:04', '2022-02-24 06:22:39'),
(525, 'بشير', 'علي', '', 'البلوي', 'BASHEER', 'ALI', '', 'ALBALAWI', '', '', 5, 'اتصالات', '1966-07-07', 1, 'saaf_25@hotmail.com', NULL, '1045525928', NULL, '$2y$10$TZEAZ6qiIimmHAqsToK12O3VqMiF6Tmjt3J6TczYWlKZMosPg.XXe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'S2bvGn4h7KQ5d1OiRyFEJyrFDtgko9pFGi5SocCDOtPLnMAVF68OrkPWzRAx', '2022-01-30 12:06:36', '2022-01-30 12:06:36'),
(526, 'عبدالغني ', 'سفر ', '', 'المالكي ', 'ABDULGHANI', 'SAFAR', '', 'ALMALKI', '', '', 5, 'امن', '1966-09-07', 1, 'a407651405@gmail.com', '0555253330', '1045941893', NULL, '$2y$10$wFUPM.lCT7jLzoUMlaKrUuHmdd3ocn/XwJ8tAXSd20iOaXRwgRHWu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'q5Yfk77N0VvyavKoPmyKX3UItGmAaQ5L0IAfowYt1Yc1TQJWZF2fIOF2fdnT', '2022-02-02 15:23:31', '2022-02-04 16:37:18'),
(527, 'فيصل ', 'ملفي ', '', 'بن حلوه ', 'Fasial', 'Malfy', '', 'B N halogen', '', '', 5, 'تجارة ', '1966-11-26', 1, 'Fasal1210@hotmail.com', '0582999952', '1031899692', NULL, '$2y$10$NEVNQ05PBemwnFEetaNwa.28qAvla335xDo92gpjIYt59qBsLFD/u', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wkS4tTELf88dByvdL28rgy7jcD69aNxojZuGHHo58zlbvUoccAChWEjEPhPc', '2022-02-02 15:34:18', '2022-02-04 16:37:01'),
(528, 'عبدالرحمن', 'حسين', '', 'السريعي', '', '', '', '', '', '', 5, 'علمي', '1967-10-04', 1, 'pmm0110@hotmail.com', NULL, '1026827566', NULL, '$2y$10$ecRX.Pmy/DuHcrt/VTyEEO2dBkl7bl.IWJ8c41nTO5JGCBokB.x8G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cfybmMGApWir2UAqkvtHhHPGNSf4RCep5K0RrTxSSYGZN4k2PEtYbrhT27W3', '2022-02-03 14:04:01', '2022-02-20 17:31:45'),
(529, 'صالح', 'عبدالعزيز', '', 'الراجحي', 'SALEH', 'ABDULAZIZ', '', 'ALRAJHI', '', '', 5, 'هاتف سيار', '1963-11-17', 1, 'salrajhy22@gmail.com', '0562993310', '1031176611', NULL, '$2y$10$2Hci2qUh8RrH6krZFklbPuof18QTVPRwF/HGElaULE3PbUVbyFtZ.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'UEQndMq8ZQEpoctHf2p1IzcyxgOiDENe6r5ktNHZcWi78G7lEAvkCe8jS2Yi', '2022-02-08 15:52:53', '2022-03-20 12:18:12'),
(530, 'عادل', 'عبدالله', '', 'عبدلي', 'ADEL', 'ABDULLAH', '', 'ABDALI', '', '', 5, 'رياضيات', '1977-02-03', 1, 'alhosam20@gmail.com', NULL, '1055658601', NULL, '$2y$10$NfLSmbsVDBo8CAHtKCQ8Cud8vfBotxKCN3Q9bRTEgLuEQ7LeO.RRy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wrCJncqYAlZndRhxYIsrL7LGT5AxYKDncjKUTQm94MZoO2tlz86jEmBEYEhK', '2022-02-09 00:10:41', '2022-02-09 00:10:41'),
(532, 'عبدالعزيز', 'محمد', '', 'السويلم', '', '', '', '', '', '', 5, 'جغرافيه', '1951-04-08', 1, 'wadaan20@gmail.com', NULL, '1002612370', NULL, '$2y$10$IsWoGzE5K4w18pMDbQJx8.7cUxIFzXNEkssjqcaKs1Oc47zPjvcWS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fYbERlU7rvbuWIUgHQI9B5ooEnsASh5N0R2X40fZ2yAHhb92Hw4RfnBShaje', '2022-02-15 14:33:39', '2022-04-16 23:46:03'),
(533, 'محمد', 'عبدالعزيز', '', 'الهملان', 'Mohammed', 'Abdulazizi', '', 'Alhmlan', '', '', 5, 'علوم حاسب', '1968-09-23', 1, 'malhamlan@gmail.com', NULL, '1064131731', NULL, '$2y$10$LIVXT/EEm4K4W12BfOOvuu7CeRrdW.lg9hTFWN2ocRKlDiEIMXlcG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LvN8T2j1MlT5kQURfoNJFaveGbJgYkX1XL2dXjqRabUCGBawVVsCpcaK4fA4', '2022-02-16 00:02:54', '2022-02-16 00:02:54'),
(534, 'آمنه', 'عبدالكريم ', '', 'الخليفه', 'Amnah', 'Abdulkareem', '', 'Al Khalifah', '', '', 5, 'تاريخ ', '1952-03-27', 1, 'amo123n@gmail.com', '0556669118', '1001641453', NULL, '$2y$10$ROXJT9XARSMV55cKjV/cD.lJ3SXbCluBNk.0.ow6dMPaAYPfJtTmS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'M3t9eDKvDu3z3dOj2m4IDz3KpEXuSnh71gWdXPFDJSKzr8RPf8DmkV6rEOQO', '2022-02-16 23:53:44', '2022-03-14 11:51:57'),
(535, 'نوره', 'محمد', '', 'البليهد', 'Norah', 'Mohammed', '', 'Alblaihed', '', '', 5, 'اداره وتخطيط تربوي', '1962-06-03', 1, 'mohad.n73@gmail.com', '0555246860', '1030688129', NULL, '$2y$10$lTd71Dr6jw5j7BUhr81Bc.vRBkktm34HpBeOiwLoW/biTN1rsE/Ri', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zCgtGOYwqS6sBCaM396SpJGoP7Y3wFtJYsdG1poNKdyXFjRCSxvQkCv73Z1o', '2022-02-18 11:31:59', '2022-06-28 09:55:12'),
(536, 'عبدالله ', 'محمد', '', 'السيف', 'Abdullah ', 'Mohammed ', '', 'Alsaif ', '', '', 5, 'أصول تربية', '1964-11-05', 1, 'Rwabee17@gmail.com', '0505214680', '1054491152', NULL, '$2y$10$ndnY6qI2a7qbiukJHNgjLeRKcfpCMaZ3R8L8GlIrkw7CjNpfD59vC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LQekT1cmJhDdMbtA0v89JoGkhxaHYPxHzJJrVPJ1VNmvqA983XuiioW1eFTd', '2022-02-18 14:28:16', '2022-02-18 14:28:16'),
(537, 'صالح', 'عبدالرحمن ', '', 'العبداللطيف', 'Saleh ', 'ABDULRAHMAN ', '', 'ALABDULLATIF ', '', '', 5, 'شريعه ', '1969-08-25', 1, 'shamr51@gmail.com', NULL, '1028162046', NULL, '$2y$10$SCyU6.8MzHUAL3ilj.RIH.fkdHodzaxvJWyuMXqEjI6EbRdKLwoQm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hAjTuNFOYCfv8UG2RhyeO3xWpfawcpMmNvjq8Dtfa3OlCmCdZ3iy9LH1UTLn', '2022-02-19 17:28:45', '2022-02-21 20:45:36'),
(538, 'حنان', 'عبدالرحمن', '', 'العبدالله', 'Hanan', 'Abdulrahman ', '', 'Alabdullah ', '', '', 5, 'تعليم خاص', '1965-10-25', 1, 'Hanan2610@icloud.com', '0533343454', '1009332592', NULL, '$2y$10$MynAqZ/f.k/mDMqcOHgFfuLVxHJxPUn14dz94orTmAoX2f3TO0yAK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CddEuAzEuwIJ74luSMgpu3robDcZ5lVzhq8huyTC6AcrqRK1bohaUOddurbH', '2022-02-19 19:00:44', '2022-02-19 19:00:44'),
(539, 'أحمد ', 'محمد', '', 'السحيم ', 'Ahmed', 'mahmmod', '', 'suhzim', '', '', 5, 'متوسطة ', '1001-03-01', 1, 'Abumoh296@gmail.com', '0000000000', '1036623070', NULL, '$2y$10$desA7UHrrvSwEiUYggJX6.fiGHicH3KmcJCJxN3QzF0xgfDo4XSYi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'zSdLPSrIN7tlCUtBfGHQFlIwD2mhnWLMvoO2AQkE5Gd80leFnPfM7LG6ByeX', '2022-02-20 18:02:17', '2022-02-20 18:18:35'),
(540, 'فهد ', 'عمر ', '', 'البلطان ', 'fAhAd', 'omar', '', 'albaltan', '', '', 5, 'عميد ', '1970-09-02', 1, 'faibaitan@hotmail.com', '0000000000', '1026338986', NULL, '$2y$10$lSwPI9kTIZUsBFiL8kgRU.SyiD5iKEJ0GomcmfKeD46UrzmgIFbQy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '5AXHZBZFffUMyU5RGunwJiOzwX49e6YO7P8sS8YtMjRBuw9MJSmEaSdNbCnF', '2022-02-20 18:17:29', '2022-02-20 21:29:58'),
(541, 'مشاعل', 'محمد', '', 'الشعلان', 'Mashaal', '', '', 'Al shaalan', '', '', 5, 'علم اجتماع', '1955-02-23', 1, 'mashaal.sh@hotmail.com', '0500586955', '1030564353', NULL, '$2y$10$HYj1n81plSqeRUmWafki5OdSco/WxZhViKEXWxE1Z.l8Ff5WYVDsG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uWociASjBWR0LXyINJPSNSouIFXEDjh3aVHJoSKE6eaSlzUyY9CE2DL3vphM', '2022-02-20 18:18:48', '2022-02-20 18:23:12'),
(542, 'هدى ', 'حسن', '', 'القحطاني ', 'hhuda', 'hassan', '', 'alkhatnai', '', '', 5, 'علم اجتماع ', '1964-11-05', 1, 'hsh290@hotmail.com', '0000000000', '1044461554', NULL, '$2y$10$adc4FcyhkZvQmjQm25831.u21firY.EHMTumWa1US1n8QqEGaUYSe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'i5HCf6Sqpeqk3S8YmbsZ9gBggZJCSq8mIoroU5DfrF284Ouen7RxzUVO6QcT', '2022-02-21 20:56:45', '2022-02-21 20:58:36'),
(543, 'محمد', 'سالم ', '', 'الشهري ', 'moahmmed', 'salem', '', 'alshahri', '', '', 5, 'ادبي ', '1960-08-25', 1, 'mohammed_4313@icioud.com', '0000000000', '1038689038', NULL, '$2y$10$d5S6E91Ihnn1LegdQxTCZuLBp0OEnH.OvzvTxtcD7uPC.pxk6lAcK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'TkffbbSs4GJmTdWpJj4tNwN2nmcwEkb0Jw1Iwd3jLoZ5Asu0sFxtRYnW9FeZ', '2022-02-21 21:42:29', '2022-02-21 21:42:54'),
(544, 'مقبل', 'كميهان', '', 'الدهمشي', 'Moqbel', 'Kumehan', '', 'Aldahmashi', '', '', 5, 'ادارة اعمال', '1964-11-05', 1, 'Moqbelk@gmail.com', '0505280676', '1030374407', NULL, '$2y$10$SCNTHz4bPDCFkgpHI/1iF.BqMfIMmUXKS4JwGSBuYngaCkp1Oh50a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'X17YMJ5aoxIsKf7FSghX3wLvVjMg2bt1MKJQFl5n0c3yLUjsGdiThQeiNdQ8', '2022-02-23 12:56:15', '2022-08-11 12:40:37'),
(545, 'جابر', 'عمير ', '', 'الزهراني ', 'jaber', 'omair', '', 'ALZHRANI', '', '', 5, 'عام', '1967-10-04', 1, '999kkyy@gmail.com', '0000000000', '1011680780', NULL, '$2y$10$fXg29/G66B1ZOFL1BoHy2unujEJdG0IIIyUIDJBKsIxQikAOdqTRG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Os0FeA48JmxbbQRmJH8AsQdnlAnfPNGcJSyOVB3cMvwQyZAt51Ob9koTaxyZ', '2022-02-26 21:54:08', '2022-02-26 22:04:19'),
(546, 'علي', 'محسن', '', 'أبو العيد ', 'Ali', 'mohsen', '', 'abualeid', '', '', 5, 'عام', '1967-10-04', 1, 'ali00abualeid@gmil.com', '0000000000', '1031035981', NULL, '$2y$10$zlziUDqBH/I/8eSnsaeNI.eh4gcXo8g.gyCbiuyGvfooWCc2ueUie', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'k6CKZQWoZHyxGvAGiFltlztf0Rg136JmWnNJvSc39ldnJ7S6UPFquhrdOGA8', '2022-02-26 22:01:56', '2022-02-26 22:03:58'),
(547, 'منيرة', 'علي', '', 'الصويان', 'Monerah', 'Ali', '', 'Alsywean', '', '', 5, 'لغة عربية', '1952-03-27', 1, 'Monerah112@gmail.com', '0542480440', '1009397553', NULL, '$2y$10$c8t0pRCDUStBitG364uSQOhrhTx.oC3Uwwf/dI5i3Lz.Y18uTH0DK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'at22rc5Kt3IfuPfsYKMLno5zKTomefNsbkL4CflpQezphzK5fXaKoDz9HIaF', '2022-03-05 16:18:21', '2022-03-10 16:23:16'),
(548, 'عبدالعزيز', 'عبدالمحسن', '', 'النحيط', 'abdulaziz', 'abdulmuhsen', '', 'alnuhait', '', '', 5, 'لغة عربية ', '1967-06-19', 1, 'aziz.nn106@gmail.com', '0542222106', '1033083641', NULL, '$2y$10$Z56ia78DFAiEAri5KfSMPuE2NjyJm1R1ypM6E89IhPNwW0l/C0GFS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'SpbqQR82mKRfybCNjng5Hek0yEbL8tLhKrw4kFwReNqnlWn4NGZJTO1acdod', '2022-03-05 21:23:23', '2022-06-26 11:13:39'),
(549, 'علي ', 'سليمان ', '', 'الجمحان ', 'ali', 'suliman', '', 'algmhan', '', '', 5, 'اداري ', '1962-11-28', 1, 'alimhan@hotmail.com', '0595466130', '1018230423', NULL, '$2y$10$ugZUHZsYfPquiCIabY0SX.N2ro0rmbEPvtt/tYmcuGcZg.Y6/57cq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Od4UIOGjfZUsMdM7NKqnmCnCFzxuLYRpOS1vwfpgYCwijjevZW8Z09xuhOu2', '2022-03-10 17:19:03', '2022-03-10 18:04:28'),
(550, 'عبد الرحمن ', 'سعد ', '', 'الجريسي ', 'abdulrahman', 'saad', '', 'aljereisy', '', '', 5, 'علمي ', '1001-03-01', 1, 'asaj34@gmail.com', '0000000000', '1003447735', NULL, '$2y$10$4cR9WAfuMFdjYwaOS/HvTuktElpcZKcmQZ1gAhdNxCi3s1KUYq4Se', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qjV65wtYORTnCyU7pfhRqJEkQsAu9CCuwGNj1oKLcy1ZraYhUDyxsKyChC1T', '2022-03-10 17:40:45', '2022-03-10 18:04:45'),
(551, 'إبراهيم ', 'يحي', '', 'الأمير', 'abrahim', 'yahy', '', 'alameer', '', '', 5, 'علمي ', '1963-11-17', 1, 'lbrahim.alameer@gmail.com', '0000000000', '1014977738', NULL, '$2y$10$qkF/Uv2u51wY8Q/Yqb0ww.ZoGo8AT0YIgOnOCQDv/zneFbAcDq62O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZA46rYtbfVUQl4ubdOqcMZg15FSAfs2gj9S7dAUm8crPzjf79NKF9Xf3b1BI', '2022-03-10 17:48:27', '2022-03-10 18:04:59');
INSERT INTO `beneficiaries` (`id`, `first_name_ar`, `second_name_ar`, `third_name_ar`, `fourth_name_ar`, `first_name_en`, `second_name_en`, `third_name_en`, `fourth_name_en`, `employer`, `retirement_year`, `qualification_id`, `specialization`, `date_of_birth`, `membership_type_id`, `email`, `phone_number`, `record`, `email_verified_at`, `password`, `role_name`, `Status`, `paid`, `start_date`, `end_date`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(552, 'صعدي', 'محمد ', '', 'علامي ', 'saadi', 'mohamed', '', 'alami', '', '', 5, 'علمي ', '1954-03-06', 1, 's0505230573@jmail.com', '0000000000', '1002291664', NULL, '$2y$10$74mbWZLf4tqkEsEtRawtAeMz/SDfPlTv/8ExaD/OlDI6A8L7c8Xae', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9Yr9o1leTrkD2f9YRQTSC8AElcQxghQUaIhkjOWycU2moMq9ShRTciuLgnaR', '2022-03-10 18:03:23', '2022-03-10 18:05:15'),
(553, 'جوهره', 'حسن', '', 'المديني', 'jwharh', 'Hsan', '', 'Almudainey', '', '', 5, 'عربي', '0000-01-01', 1, 'jojo0505@dot.com', '0505852413', '1067878247', NULL, '$2y$10$d/J7HfwyrOUpsDcLkqPFvO21X37VazOPncWh.ra9L4aT9lW5bGLtm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'g1r3jylrHiUQ853St55cRsK2KLIy6YDQZesBB3PQcVmNs9gL3WOZckHggjzn', '2022-03-10 18:29:07', '2022-03-10 21:05:21'),
(555, 'حمده', 'علي ', '', 'الغامدي ', 'hhammda', 'ali', '', 'alghamdi', '', '', 5, 'ادبي ', '1967-10-04', 1, 'H.alghambi07@gmail.com', '0000000000', '1010569307', NULL, '$2y$10$WDaQhgq4LM.nzBeqt5NCDOaJuGFivOyJDfLCMWAX2T8JlzH2zJFNC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'm2EIpaylk1cGKYEHsf1wUo1qf8WuhoFetvP59FIA5yIDShBRX87mlGptvbWY', '2022-03-14 12:16:43', '2022-03-14 12:17:13'),
(556, 'ابراهيم', 'عبدالله', '', 'التميمي', 'Ibrahim', 'Abdullah', '', 'Altamimi', '', '', 5, 'علوم', '1946-05-31', 1, 'altamimi.9@hotmail.com', '0540399996', '1003715099', NULL, '$2y$10$yT/WAYTh.m6LZ73nWEzqNu64DegNWeaeW/CU/bMIvVnuBipYN0hYO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'GCmcjBRfMBwyIM6gW6RgJiSq8ZM6aD90qOR53vJwB3D3YYLHpuFRfSReW3cp', '2022-03-14 13:55:17', '2022-03-17 11:59:07'),
(557, 'محسن', 'أحمد', '', 'الحكمي', 'Mohsen', 'Ahmed', '', 'Alhakami', '', '', 5, 'علوم طبيعية ', '1960-10-25', 1, 'Nalhakami@hotmail.com', '0505182984', '1000876498', NULL, '$2y$10$vhKiUVR.0hAQ8RBHWcOjguio7.sd8FBfnlBjWPW0eR5eNuApVL3lG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Fr6wWjAtyK7Oso8NTKdRtQDZJ64iHbBgYC97BApx21As4hPH5CCvaAylhh3P', '2022-03-14 23:21:24', '2022-06-23 15:06:14'),
(558, 'جميل ', 'عبدالله', '', 'العمير ', 'gameel', 'Abdullah', '', 'alomar', '', '', 5, 'علمي', '1957-02-01', 1, 'abdul@dmain.hotmal.com', '0000000000', '1010926869', NULL, '$2y$10$7KSdqvm/ri4Hz5CuDkApM.piogYcvXYqeKUvHZU1IRg57RvSbXy1W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'spDPfruwI65YS0skMWE6XlX1CiNknABvYJEMYq9d5Bj2thb83lfEhp5pIYjG', '2022-03-15 14:26:05', '2022-03-15 14:26:05'),
(559, 'منيرة ', 'محمد ', '', 'الكليبي ', 'monerh', 'mohamed', '', 'alkulaybi', '', '', 5, 'ادبي ', '1377-07-01', 1, 'monerh54@hotmail.com', '0000000000', '1035812500', NULL, '$2y$10$5ruvuXcmCXTuwFts4m.qaOEq1HCtOif67pt2r03NBbzkjjvgj91JC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '4hLx5Af4g2oAM6S3Ry9qnAC1cC1S2m8qKMQM6xytOhu21wl9j36pefKH2fwQ', '2022-03-17 11:56:32', '2022-03-17 13:37:52'),
(560, 'سفره ', 'عبدالله', '', 'البقمي ', 'sofre', 'Abdullah', '', 'al bgmay', '', '', 5, 'عام', '1980-02-15', 1, 'sfrah42@gmail.com', '0000000000', '1051757332', NULL, '$2y$10$9.ED14fqlQHb2E5wIyfXCOnaFyTL/6sjQmKqdy3FVMOpQDo6jjreq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eK1qs8JhoQThipNj4IlAtYXkDCBYcNvbmaV0AbSGq2V31J3786KYNZHomEtd', '2022-03-20 11:31:34', '2022-03-20 11:41:57'),
(561, 'نورة ', 'ابراهيم', '', 'الزهراني ', 'norah', 'ibrahim', '', 'alzahrani', '', '', 5, 'ادبي', '1971-03-02', 1, 'nora1391za@gmail.com', '0000000000', '1058894070', NULL, '$2y$10$Z6Rdj2TV5d2pFMIuSWGaZeXWgNuLZ02Tsr8j7buWmMycPSd5ZKp6y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uDv7074Cx558EwSMfhHkl061kyZ0C0PhwXqlSN7SOIb1jeMwR7T4Oc6LJLyf', '2022-03-20 11:40:33', '2022-03-21 12:52:02'),
(562, 'عبد الله', 'سعيد ', '', 'القحطاني ', 'abduiiah', 'saeed', '', 'algahtani', '', '', 5, 'مجال كهرباء', '1956-02-13', 1, 'abo.s3d7979@gmail.com', '0000000000', '1013158926', NULL, '$2y$10$GZbDtGOgJBUPZc2AxtjrqufjWui8LWH3REIjccj4mvs9zBjS8sOUy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xiBWScwQO2KlHR9Pj2cLKDn8TL6oR5UiUw7fQELTBq2073GWr1VciTKI8RjJ', '2022-03-21 14:00:30', '2022-03-21 14:02:07'),
(563, 'ناصر', 'علي', '', 'الدريس', 'NASSER', 'Ali', '', 'Aldrees', '', '', 5, 'اعلام', '1960-12-19', 1, 'mnaldares@gmail.com', '0531177177', '1033131333', NULL, '$2y$10$LAw2rv0hEWW8PQa1FdkHp.vWBPA8fe1sN9ziHwgTtGCzBwx5z0jmO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'q4ylB90geshvrpnVIsiSeNRfgNqy2zTHnsse3sXOv9zzLnODtPZkPmTWKnKF', '2022-03-22 17:54:39', '2022-03-27 12:38:52'),
(564, 'سالم', 'عبد الله', '', 'الحارثي', 'Salem', 'Aballah', '', 'Alharthy', '', '', 5, 'رجل امن ', '1972-02-17', 1, 'mnair13003@gmail.com', '0557569556', '1004932800', NULL, '$2y$10$/PVBwJgQuCjoGX2xHtH/ie4VUg.bxTN9JQy6v95LWgUmGncNtqdMi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qdbyxvdWlhPM5vr0GyougxlyfdXVO2AsbBlK1rHRWCpqIovkO6GEs0UqbXW4', '2022-03-23 22:52:18', '2022-03-23 22:52:18'),
(565, 'عيد ', 'زايع', '', 'العنزي ', 'eid', 'zayg', '', 'alanze', '', '', 5, 'عام', '1963-11-17', 1, 'e3i2d1@gmail.com', '0000000000', '1040678516', NULL, '$2y$10$sFX./fvnPI/Xx6EZEva4F.oaOSBOskbKKhjnMO9lYk/wF0V/MQyqe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cEWCZQZMBeGFasC8Ms9PQXLfLtDklHkQG8jm2xg8ytXwqk4RciboXMM7VyAJ', '2022-03-27 14:06:24', '2022-03-27 14:07:58'),
(566, 'نورة ', 'صالح ', '', 'الشويعي ', 'norah', 'Saleh', '', 'alhway', '', '', 5, 'عام', '1967-10-04', 1, 'm.n.bohrt@gmail.com', '0000000000', '1026239929', NULL, '$2y$10$jhioaeEHCOGzx0Z7gCSo8e.B56AETs8b7sAtyx4Zd.qE2OHjw4Qby', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wZL67KaIpJhIMHhOy9tXCiPysqdbN4Y5N2ZaK3jqMPcpnbOvqG08RIRd5AP4', '2022-03-27 14:46:46', '2022-03-27 14:48:01'),
(567, 'خالد', 'علي', '', 'العنزي', 'khalid', 'Ali', '', 'Alanazi ', '', '', 5, 'فني إصابات ', '1959-12-31', 1, 'Khalid_Ali@outlook.com', '0000000000', '1040044859', NULL, '$2y$10$nq9EsQiiHYJRxjRbjCfgVOJYvSjazRDZb6jDO0GJ6JEWZMhI/w1ia', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Qrk5cPcFPe7Vs38LpJGGSmQ37H2PIhHXDF6SW44vYfChRR1gT3Q2ZpoxWs2d', '2022-03-27 22:06:58', '2022-03-27 22:06:58'),
(568, 'علي', 'سعيد', '', 'الغامدي', 'ali', 'saeed', '', 'alghamdi', '', '', 5, 'الاتصالات والامن', '1972-08-10', 1, 'xax.2030@gmail.com', '0532506063', '1004745749', NULL, '$2y$10$zwW9LTIiPL/vaRaWVOz61eQweHDBSKUZeRhXeed2ur1ox4eAdDlAq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'o6wyq08E7N8KneQiF4LmH28Nst7AeYYtDbMzxt6POSFXEt75ruGa4bxqRtn5', '2022-03-29 18:10:20', '2022-06-27 11:53:33'),
(569, 'سعد', 'عبدالرحمن', '', 'الزنيتان', 'saad', 'a', '', 'alzenaitan', '', '', 5, 'انظمة معلومات حاسب الي', '1956-01-01', 1, 'zenaitan55@gmail.com', NULL, '1006716748', NULL, '$2y$10$rGhQtXplbhfr.c6p9Y9VOOgvMBUC8O0.x694yPkuUPSwZ/hL7WedO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PccMw5EdYIt8gzl4bfIftRAzIHnUv2ZExcep23TZU4D33kRWGUrafFheLi4F', '2022-03-31 00:46:37', '2022-03-31 00:46:37'),
(570, 'حسن', 'عبدالمحسن', '', 'الشاطري', 'Hassan', 'Abd almohadsan', '', 'Alhstri', '', '', 5, 'علمي', '1993-04-26', 1, 'ahsn68761@gmail.com', '0551698074', '1076668498', NULL, '$2y$10$8w9E6xd4YitCl94aYRuFTO4HmCG4ftRoBw6jQnMcUbFlkOCKHCTb.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'i02Ie5ST7LC7V5GBpSVDx0Ey3gme4PLQflNRapysSPSkFU0MzHmcXYvm7suZ', '2022-04-10 18:10:22', '2022-04-10 18:10:22'),
(571, 'عبد الله ', 'محمد', '', 'الشايع ', 'abdallah', 'mahmmod', '', 'alshaya', '', '', 5, 'قطاع العسكري ', '1945-06-11', 1, 'amsh05@gmail.com', '0000000000', '1010130670', NULL, '$2y$10$Eqwz/xvz0VkvjkwPyti2Vull4FIIXNOAkTgdWB.Z1OakQyibZZQJe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6RKuCpoxpO5VysfpD2ugFVuy6gWOGvnwoMrctFatI3bJFyvKCbcbAyjpkc0X', '2022-04-17 13:27:59', '2022-04-17 14:19:00'),
(572, 'لطيفة ', 'علي ', '', 'الجبرين', 'Latifah', 'Ali', '', 'Aljebreen ', '', '', 5, 'ادبي', '1961-12-09', 1, 'dr.ameer1@hotmail.com', '0555217423', '1068011178', NULL, '$2y$10$xfA9OBABUpE6khwuwOcMvOWEMMgY16XS8EzQUGDD2sYkHywHMcfVq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Y3R1Lw32Ngy8L79hZoU5rfKGmga0oaOO9F5BOSAo841MysBnNEmRUK19ztR2', '2022-04-19 16:30:52', '2022-04-24 14:32:33'),
(573, 'براك ', 'عبد المحسن ', '', 'الحميد ', 'barrak', 'abdmohsn', '', 'alhumid', '', '', 5, 'عام ', '1959-12-03', 1, 'brak66@hotmail.com', '0000000000', '1005033517', NULL, '$2y$10$QJA/2ZzzU8aJpDcqaJIn.OA/HC7ZyGrFm1Sbb4XNPBUNHVo2oNXMS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qzH76Y9hfrGH5N2ZwVCaWMO3eEf2UiXmPaXF2pNnIwWVAcaQxGRF9W0v0wM8', '2022-04-24 14:47:17', '2022-04-24 14:47:54'),
(574, 'عبدالله', 'محمد', '', 'الدوسري', 'Abdullah', 'Mohammad', '', 'Aldawsari', '', '', 5, 'علاقات عامة', '1978-03-13', 1, '3thrat@gmail.com', NULL, '1027581261', NULL, '$2y$10$tM9/Vh6MAWR5QyNyGrIDROCWA16zzLBJLNATOjxZp0vp.5FfKuFgu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dByKxqPSbfQhz2BH8T5p6EOt6irb1uc3JkeA6FNR6Y8B5EtPW4137FoUXTDE', '2022-04-24 16:40:33', '2022-04-24 16:40:33'),
(575, 'نهاد ', 'عبدالعزيز', '', 'الحميد ', 'nyhaad', 'Abdulaiziz', '', 'alhumid', '', '', 5, 'خياطة عامة ', '1958-02-02', 1, 'nehad58abd@gmail.com', '0000000000', '1005033525', NULL, '$2y$10$dX/i9JqvldAz/VWvzvDbIeSob2NP2HzKAEap/KVvgE.VNXcXR.4Zy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cMK4t0JxJZj17U55WefBeM8CgTduEFl4C2eBo3CDZ25RhQJgDSKU5YP2VsZb', '2022-04-25 13:05:34', '2022-04-25 13:06:06'),
(576, 'هنا ', 'حسن ', '', 'الزهراني ', 'hanaa', 'hasan', '', 'alzhrani', '', '', 5, 'ادبي ', '1959-12-31', 1, 'hanaa-alzahrani@hotmail.com', '0000000000', '1002574570', NULL, '$2y$10$riAz/xJsIvYDb8Q4rBzs4.1kIVZ6BxwJ3DjJIx5eBScNASCLeVjFW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'KX9L3220EmA082jqLGlbNpxjGGwIA8JhTagatUWNABmazZdKDodePQPEL6gd', '2022-05-08 13:10:12', '2022-05-08 13:10:45'),
(577, 'سعود ', 'ابراهيم', '', 'الشعلان', 'Saud', 'Ibrahim', '', 'Alshalan', '', '', 5, 'هندسة زراعية ', '1959-01-11', 1, 'ghaida.alshalan@gmail.com', '0501110088', '1029895057', NULL, '$2y$10$oXmChzxk7IAoAkLLM00wmOBiWkA6UhoCfkwGuFPFEL1tQXRwEQ/4e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'RGteAoxhoRSrfjza3NsaH74vB5o32pIHqBcA6uQnzyNzTSQzHYakRJJX7zYg', '2022-05-08 23:26:12', '2022-06-28 09:56:08'),
(578, 'جمعان ', 'عبيد ', '', 'سعد ', 'JEMAN', 'S ALH', '', 'MSAL', '', '', 5, 'أدبى', '1001-03-01', 1, 'shannjjdoo@gmail.com', '0565421181', '1038437115', NULL, '$2y$10$1rDQ3yAsgyrSQsV1Z3fvfOQHb.gUNV65.jXeYG7kPKz.StQM/0Nza', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mlvOFlkS5Vt8Wx9WPx3tg5UvC22C5mJAgFo5qKCjODAB506j5KfRnD5azFsQ', '2022-05-09 04:13:31', '2022-05-09 04:13:31'),
(579, 'هيا ', 'ناصر ', '', 'العنبر ', 'haya', 'Nasser ', '', 'alanbar', '', '', 5, 'عربي', '1956-04-12', 1, 'haya.n.alanbar@gmail.com', '0504447977', '1045577952', NULL, '$2y$10$oGnUu46VVkk.guRBUFTHrOeV/Yzm6uBzswQg0iuS.awBfw4VP337S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'VNBlTMSaWtW2nq1dQ4AAlqEts0w4ETYQqswTcPcySDCsHkbjJdg4olYrgAaE', '2022-05-11 09:00:24', '2022-06-27 12:03:05'),
(580, 'محمد', 'سعيد', '', 'الغامدي', 'MOHAMMED ', 'SAEED', '', 'ALGHAMDI ', '', '', 5, 'اتصالات', '1959-01-11', 1, 'malghamdi111@gmail.com', '0544136400', '1000719011', NULL, '$2y$10$/.rETObG0bReZfmvQb.nXu/Y.xQmVcma/.ibqTTmV9OMwGIeLxx9.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6htbo7lFsKbnmwfm85Aar0NrSi8zEoHSbim0sDntVnwQqspDL07dKPTJTFfD', '2022-05-21 13:04:21', '2022-05-21 13:04:21'),
(581, 'احمد ', 'محمد ', '', 'بامسعود ', 'Ahmed', 'Mohmeed', '', 'Bamsoud', '', '', 5, 'ادبي', '1965-01-01', 1, 'samaris@mail.com', '0554290007', '1017340660', NULL, '$2y$10$PljP2wEQ5shxghQkbzSKQOHEAAmuUIVL/R5K/.YljCKeFbvnx7YJO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ibSNP6BkNVtgR1ohgtuXH1oPfBNUjosC7ej1HdS0NDDLVRpFTdTsy9areuu6', '2022-05-21 13:56:46', '2022-05-23 03:52:02'),
(582, 'علي ', 'سعد', '', 'القحطاني ', 'ali', 'saad', '', 'al gahtani', '', '', 5, 'ادبي ', '1957-02-01', 1, 'aallyy179@icoud.com', '0000000000', '1033171479', NULL, '$2y$10$BRaa.Ec0AbXyrv2RUcFqh.WFEcRU31xhv8cD.g729xQuoEohund/W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fADJSj8K0DlUgGPyT9BN0TOX4A7CA0W0ncJCrTLcCDk8OllMn8lC9JGU8G23', '2022-05-22 10:27:54', '2022-05-23 03:52:14'),
(583, 'عبد المانع ', 'حسن ', '', 'الفهادي ', 'Abdul almana', 'husin', '', 'Alfand', '', '', 5, 'ادبي ', '1946-12-01', 1, 'man3hsn@gmil.com', '0000000000', '1069711388', NULL, '$2y$10$K7/.j/3K3X7AsyhDkbHwv.rBxI17sZ5klJILF7NWyBnKoTCCbeuX.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'tNn5xVemFPoVTfxbZRxT5hmMZAqSFRCfYpPctpk75Tm1uqD7jRyFADvqoDYa', '2022-05-24 13:13:29', '2022-05-24 14:04:56'),
(584, 'زيد ', 'علي ', '', 'التميمي ', 'Lzied', 'Ali', '', 'Al tmimi', '', '', 5, 'ادبي ', '1963-11-17', 1, 'ail.zea506@mgil.com', '0000000000', '1052468939', NULL, '$2y$10$8ISH2CuFPEJ3q63m1ldyaeN83UB1XWwOIDMdd.e1nnV6XSls9KpH6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'R1lLrIPFDmImhAy21q3WCkIkDOPJSfR8sKz8MM3tipHqqOyiZ7vraHuFEGh8', '2022-05-24 13:24:48', '2022-05-24 14:04:37'),
(585, 'حسين ', 'ناصر ', '', 'الحسينان ', 'Hussin', 'Hassn', '', 'Al ussinan', '', '', 5, 'علمي ', '0000-01-01', 1, 'hi-61@hotmail.com', '0000000000', '1030363111', NULL, '$2y$10$AecmAmxVkMiLO/QorCaDu.osD15Ok.Qsgm5gVH.MKRh6KmXHVP6XC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fYHs97IQRxcuVBCQLH60Ijny6o7o87YX5bcuZTafJbnXXxahFfxi9Lh2ONUz', '2022-05-24 13:53:22', '2022-05-24 14:04:18'),
(586, 'خالد', 'عيد ', '', 'المالكي', 'Khalid ', 'Eid', '', 'Almalki', '', '', 5, 'تسويق ', '1984-03-06', 1, 'kvetuo50@gmail.com', '0501114154', '1005391030', NULL, '$2y$10$kPgqwXX3.ZRIUhFApMiEAewNfbdjL33v4mb0ncBrdwoJxBYgmLpHy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LMTe6jCnEh0VKSsxRe8NuUw3PB9zLOSCcdRn3oPOMNZbwysUn6sZy1B0Kuyx', '2022-05-31 13:40:04', '2022-05-31 13:40:04'),
(587, 'ساير', 'سعد', '', 'الحربي', 'Sayer', 'Saad', '', 'Alharbi', '', '', 5, 'برمجيات', '1970-09-02', 1, 'amjadest11@hotmail.com', NULL, '1034665354', NULL, '$2y$10$ru2C1a7RN5x4avlou2L.gemZfFmqq3fGxXS3X.sc3goYTKnRoNvke', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'WLPvPMm6Man6547PjIVXSDOlqyt4hee33vBPcZsQQnbkDjGVsad4Fsg3jHNn', '2022-05-31 19:41:08', '2022-06-23 14:13:04'),
(588, 'نوف ', 'عبدالله ', '', 'الجلال ', 'Nouf', 'Abdallah', '', 'Aljallal', '', '', 5, 'أحياء ', '1979-02-22', 1, 'abnop604@gmail.com', '0555154348', '1043042843', NULL, '$2y$10$tZNlNnP1xoBQgG1ILsuxoOCue/7rKayXqYS6tEcgwT1Z3FZUoOa1e', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Bz0Bn3u1XtJD9wqSQqyZ7FLRWUUaE3dgr9upR0axy0OGJ4UEXJrmV6SzYSoS', '2022-06-03 02:42:19', '2022-06-03 02:42:19'),
(589, 'طلال', 'علي ', '', 'الغامدي', 'Talal', 'Ali', '', 'AL ghamdi', '', '', 5, 'مساحة أرضية', '1958-01-21', 1, 'local-72@hotmail.com', '0504423668', '1033977545', NULL, '$2y$10$Nb0ak/h6F7IcaghEVtDBLOtAXZkbF4g64OiK3Tghx04OgUojbMEeG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uIa9k6OKIVqE34MoDHD6TWISagdxoQtSVkDLfrLLWzE3Zcv1qkOCRPipjdJ1', '2022-06-03 21:54:34', '2022-06-03 21:54:34'),
(590, 'الجوهرة', 'عبدالله', '', 'الجلال', 'ALJOHARH', 'ABDALLAH', '', 'ALJALAAL', '', '', 5, 'علم أجتماع', '1955-02-23', 1, 'aljawharah12@jmal.come', '0505463103', '1008634832', NULL, '$2y$10$uhvFXUEareJAUY.yvhokNuff5r9jQZBiUWLVobSzqDXgG.9YBDV2q', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'JpkWW6iFfz0IJ1azFN3wB2GPTFUlEE2ORzl9N6OW30bLX0m7BWF3bYMKD9tl', '2022-06-04 19:49:32', '2022-06-05 16:14:14'),
(591, 'حسن', 'يحيى', '', 'جعفري', 'HASSAN', 'YAHYA', '', 'JAAFARI', '', '', 5, 'علمي', '1971-08-22', 1, 'has4sen1980@gmail.com', '0500998833', '1042181410', NULL, '$2y$10$h3BHjxBAPtJFkd0RRPbEje0mYIezsrhH4SbJWrniE.GXnSzp8s9J2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3nimjtCjt0I0vzrHMC6FxSaYUNPrPnwuUYSrSLroHBnYCJToe2pnEDlyV4N5', '2022-06-05 02:01:15', '2022-06-08 15:59:01'),
(592, 'جبران ', 'صالح ', '', 'الوادعي', 'guoprin', 'Saleh', '', 'Alwwdae', '', '', 5, 'ادارة ', '1971-08-22', 1, 'goprin11@gmail.com', NULL, '1039709165', NULL, '$2y$10$uEG53tefxImAjLIVJdRS6u/DtHTSkfMYkZYGIEYzT/JnhdxIUAnOK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'rcscVEacTj1TUF3OonggMw5P7Me9eNRQe8pYyPIop7vPeKtp55OBPh6ltA8x', '2022-06-05 03:52:26', '2022-06-05 03:52:26'),
(593, 'نخيلان ', 'هرماس', '', 'الشمري', 'NKHAILAN', 'HARMES', '', 'ALSHAMMARI', '', '', 5, 'موظف ', '1964-11-05', 1, 'aauuzbb300@gmail.com', '0550242128', '1028278594', NULL, '$2y$10$Xy/GcvAWlUmk71MmJmYXbuYTqoCNOOqr/QYKmO21Fxjhqnqm16.ie', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'v0diQFTura0A9j1g1Axg5Obaf8clfqF5E1rSMACgHio8bKbWFxTsnu2jR1ta', '2022-06-05 15:50:22', '2022-06-05 16:33:59'),
(594, 'عطية', 'علي', '', 'النجمي', 'Atiyyah', 'Ali', '', 'Alnajmy', '', '', 5, 'قيادة إدارية', '1955-02-23', 1, 'atiyyahalnajmy@gmail.com', '0555253330', '1022019978', NULL, '$2y$10$Yz/Rg1L0E8RhJ23JibyABu6tbz.DO9MaIEYmdvrCdfiUW0p1EQe4i', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Y10VswYs68kOWKnGr9YjSDEAxPIsCwPLVaNn1VUBdUTBPzLEwY27fsQqqKms', '2022-06-05 23:55:15', '2022-06-06 13:49:08'),
(595, 'علي', 'محمد ', '', 'العمري', 'Ali', 'Mohammed', '', 'Alamri', '', '', 5, 'علم نفس', '1957-02-01', 1, 'Alialamri1376@outlook.sa', '0545554552', '1043757473', NULL, '$2y$10$lwYzFi4/UKySnbYALTvh1.qoswoIbk1u3DFBdcGdIfxeL2/qvQGj6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dFwlX7Inhayc0DIlqz3gtGtmHrZWwxYnrkbpmczLSJGmnIAokoFYuM38WK1x', '2022-06-08 01:42:15', '2022-06-08 14:31:34'),
(596, 'محمد', 'عائض', '', 'القحطاني', 'MOHAMED', 'Ayed', '', 'AlQahtani', '', '', 5, 'آليات وبحث جنائي', '1963-11-17', 1, 'MOHAMMED9988@ICLOUD.COM', '0556499088', '1005556988', NULL, '$2y$10$SJPryoqDAiYD9YM41R16J.TYyge/iOap/hVJ/63D1MUUON1C8zdIq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'mYXFqcgJfCana16qdEYbTU0gBrk5uUGdZjrzbNo8qCcby0QvnCd3CuM1bQZj', '2022-06-08 15:35:33', '2022-06-08 15:37:51'),
(597, 'سعد', 'عبدالعزيز', '', 'السنيدي', '', '', '', '', '', '', 5, 'جغرافيا', '1938-08-26', 1, 'saasendi@gmail.com', '0568978997', '1014724635', NULL, '$2y$10$PzkLbkb3FcpWNPRWYPNJruu.MuzhJrzmS4aVLIgdopXV4YjVf6aRm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'SlGWynVMf2sNBaSsnFdBpYFJaVYy018sveJMs5wIAl54j3y5mOrNHCXK9wkG', '2022-06-08 15:52:48', '2022-06-08 15:53:30'),
(598, 'احمد', 'عبدالرحمن', '', 'السديري', 'Ahmed', 'ABDULRAHMAN ', '', 'Alsudariy', '', '', 5, 'سكرتاريا و اعمال مكتبية', '1974-08-05', 1, 'ahmed.alsudariy@gmail.com', NULL, '1019878584', NULL, '$2y$10$fjU9sItNvx0rVzaZj3ZrxO3KEOeC0nfE4iLqT8E/r/aSuID.ioEQ2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'GXfCQKfEL416br3M2cAtIk5CVYHebVMVGzuxSEmdcannY4iUiyVQAkwVTZq7', '2022-06-09 01:51:50', '2022-06-09 01:51:50'),
(599, 'احمد', 'محمد', '', 'الحيزاء', 'Ahmed', 'Mohmmed', '', 'Alhiza', '', '', 5, '.', '1964-11-05', 1, 'Alhiza@hotmail.com', '0554011187', '1002845707', NULL, '$2y$10$6wmtpIW1z7UFedKwcGhFrObEoCDYsorKoI/lfV12QZBsOV.uUia8S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2dwQ3HxoAq4t9qK126NUkFdfbAU1E8Q3CPOlnuJdRij0ByGSlF19qcBNdcsV', '2022-06-12 17:48:47', '2022-08-29 16:20:31'),
(600, 'محمد', 'احمد', '', 'الغامدي', 'Mohammed', 'Ahmed', '', 'Alghamdi', '', '', 5, 'تربية بدنية', '1966-10-15', 1, 'mar2044@hotmail.com', '0114853426', '1014041949', NULL, '$2y$10$TcxYNjLu0aH/IUojnxdJLeqGXkfJjsKYCwh3kODhAJNQYhIpDdyte', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cuk626V5PJQwQh7bI4h8DrQeqB5XgejYLbljM3jA5MuGhVGXNwbc1LyzZAPE', '2022-06-13 00:31:18', '2022-06-13 00:31:18'),
(601, 'فهد', 'عبدالرحمن ', '', 'البريدي', 'Fahad', 'Abdulrahman', '', 'Albraidi', '', '', 5, 'علم نفس ', '1954-03-06', 1, 'f_albraidi@hotmail.com', '0565659393', '1001513819', NULL, '$2y$10$LSUkI8pWSXgabgRqL0lHE.KjBVqlLow7oIfEsdGLXRTvXxXdht0JC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'sVG83kZt1MgM0KJeKJvekcRNUsUQUBTJnyusQs0JPgqOO6VHBhaw2pELbPNr', '2022-06-13 11:10:16', '2022-06-13 15:29:11'),
(602, 'حسين', 'علي', '', 'ال عبية ', 'hussein', 'ali', '', 'al obayah', '', '', 5, 'اعمال البنوك وتمويل المشاريع', '1973-07-30', 1, 'husseinoun2022@gmail.com', NULL, '1024580282', NULL, '$2y$10$NDr8OakkzKBdDlFTdjW83./a//3u4AmtlCUFTF9CvsJTbAQ6eCyn.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'bsXrRNEGZo70FqGePBKzhSrN3VpsU4qxXGihmqR2LWh029WLRHdMzImn643g', '2022-06-13 17:04:14', '2022-06-26 10:42:58'),
(603, 'شريفه ', 'علي', '', 'الزهراني ', 'Sharefah', 'Ali', '', 'Alzahrani ', '', '', 5, 'عام ', '1961-12-09', 1, 'sharefah2010@gmail.com', NULL, '1004698336', NULL, '$2y$10$iNl3XBp3eQ5ezvkd4WNV4uluB3UPCR1KJ1b8KI4BINNfA2bqdVrUS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'UmHSqyMifdbmhbsMOOLCgiSJxNKExBjEh9usmZL9cxwT3TSJQlBKgufDh3Hl', '2022-06-17 20:09:31', '2022-06-23 13:41:39'),
(604, 'محمد', 'عودة', '', 'العنزي', 'Mohammad', 'Aodah', '', 'Alanazi', '', '', 5, 'فني مساحه', '1964-01-19', 1, 'abobander54@hotmail.com', '0503123980', '1001204815', NULL, '$2y$10$W1tX3xeORsqtqJ0.Kprt4OZXAUWTZ0HP8WGp01PUwqGk1AMWZg8VG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dmLLseS1co3snf8T5lvP7VwZyrUclj1eVoA96PxkXfGsiOeBhRwUuXWPN0O8', '2022-06-19 12:42:26', '2022-06-27 10:50:12'),
(605, 'لولوه', 'إبراهيم ', '', 'الشريم', 'luluah', 'abrahum', '', 'al shurayim', '', '', 5, 'علمي ', '2022-06-26', 1, 'lo9484@gmail.com', '0000000000', '1018156370', NULL, '$2y$10$OVZ/briuk69A3OmBbPCR0.b.sM1/VgP3DBe.TNVOQMxxrPl70JNrO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'U0b8KgaZrHY0ZWF70P2CStbEUFCiyHJdvqKa4xlWzoaFwkFTYEsSEJ7KuYFH', '2022-06-20 13:51:03', '2022-06-21 13:02:14'),
(606, 'عبد اللطيف ', 'صالح ', '', 'الجاسر ', 'abdullatif', 'saleh', '', 'AL jasser', '', '', 5, 'علمي ', '1962-11-28', 1, 'Awsa2002@hotmail.com', '0000000000', '1001536661', NULL, '$2y$10$I3ck39jUTe8W6SuOJHrxHuBBbXILoFtr8KEX.oNURjboVzCq5VgSa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2D7m9gcz13l0Jl8rDRD1faJwBzQ1oQUyoEK6SQNmLE99JY98sQ7RyKQ7nog8', '2022-06-20 14:24:00', '2022-06-23 12:57:15'),
(607, 'حصه', 'صالح', '', 'الطاسان', 'Hussah', 'Saleh', '', 'Al-tassan', '', '', 5, 'لغه عربيه', '1962-11-28', 1, 'lana.s.suw@gmail.com', '0500993938', '1045289483', NULL, '$2y$10$jT3/q6uQbDezVta9j14KtuCmqBsApbYaPfd6mlopPSvWyr4MRpJ9G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gILD1boYlL5GefGZrWydeYWkpDP39n5O0eWrPSyOcN1SRDWR5vnurxL83HUk', '2022-06-22 17:44:04', '2022-06-23 13:21:38'),
(608, 'سلطان ', 'نادر ', '', 'العجمى', 'SLTN', 'NIDR', '', 'HMD', '', '', 5, 'ادبى وعلوم شريعه', '1980-03-25', 1, 'ALJMISLTN2030@gmail.com', '0544626408', '1021733629', NULL, '$2y$10$A39gGSo8FmH4IUPQNJvqUeiIWEO6bONRr6iIKC1Km2wKFr4UIwH4G', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'qhAF7qLjfnyOQ00O0FCZAXDF9OlTAo3mn9fjEZdY0kHmCEzh9otCGE5Gr5kG', '2022-06-23 01:22:56', '2022-07-03 12:01:07'),
(609, 'عبد  الله ', 'عبد الرحمن ', '', 'الجلال ', 'abdullah', 'Abdulrahman', '', 'allal', '', '', 5, 'أدبي ', '1963-11-17', 1, 'jalaa0c@gmail.com', '0000000000', '1001358025', NULL, '$2y$10$I/SgMN4XzuvjuGSBoKJE1OqrrHTLdzv8Nq0p/bVsSAW.bS63W2r96', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uyG3FV1btt9Kz65daIBLv3iC5NfafrRClzXbGXfuGFVRy8jNJrPfbaHtuLc2', '2022-06-23 12:29:05', '2022-06-23 12:29:52'),
(610, 'عبدالله ', 'رمثان ', '', 'الحربي ', ' abdullah', 'Ramtan', '', 'Alharbi ', '', '', 5, 'عام', '1966-10-15', 1, 'harbii55544@gmail.com', '0535505024', '1012112262', NULL, '$2y$10$2.9BhbJVV.tt6MA99FcvmedKCFwuN7w4zaHmWeF1NhNUSKOado1yC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'dJ7ihlCJcNGj8Y1XdVprfXvkGtQAETtmvlNxUJWBP086uAgRlxLqua4cocFX', '2022-06-25 11:45:04', '2022-07-04 19:28:09'),
(611, 'عبدالله', 'ابراهيم', '', 'التميمي', 'abdullah ', 'Ibrahim', '', 'Altamimi', '', '', 5, 'لغة عربية', '1966-10-15', 1, 'altmimiabdullah@gmail.com', '0566537074', '1012093512', NULL, '$2y$10$3HovfNgc1Po5S.hoV/O2P.G9Duwv1EL9taxq6a0c5o7ADluJFD/.6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'LNNLtBZJq4wmUeahxUd2JVWplyOCQNam8TrvWWL2RlNCggnmPJxH0hIhq2Fg', '2022-06-25 23:34:23', '2022-07-03 11:51:39'),
(612, 'صالح ', 'سعيد ', '', 'القحطاني ', 'saleh', 'saad', '', 'al gahtani', '', '', 5, 'علمي ', '1970-07-18', 1, 'gx7939x@icloud.com', '0000000000', '1043219268', NULL, '$2y$10$dC3g8iD8SQCPLyHBziU0..Ht0e.Kr5r3apSgYp3b9Ic9qpDU7Hx1C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'QbrsLq8B66wP7EhQmHocjcf5F5jAz8juKxygenjP3cu6aQQ4MnB8hRUCbE37', '2022-06-28 14:39:22', '2022-06-28 14:39:44'),
(613, 'فهد', 'عبدالعزيز', '', 'المتعب العجمي', '', '', '', '', '', '', 5, 'دراسات اسلاميه ', '1966-10-15', 1, 'falajmy124@gmail.com', '0531999398', '1055530529', NULL, '$2y$10$VbMErXGjx3I8z6VKiwmL5eWOmvuULWZVnBqwUNfaUwgiuFLLcEL.C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CzAGYuG32l45pHK6w5ARd9FO0iiVt6Yn4Ce8tW0oVDMqETerQeCQrdAOgRMP', '2022-06-28 17:27:56', '2022-07-03 13:29:03'),
(614, 'البندري', 'عبدالله', '', 'العبيد', 'Albandre', 'Abdullah', '', 'Alobaid', '', '', 5, 'التعليم', '1964-11-05', 1, 'albnandre39@gmail.com', '0540944799', '1044428934', NULL, '$2y$10$entv8vcgR8.a/s0njhAFVeRlfU5.MC593rsSaawaJEVJ96If4pm7.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'IHQyckYxTSCVHCYENtDn43Mkyz3Nx3RQka8ZisLq7d1iBrYKl9KcVuUvAqRT', '2022-06-28 18:42:10', '2022-07-03 12:42:18'),
(615, 'حمود ', 'محمد', '', 'السهلي', 'hamuod', 'mohammed', '', 'alsahli', '', '', 5, 'علمي ', '2022-07-02', 1, 'ba347343@gmail.com', '0000000000', '1035487303', NULL, '$2y$10$h9iyZwjsKf7cmaJru.ItueKGoXCiFFqa5VTySpTLXAM/.Xg78bCN6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'gjK963UiB0DvQ4xMa55L6gcAvItTyj0gbohgETalCEg0tceVvOMxUgladAxB', '2022-07-05 11:01:44', '2022-07-17 10:59:16'),
(616, 'منير ', 'عبدالله ', '', 'القحطاني', 'MUNEER ', 'ABDULLAH ', '', 'ALQAHTANI ', '', '', 5, 'محاسبة ومسك الدفاتر', '1976-04-27', 1, 'n9eem9933681@gmail.com', '0577146753', '1012997159', NULL, '$2y$10$oIUBG1h5/GsAzgLVogDuOOQLxt4BztJAWhMsKC8dO5dCgeT5XJqHG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9uodvuWvzJWpCNd3EOBE413c7ai7tgfYxc2KcPykiuqo2vBk1a9QeLYMdOUD', '2022-07-06 00:04:17', '2022-07-06 00:04:17'),
(617, 'فائزة', 'احمد', '', 'بن طيران', 'Faiza', 'Ahmed', '', 'Tairan', '', '', 5, 'لغة عربية', '1960-07-01', 1, 'faiza.bin.mahfouz@gmail.com', '0555450604', '1033955434', NULL, '$2y$10$kIDC4NI9MtBa4pNKkXuLqePJbwMByAWiZPhUSif8OOag9FDF3RXhO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '58shrClumo3wlwW7wug8rY8UirBOejOp89IWRqz65KwDCn3Dw7sTiGKxpc5Q', '2022-07-06 12:42:42', '2022-07-17 13:35:49'),
(618, 'شعاع', 'منيع', '', 'الخليوي', 'SHUAA', 'MANE', '', 'ALKHIWY', '', '', 5, 'رياض اطفال ', '1975-04-26', 1, 'Shuooomk@hotmail.com', '0503483552', '1000413383', NULL, '$2y$10$3vMFkJ/vVTOGhKeYBK0vxO.69p80PyIkpCCA5Pbz4GxspetahFWUe', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'rJBFDTQcQU5aHQdp05tulg9wu91RLHsm4RZ3yk3H2fgb8taDpYiXQ5hx3VTd', '2022-07-17 13:03:21', '2022-07-17 13:58:53'),
(619, 'فاطمة ', 'علي ', '', 'المعارك ', 'fatmah', 'Ail', '', 'AL maarek', '', '', 5, 'اعداد معلمين ', '1980-07-01', 1, 'M.dakhyil@gmail.com', '0000000000', '1023422114', NULL, '$2y$10$ro8Zq/uO.4eggjcfLcTj/eoCagxgJT.iu/rdaP0QqFRvPJRHL/3Dq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '6U0bisEhqkzVu0gft6jf5xMJt4MNMArwQ5TZddB36eFQfyzXdlEKMObJ9KHP', '2022-07-19 12:08:05', '2022-07-19 12:12:34'),
(620, 'إبراهيم ', 'هليل ', '', 'معزي العنزي ', 'abrahum', 'hlil', '', 'alanzai', '', '', 5, 'علمي ', '1968-02-12', 1, 'abrahum1@hotmail.com', '0000000000', '1010688180', NULL, '$2y$10$T8iH.3DdWVIbLbgqHbyABeLwoCgblHXrAyLHFkOZgrgGjZY86F2vS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'uOD2Cy7IZQhZhGr21jjSUuAO5xUhrFwqhuYJylvUcYSgYYXcEwuvZx4gliLO', '2022-07-24 14:25:08', '2022-07-24 14:25:39'),
(621, 'محمد ', 'مسلم ', '', 'الحربي ', 'mohame', 'muslim', '', 'al harbi', '', '', 5, 'علمي ', '2022-07-02', 1, 'mhalharbie@gail.com', '0000000000', '1046907422', NULL, '$2y$10$aU7.nZdY6gZI7dcb9RR41.koI26/farrjDgLJPafURSjTerxpPcCC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Z27YmSlx2h7GWcnXMZH5KHvjPdAbdcXntzjdbgxge6g8QOhTSAyY3j6XYStf', '2022-07-25 11:22:22', '2022-07-25 12:02:40'),
(622, 'رقية', 'عبدالله', '', 'الجبالي', 'Rokaya ', 'Abdullah ', '', 'Aljabali ', '', '', 5, 'اشعة صوتيه لقلب الاطفال', '1964-11-05', 1, 'Myrok@hotmail.com', '0563599989', '1023111758', NULL, '$2y$10$uZsYpOsITQ3oVq4aqwvmOu7d7L/1mLbyvvMNfBEP6toRLdvx3a/1C', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DmDPaYhZSV4BUjUxC8FkXBv46axpP6Vmyl2jDAh90Khxoo6viFMNZHLO3Wqy', '2022-07-25 16:17:28', '2022-07-27 11:04:01'),
(623, 'سبيكة ', 'يحيى ', '', 'الزامل', 'sabikah', 'yahya', '', 'alzamel', '', '', 5, 'ادارة عامه ', '1977-01-20', 1, 'syzamil@hotmail.com', '0554490502', '1003680913', NULL, '$2y$10$DwpAa0aSt/aLOCW0xKwixeaHWma4Hn.Ay3PKJVxsg8VpGkOwhSGRy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'vjsDc18fHUwMwXv672EReD51Etrd1qUcdLSq8fArib6IEXOCQBMHLfa2WZAe', '2022-07-26 06:42:32', '2022-07-26 21:48:08'),
(624, 'سعود', 'محمد', '', 'الحسيني ', 'Saud', 'M', '', 'Alhusayni', '', '', 5, 'تربيه خاصه ', '1968-09-23', 1, 's7sd422@gmail.com', '0505418852', '1037856729', NULL, '$2y$10$jOo8qq4GwdkhLB0ePJD6CePmXUo4LOdI7ElLR3GkrnydJXgGOIpFq', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wD7uLyHOhYbKbMO0kJHMa6is6iuUxVeUpD5CVOPBTue52pJDZEF1NTEUUsIZ', '2022-07-26 13:03:49', '2022-07-26 21:53:06'),
(625, 'عزيزة ', 'صالح', '', 'الدهامي ', 'azizah', 'salah', '', 'alduhammi', '', '', 5, 'أدبي ', '0000-01-01', 1, 'azizah.alduhami@icloud.com', '0000000000', '1021334774', NULL, '$2y$10$gvgwdNVuHHtODGRQXtq3auRAXlOuDuOv5HumtdFJp/2Nee8qGlur2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'Cnk8PjgfvwKFnD5IaglfLDGjej7Oc67qZ2e2omK7zhnyIPJg9ifKkExD8eQe', '2022-07-26 23:01:03', '2022-07-26 23:01:45'),
(626, 'مزنة', 'مبارك ', '', 'الدوسري', 'Mezna', 'Mubarak ', '', 'Aldossari ', '', '', 5, 'العلاج السلوكي والمعرفي', '1962-11-28', 1, 'M-zo-0n@hotmail.com', NULL, '1069114765', NULL, '$2y$10$3bjAeYk/IYRVAA3LRpdOs.0RYxV9ON8c9xhqRO851YJVALSgLUxGu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'QYrGxW8art0eyEkYUCY0RxVnxd1NWv3xA400djMjm9Lf86QvWXLomPJU09t1', '2022-07-26 23:27:52', '2022-08-02 10:40:26'),
(627, 'حسين ', 'محمد ', '', 'الدوسري ', 'mohammad', 'hussen', '', 'aldawzari', '', '', 5, 'علمي ', '1001-03-01', 1, 'husseinaldossary22@gmail.com', '0000000000', '1034718369', NULL, '$2y$10$BTZzecdqXwrIzLqSz6gMHerRlUkwrXloKlUZRlx5RObRy01KBsmmS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2aquQDgBPCBbTD0RVUtJgUCBZDX38Bdp1ZS6iHA1Qzof8QpvLTzxH82aaILg', '2022-07-27 12:36:43', '2022-09-21 14:46:14'),
(628, 'عبد العزيز ', 'صالح ', '', 'العمار ', 'abdulaziz', 'saleh', '', 'alammar', '', '', 5, 'علمي ', '1951-04-08', 1, 'alammar22@gqmail.com', '0000000000', '1014088163', NULL, '$2y$10$IhdfLdO1tUS.KxIoXAosMeQQ21iooQEsI1Eqiofw2MQmfxsu5B4j.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'xcynDwibYmJKI60QzKbK2apiqw6dYabPjzFBmn16HtqOaSZHlMLENgdm6XNc', '2022-07-28 13:31:47', '2022-07-28 13:32:16'),
(629, 'سليمان', 'محمد', '', 'الشمسان', 'SULAIMAN', 'MOHAMMED', '', 'ALSHAMSAN', '', '', 5, 'علم اجتماع - خدمة اجتماعية', '1959-01-11', 1, 'salshamsan@gmail.com', '0555480682', '1009638907', NULL, '$2y$10$CDh26VGMjrHCmgn3epDQSOR.juhZZLEK3oAxsEKu0c4wZz89d.m.K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kz4VRJEQLmHC8EleRxTznlVTsmhDuEwDb7xw96QX3C73Q3mQKBqQuFkt2eNG', '2022-08-04 01:34:20', '2022-08-04 11:36:54'),
(630, 'فائقة', 'سالم', '', 'باسكران', 'Fayka', 'Salim', '', 'Basakran', '', '', 5, 'لغة انجليزية', '1957-02-01', 1, 'fs.406@icloud.com', '0505403094', '1001259983', NULL, '$2y$10$XbyR.zJoZZ64a5GYz1VlYuYef6P95pZoEUjjbP7I3fIsdingelsSm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'anGk77eeNRcRBelGIpOEu8gGuCBuXkXqGyFLBYCfbuPRILZWFoKVBjTZ1qd4', '2022-08-04 11:35:11', '2022-08-04 11:45:26'),
(631, 'لطيفه', 'صالح', '', 'العساف', 'Latefa', 'Saleh', '', 'Alasaf', '', '', 5, 'دراسات اسلاميه', '1963-05-30', 1, 'remo-al7rbe@hotmail.com', '0560660137', '1006457145', NULL, '$2y$10$J8BeatxPqaCDkgWmXcpcgu.iYyBDVuYjnJO5AW3HbMHD1V7Jy/YQK', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'fAFOzHBYCKPVKqWs8WGCLaB0SE55pmxSvd0SowFTM8cMWWTo3EDII7iQsmMb', '2022-08-05 21:01:15', '2022-08-08 11:25:44'),
(632, 'اسماء ', 'عبد العزيز ', '', 'الرصيص ', 'Asmaa', 'Abdulazia', '', 'AlRASAIS', '', '', 5, 'نبات ', '1970-11-17', 1, 'Asma1045@hotmail.com', NULL, '1010620647', NULL, '$2y$10$4ZnHAsd/nhvWvy70Lbvm3ekiqlQqEShcN4H7pg.4hFZnX3pNcKOsa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hcjby10WV3x4458uL37ZEny530e59ri4zDKTVD5eWZFmDWD8IpHIM7Nh50EZ', '2022-08-11 20:06:17', '2022-08-14 12:04:40'),
(633, 'زهبة ', 'سعيد ', '', 'فطيس', 'zhbha', 'saeed', '', 'futais', '', '', 5, 'فني ', '2057-12-27', 1, 'zehbaalqahtani224@gmail.com', '0000000000', '1091032357', NULL, '$2y$10$Xac7kPN79K3q9drtwFvcL.k5Nxa6omctVGrav3szBsOuhgnrexKXC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'klmInbMSv0twl5hdLoGZdgaZB8hy0OU20fgdJGPFeCY4o5hLgXeMkpzWuDoC', '2022-08-14 12:01:23', '2022-08-14 12:02:34'),
(634, 'عبد العزيز ', 'محمد', '', 'الهويشل ', 'abdulaziz', 'mohammed', '', 'ALHUWAISHEL', '', '', 5, 'إدارة أعمال', '1946-05-31', 1, 'abdULAZiZALHUWAISEL2016@HOTMAIL.COM', '0000000000', '1000291987', NULL, '$2y$10$2/yrQDZ3q7pN.8FZfVHDg.ZSnGtKu1XBe3cpKN/7.TQ7v8IdfAchu', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yFVrBPw4CdpqM48Js96el8jRS7u6VK5Peh0ltUg0g7bR6En9AgKY7GSawUQ6', '2022-08-15 13:20:00', '2022-08-15 13:20:32'),
(635, 'أحمد ', ' بن يوسف ', '', 'الدريويش ', 'Ahmed ', 'yousef ', '', 'alduraywish ', '', '', 5, 'الفقه المقارن ', '1959-01-11', 1, 'dr-aldriweesh@hotmail.com', '0506030030', '1004105548', NULL, '$2y$10$YnhnjAL5C8BtwOuiBdItu.NmKVN6/t3LtNk8N6oIt.HtJs0GlSfQy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'UlWESTsijpnGc9MABHWOo9kEHUf5Cbj1A2WOTR6DaGCkuk4CixxaTGlGw5HL', '2022-08-18 02:32:29', '2022-08-21 11:02:59'),
(636, 'سعاد ', 'أحمد ', '', 'الحمدان ', 'SOAD', 'AHMAD', '', 'ALHAMDAN', '', '', 5, 'جعرافيا', '1957-02-01', 1, 'ReeMAlBILALI@GMAIL.COM', '0000000000', '1028136263', NULL, '$2y$10$UETOeibVsUi/3Oim15T7G.6CJ4nxBP9ujEvyeO1Fu4w2r48zIPvmC', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'VSSKUbQ2GQXTmYbZ7VnTw0XxszOcHQYpxUWkVkcRjhDvnKjS3UlfzoS4TvmB', '2022-08-18 13:58:05', '2022-08-18 13:58:29'),
(637, 'هدى ', 'أحمد ', '', 'الحمدان ', 'HUDA', 'AHMED', '', 'ALHAMDAN', '', '', 5, 'تربية ', '1959-01-11', 1, 'ReeM.HAMMED@GMAIL.COM', '0000000000', '1040461038', NULL, '$2y$10$zTlPfnHLvrp2cYUj0dTV0OnRiJzgSr1NpRTz8kS.J/cg5121r7Uou', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'nKBxDZLGPAPpYkgy922LdqwVCCTGFVx2JNLN6nGexIOcQ0Pd4alNQZmB13iw', '2022-08-18 14:07:30', '2022-08-18 14:08:49'),
(638, 'منيره ', 'عبدالله ', '', 'الدايل ', 'MUNIRAH', 'Abdullaha', '', 'ALDAEL', '', '', 5, 'لغه عربيه', '2022-07-30', 1, 'aommohammed12@hotmail.com', '0555286564', '1022119885', NULL, '$2y$10$pein5RFJPuDjt2reZ6RmQ..8nGXVpCPujcf5.jgaMXorJLDKmOGP.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'w7tqeeWvrykGs4NmquTTz9rAwJkHcf0IBFooLwurHbrcYsEIpYfuxLzSHPEd', '2022-08-18 17:21:30', '2022-08-22 11:14:55'),
(639, 'نجاح ', 'أحمد ', '', 'الحمدان ', 'NAjAH', 'AHMAD', '', 'ALHAMDAN', '', '', 5, 'معهد المعلمات ', '1960-12-19', 1, 'HadeeLaLhassan1997@gMAIL.COM', '0000000000', '1005830680', NULL, '$2y$10$iGEc0Snclc/FwmeuYJb3guiYxZA0mdEukp.PgTeujSOoPt9ElhU4i', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'B1HBywd6GVU4NnPRdTnx4Cr8bxtDb2huJ8ptAamhdpVXUvrZVsCKVZtcu9Cu', '2022-08-21 11:26:49', '2022-08-21 11:27:33'),
(640, 'حامد ', 'محمد ', '', 'العامود ', 'hamed', 'mohammed', '', 'alamoud', '', '', 5, 'علم اجتماع ', '1956-02-13', 1, 'alamoud@hotmail.com', '0000000000', '1040461020', NULL, '$2y$10$2Y7OOGwy5KGa5Nhqz0UepewbSa7Ze7UkBE3JJgm/l6h166lOuT8xy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'AmdIK1U7SG6xdPrurQ2l3PWYoyPzegbLKxyl6pL3y3Tq0gHLky8mffMDOll6', '2022-08-23 14:53:17', '2022-08-23 14:54:13'),
(641, 'حنان', 'عبدالعزيز', '', 'ال عقيل', 'HANAN', 'ABED ALAZIZ', '', 'AL AQEEL', '', '', 5, 'جغرافيا', '1962-11-28', 1, 'hananagel@hotmail.com', '0566576565', '1029053277', NULL, '$2y$10$sbQqUTor8CVt.3g93Z2mxuqHMBCDzG.Ra53C3AtU0YIkizE5yS32y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '1udEONniBi9Uauv5wUP681dYiGoJcqSQbcDQB7b3zhE5NXEqRbQJbvYkHK9H', '2022-08-25 17:05:52', '2022-08-25 17:05:52'),
(642, 'سارة', 'محمد ', '', 'الحمدان', 'Sarh', 'Mohammed', '', 'Alhamdan ', '', '', 5, 'خدمة اجتماعية ', '1960-12-19', 1, 'eman.alshdokhi23@gmail.com', '0566404227', '1024983148', NULL, '$2y$10$CuXJUGlgi4v61Hty8hDC6.foeYFdeUQM89JGSXFzpV.kZXn6g9fn.', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '2TbUAHk2KczuXE7iXRuyEHBGnHbUWvF0plbDTPXrU6iQMlc3ugEyeEyThSAQ', '2022-08-25 19:34:11', '2022-08-29 14:37:05'),
(643, 'مناحي ', 'شجاع ', '', 'مناحي ', 'Manahi', 'bold', '', 'Aldosari', '', '', 5, 'علوم طبيعية', '1973-07-30', 1, 'gnls139371@outook.sa', '0551295849', '1055772501', NULL, '$2y$10$3jX84RSefkLHIQQRBq5gguFph0HDpgKthmZlFlcZmx03EFEv9WS5S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'kMayxmDsB2s7dM7pXoymifBlKWEoOKjtbJDtNLwePcoaUH3ULsMcGBJT8JQE', '2022-08-25 21:07:22', '2022-08-25 21:07:22'),
(644, 'علي', 'احمد', '', 'محزري', 'Ali', 'Ahmad', '', 'Mhzri', '', '', 5, 'شرعي', '1970-09-02', 1, 'almhzri@gmail.com', '0504455847', '1048822850', NULL, '$2y$10$cCvUvMuAcbSc1VDO2pDJBem02a.2X8i8Qcx96hRkIoOlOpZgFqCOO', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'PPB8EcjtDWQOGuOAExTWgh770pNuKDMqJG07mpJLLyoHNnQbjiStklksV0L7', '2022-08-27 17:44:36', '2022-08-27 17:44:36'),
(645, 'عبد المجيد ', 'عبد الرزاق ', '', 'حكيم ', 'abdmajid', 'abdulrzaag', '', 'hakeem', '', '', 5, 'إدارة أعمال', '1954-03-06', 1, 'ahakeem.saemb@hotmail.com', '0000000000', '1038918668', NULL, '$2y$10$lc4PN1/eibqm72AgjGgu4OYpaVrtIorcgFY55MPGiAnKrP2ZkaLUm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'FNFpKn0pZkI0tnanZ5lBtEDFUEBg3Bw9sA6TL0Mx6N2yEIYOKpQz5pmLOYLL', '2022-08-28 12:39:09', '2022-08-28 12:41:22'),
(646, 'جواهر', 'عبدالكريم', '', 'المشاري', 'Jawaher', 'Abdulkarim', '', 'ALMeshari', '', '', 5, 'فنية', '1954-10-12', 1, 'h-alothman@windowslive.com', NULL, '1010570354', NULL, '$2y$10$VERYT.CjtsbYNln5Mz19j.eiFA7Junn7gTJgJQ2K8cHqa.yPMQ5Du', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'U0N9y6yMavVUhXvOLz0UfcvSwnH5czeNpW4SBcWmv2FMuDzzxEtXHGWX4Tmw', '2022-08-30 18:00:25', '2022-09-05 16:17:14'),
(647, 'خالد ', 'عبدالله', '', 'الشهراني ', 'khalid', 'eabdallah', '', 'alshahrani', '', '', 5, 'كمياء', '1974-02-09', 1, 'k_1375@hotmail.com', '0500920387', '1022755811', NULL, '$2y$10$6kwSmf5JHyqnfo.GJQVGfe/fUyZOByjkEHfjI0Eeo28gK1l8yiuOy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'SOKVGPbKzu5lapjglWwNIRsV9P53Nng6Z2JaOr8ipdX5nJ20e5X4Ec6PMTxW', '2022-09-04 10:55:53', '2022-09-04 10:55:53'),
(648, 'وفاء', 'حافظ', '', 'تركستاني ', 'Wafa', 'Hafez', '', 'Torkestani', '', '', 5, 'لغة عربية ', '1963-11-17', 1, 'B210wafa@hotmail.com', '0555470620', '1045298930', NULL, '$2y$10$KWXakUQQRw4ZaGnwRXI.CO.3izauGYUmMkFPBqkbTpiDRYYdZJNt6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'lFICEDpkD6yCerdkmwTaEKZrW9mOIxw5nkYa8OGuZb1XygPpFCqsKJvdrMG8', '2022-09-06 15:14:46', '2022-09-06 15:24:02'),
(649, 'خالد', 'عبدالله', '', 'الهمش', 'Khalid', 'Abdullah ', '', 'Alhemsh ', '', '', 5, 'تجاري', '1969-09-12', 1, 'k-156@hotmail.com', '0555177455', '1017777689', NULL, '$2y$10$eJOaJ2KSzxsK5bzZTccXiuTanlJWcrwWdCUy7tUw7Kgg.hu908VOa', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'EX9PEYWyp5LcwsjiIAsDQZfRQpf8m1953uotSrR6u0PN1fQABPflVc6CJ0o4', '2022-09-07 11:41:17', '2022-09-11 11:40:49'),
(650, 'جواهر', 'محمد', '', 'الزومان', 'Jawaher', 'Mohamed', '', 'Alzoman', '', '', 5, 'فقه', '1959-12-31', 1, 'Johara-z@hotmail.com', '0555110870', '1017547348', NULL, '$2y$10$P1IR6w7UD3d0WZJy4os7bui2Laq1LvPL/rmi3sNH32ruA8YrKYu1K', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'EGn7xDDJY0Gl79w4Mes8fiVuTAxjgOWZIbyBYnkxFvQOXurwOlLb0oWdVLbF', '2022-09-07 16:03:27', '2022-09-08 11:15:39'),
(651, 'عبدالله ', 'إبراهيم ', '', 'الفلاج', 'Abdullah ', 'Ibrahim ', '', 'Alfallaj ', '', '', 5, 'محاسبة', '1957-02-24', 1, 'alfallaj@yahoo.com', '0556266440', '1019540234', NULL, '$2y$10$KTk/RmbZnOD3YuM4nmgYkOWtmqviP/Gnz.qM9a.zTRvICIsMdPPq2', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'wAQlfUucoHQ4RGSySc46Dhjgovw3wf8IIJTMcE4QPwhWtW2iZYL71N0puUO9', '2022-09-07 21:03:21', '2022-09-07 21:03:21'),
(652, 'هيفاء', 'محمد', '', 'بن عويس', 'hiyfa', 'mohammed ', '', 'bin owais', '', '', 5, 'دين', '0000-01-01', 1, 'Almnoorh.233@gmail.com', '0594938000', '1057140848', NULL, '$2y$10$ArkVusoU6wLC64B8FRJnyOkJOf4XkF7QV3bNdr.omShV8af.EDv2S', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'p5Po3hlU2sUoHZBdK2xGHALgcbcwZmpKv6v8Q3REXIqLhHUTq2lfbx7oyuCr', '2022-09-08 12:18:19', '2022-09-08 12:19:10'),
(653, 'موضي', 'فريح', '', 'الشمري', 'Moudhi', 'Frah ', '', 'ALshamry ', '', '', 5, 'كيمياء', '1961-12-04', 1, 'memi363@yahoo.com', '0555708954', '1035126687', NULL, '$2y$10$QgUbrmX0eGyBwriFFK7F8uP5t5qDhscCmEPn4Ro7Bc5IOr3KFKtyW', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '9AEHDTW2UHKv72Ye3q1nPrNioXvGZZ4egXAkau4A0C17SZcSeOe5rzZaF504', '2022-09-08 17:17:15', '2022-09-08 17:17:15'),
(654, 'نوال', 'محمد', '', 'الشمسان', 'NAWAL', 'MOHAMMAD', '', 'ALSHAMSAN', '', '', 5, 'كيمياء ', '1963-10-19', 1, 'huda0044@hotmail.com', '0550813046', '1008092817', NULL, '$2y$10$kEsVSoWRnaIUDWXqBl0FMeldzuGwlbDdA5twdB7OJahqkOn5ppB.y', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'cpcEsD8z96GNAdK6TcEHaYsIzT998Pk3GFGPCQKVGHnNc5vQeX0IxPoAuah2', '2022-09-09 00:49:05', '2022-09-11 11:43:45'),
(655, 'فاطمه', 'عبدالعزيز', '', 'المحرج', '', '', '', '', '', '', 5, 'دين', '1969-11-10', 1, 'n9800064@gmail.com', '0505247318', '1003315908', NULL, '$2y$10$/hD4gipoXGLt1/KxXl2nk.2DCLLBjUmOS1pLXW6/hxSS4etMp.7UG', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'QTZV3jLRT69Ebj70m5gTFsHI4xkTgd2oEAyoElNzaezoakwKu7xX0hCczTOQ', '2022-09-13 15:20:55', '2022-09-13 15:21:45'),
(656, 'راشد', 'ابراهيم بن حسن', '', 'الهويمل', 'Rashed', 'Brahem', '', 'Alhwemel', '', '', 5, 'بدون', '1964-11-05', 1, 'Abomajed7900@hotmail.com', '0540022238', '1021420292', NULL, '$2y$10$lDXPOVQuDZy/SJXc1vowPusM4SNRaQJCew5yxOJT.rJtcAaIOz67a', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'hmiuSYUPVRMkSjScqJUkcboK0LRzoaQYCtW3auFG5SVFpguLlbhLjdvo07Pz', '2022-09-15 19:31:51', '2022-09-19 13:40:34'),
(657, 'لمياء', 'مصطفى', '', 'القزق', 'LAMYAA', 'MUSTAFA', '', 'ALQIZAQ', '', '', 5, 'اللغة الانجليزية وادابها', '1953-03-17', 1, 'asa_ayel@hotmail.com', NULL, '1038245971', NULL, '$2y$10$e7FiaPnc2DOjqHSYrq.NqO9BW3x.fwNBw71aAJF2ZAisMHYDfdDgS', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'QLiAgMb90ZcPnz2jekEtpvRYv6yltAkmWxLnlSS43KX4jELcjV9xq2S1kyyd', '2022-09-15 20:09:53', '2022-09-19 13:13:35'),
(658, 'أحمد ', 'عثمان', '', 'العساف', 'Ahmad', 'Othman', '', 'AL Alassaf', '', '', 5, 'علم نفس', '1962-11-28', 1, 'aoassaf@hotmail.com', '0502145823', '1017849280', NULL, '$2y$10$cGi0IAQ9X8YO6896EXoUd.vynSIJn89St3mudseOy9214/h2ttWS6', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'DD2dw3LFMeDoaak9fMzCHYrquyIPAB1F4jDIdPb6c2calYcsLVOJqSeJfdeb', '2022-09-16 00:41:20', '2022-09-16 00:41:20'),
(659, 'طارق', 'فهد', '', 'المسيند', 'Tareq', 'Fahad ', '', 'ALMESAINED ', '', '', 5, 'انجليزي', '1963-11-18', 1, 'mr.tareq1963@gmail.com', NULL, '1018765360', NULL, '$2y$10$95HQq/lnVGWcDq4nGQuPju26oMD6WxNJER2svkVZz8Nt55O7OJM52', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'GNrQzPMsHn4laqVvV0N55ht15kWkI4x7H0LYa1u7XKB91dyZPMsTNw3QS86c', '2022-09-18 23:42:50', '2022-09-19 13:46:00'),
(660, 'احمد', 'محمد', '', 'الغامدي', 'ahmed', 'mohammed', '', 'alghamdi', '', '', 5, 'عام', '1957-02-01', 1, 'King.a2010@hotmail.com', '0596175567', '1036002614', NULL, '$2y$10$UzYvZF8skZ9VR2ND5GcrQOX2jMT0L26t1yQRSs74eVI.o4RObECPi', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'ZekNfBy77S2vYu6Rng3dCl15JYOExgOTvJ5LmuSjTWe8ryRkN2CH9FwGkSJV', '2022-09-19 15:54:17', '2022-09-19 15:54:17'),
(661, 'حسين ', 'حسن ', '', 'جبران', 'Hussain', 'Hasen', '', 'Jubran', '', '', 5, 'شبكات ', '1969-01-01', 1, 'hjubran2@gmail.com', NULL, '1012909253', NULL, '$2y$10$11BTqg/tZcV3Jw8ZnMekh.8nNMfY/llROqOmQo.QtLyKqsCnz6ECm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, '3Qg2a4UO01LJ8VQ8lvFR6WD1qWBcdOrbS1fbsusiqwBLTEn6zvP5poLz7eyO', '2022-09-19 16:03:49', '2022-09-19 16:03:49'),
(662, 'عبدالرحمن ', 'سعيد', '', 'الغامدي', 'Abdulrahman ', 'Saeed', '', 'Alghamdi', '', '', 5, 'فيزياء', '1962-11-28', 1, 'aralghamdi@gmail.com', NULL, '1032072687', NULL, '$2y$10$.MWlH86tdIhugCyhcXpF/eHdeEd8GBF803o9EdhDkdm2qP5sspMzm', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'yMTQ6XAnWAlNlb9RiemGPiTkse3idO3mYdBDetyqip7AVXVjAK4qsfOCY3Ym', '2022-09-20 01:08:46', '2022-09-20 01:08:46'),
(663, 'عبدالرحمن', 'محمد', '', 'العرفج', 'abdurahman', 'm', '', 'alarfaj', '', '', 5, '00', '1951-04-07', 1, 'a.m.alarfaj@gmail.com', '0555444185', '1014351736', NULL, '$2y$10$AozJ5u.UseOTVMmGIEaq7OZFX3f5xEEZl7mujXQUxYcSzH7NTt/6m', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'CLsBEEBxOwQLahJzlfgfjeAH3tS2Z9957lC43NP2JdFxEJjhNF5LjhFXXoMl', '2022-09-21 16:07:51', '2022-09-21 16:19:18'),
(664, 'خالد', 'محمد', '', 'المعمر', 'Khalid', 'Mohammed ', '', 'Almuamar', '', '', 5, 'نظم معلومات', '1963-11-17', 1, 'Ksakbm@yahoo.com', '0533252255', '1001293792', NULL, '$2y$10$2zMncqVeVjR4Vlv4UHD5t.FDXuPOwL0zbv.Yc0mO4znDjPyUqNcZy', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'umGXDtjGHFia6BONqRMhfvHkSaiT2RYaXH9SG8kdEcNIBLH0BBNDUoCKP7Kn', '2022-09-21 17:47:26', '2022-09-21 17:47:26'),
(665, 'ناصر', 'محمد', '', 'الشويعر', 'Nasser', 'Mohammad ', '', 'Alshuwaier', '', '', 5, 'في الامن', '1963-11-17', 1, 'Nasseralshu@gmail.com', NULL, '1001000098', NULL, '$2y$10$W5eHce4OERJgHZGFkGtDDOVaa1bPgShFXKBGluQtppbI1v/o9aM6W', 'مستفيد', 'تمت الموافقة', 'yes', '2022-09-24', '2023-09-24', NULL, 'eQlKGdSHLJ9klY1Ep2V7l4T2OWLk0yqPRSTDhQZvmU1jNGMr0df0CH5AyeO8', '2022-09-22 19:13:12', '2022-09-22 19:13:12'),
(666, 'ماجد', 'جوفان', 'خالد', 'الجوفان', 'Majed', 'Jofan', 'Khaled', 'Aljofan', 'وزارة التعليم', '1999', 5, 'معلم', '1999-11-01', 6, '887a233d94@boxomail.live', '966599887634', '1081444444', NULL, '$2y$10$TQc2cgiUHu3buJz7m6WX0OYRpqKg52UTdUoXYK1pe.xmbqGqYFv5O', 'مستفيد', 'تمت الموافقة', 'yes', '2022-10-01', '2023-10-01', NULL, 'kv9xal1M7YuD1pSbTOUKIKeqTELjuNnUOmSiL68OZu8eOOXLrp26SDdC9BzO', '2022-10-01 19:03:37', '2022-10-01 19:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_password_resets`
--

CREATE TABLE `beneficiary_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ماجد', '966599887634', 'meo-oo@hotmail.com', 'غير ذلك', 'تجربة رسالة للمدير العام', 0, '2022-10-01 18:51:41', '2022-10-01 18:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `donation_content`
--

CREATE TABLE `donation_content` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation_content`
--

INSERT INTO `donation_content` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'تبرع الان', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\r\nإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.\r\nومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\r\nهذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.', '2022-10-20 10:13:07', '2022-10-20 11:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `field`, `created_at`, `updated_at`) VALUES
(5, 'المجال التطوعي', '2022-03-06 14:54:47', '2022-03-06 14:54:47'),
(6, 'المجال الاعلامى', '2022-03-06 14:55:00', '2022-03-06 14:55:00'),
(7, 'المجال التربوي', '2022-04-02 08:37:01', '2022-04-02 08:37:01');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `terms` longtext DEFAULT NULL,
  `policy` longtext DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `telegram` text DEFAULT NULL,
  `snapchat` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `address`, `email`, `phone_number`, `terms`, `policy`, `facebook`, `instagram`, `twitter`, `telegram`, `snapchat`, `website`, `created_at`, `updated_at`) VALUES
(1, 'الرياض - الملز - شارع الستين', 'info@rrra.org.sa', '0500887676', 'يجب الموافقة على الشروط اولا', '•جمعية أهلية تأسست بالقرار الوزاري رقم (92339 )وتاريخ 11\\5\\1441هـ ومنحت شهادة التسجيل رقم (1677 )وهي تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق خبراتهم وتسعى لتحسين أوضاعهم من خلالما تقدمه من برامج وأنشطة ومبادرات اجتماعية وثقافية وترفيهية تعزز الصحة وتوفر بيئة اجتماعية تليق بهم وتوثق الصلات فيما بينهم لتحقيق جودة الحياة وفقاً لرؤية المملكة 2030 وبرنامج التحول الوطني.', NULL, NULL, NULL, NULL, NULL, 'https://rrra.org.sa', '2022-03-17 16:15:01', '2022-10-01 18:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `maillist`
--

CREATE TABLE `maillist` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maillist`
--

INSERT INTO `maillist` (`id`, `email`, `created_at`, `updated_at`) VALUES
(4, 'abdoushawer93@gmail.com', '2022-03-17 19:44:39', '2022-03-17 19:44:39'),
(5, 'abdousaied64@gmail.com', '2022-03-17 19:44:48', '2022-03-17 19:44:48'),
(6, 'gkidhpgot@tmail.ws', '2022-03-28 05:17:37', '2022-03-28 05:17:37'),
(7, 'lujain.333@hotmail.com', '2022-03-28 07:37:41', '2022-03-28 07:37:41'),
(8, 'abdousaied65@gmail.com', '2022-09-16 23:55:15', '2022-09-16 23:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `membership_types`
--

CREATE TABLE `membership_types` (
  `id` int(11) NOT NULL,
  `membership_type` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership_types`
--

INSERT INTO `membership_types` (`id`, `membership_type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'عامل', '300', '2022-09-22 03:17:45', '2022-09-22 03:17:45'),
(2, 'منتسب', '100', '2022-09-22 03:17:45', '2022-09-22 03:17:45'),
(3, 'شرفية', '100000', '2022-09-22 03:18:43', '2022-09-22 03:18:43'),
(4, 'ذهبية', '50000', '2022-09-22 03:18:43', '2022-09-22 03:18:43'),
(5, 'برونزية', '25000', '2022-09-22 03:18:43', '2022-09-22 03:18:43'),
(6, 'الفخرية', '10000', '2022-10-01 18:53:12', '2022-10-01 18:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Supervisor', 1),
(1, 'App\\Models\\Supervisor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'سعودي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(2, 'ألباني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(3, 'مصري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(4, 'برتغالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(5, 'سوداني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(6, 'صيني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(7, 'سوري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(8, 'لبناني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(9, 'قطري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(10, 'موريتاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(11, 'اماراتي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(12, 'نيجيري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(13, 'عماني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(14, 'أردني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(15, 'بحريني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(16, 'مغربي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(17, 'بريطاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(18, 'كندي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(19, 'امريكي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(20, 'كاميروني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(21, 'ليبي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(22, 'تنزاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(23, 'جزائري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(24, 'اريتيري', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(25, 'صومالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(26, 'سان كريستوفر نيفز', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(27, 'كويتي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(28, 'تايلند', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(29, 'عراقي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(30, 'أثيوبي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(31, 'ألماني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(32, 'ماليزي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(33, 'يمني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(34, 'مالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(35, 'هندي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(36, 'بوركينا فاسو', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(37, 'يوناني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(38, 'كيني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(39, 'اندونيسي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(40, 'بلوشي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(41, 'إيراني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(42, 'تركستاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(43, 'ايرلندي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(44, 'اجنبي بجواز سعودي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(45, 'إيطالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(46, 'سيريلانكي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(47, 'بنغلادشي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(48, 'استرالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(49, 'تركي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(50, 'النيجر', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(51, 'تشادي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(52, 'ابناء القبائل النازحة', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(53, 'تونسي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(54, 'لاتيفيا', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(55, 'جيبوتي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(56, 'جنوب أفريقيا', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(57, 'فلسطيني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(58, 'ميانمار', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(59, 'روسي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(60, 'نيبالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(61, 'روماني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(62, 'النمسا', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(63, 'سنغالي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(64, 'غينيا الاستوائية', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(65, 'فلبيني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(66, 'أوزباكستان', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(67, 'فرنسي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(68, 'ساحل العاج', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(69, 'ياباني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(70, 'إثيوبي', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(71, 'أفغانستاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(72, 'أرجنتيني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(73, 'باكستاني', '2022-03-16 22:00:00', '2022-03-16 22:00:00'),
(74, 'برازيلي', '2022-03-16 22:00:00', '2022-03-16 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fourth_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(252) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type_id` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_id` int(11) NOT NULL,
  `id_pic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_report_pic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'قيد المراجعة',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `second_name`, `third_name`, `fourth_name`, `email`, `phone_number`, `order_type_id`, `quantity`, `nationality_id`, `id_pic`, `medical_report_pic`, `Status`, `created_at`, `updated_at`) VALUES
(15, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', 8, '17', 3, 'uploads/orders/id_pics/15/POS.jpg', 'uploads/orders/medical_report_pics/15/index.jpg', 'قيد المراجعة', '2022-03-22 14:23:58', '2022-10-19 22:12:07'),
(17, 'عبده شاور', '', '', '', 'abdoushawer93@gmail.com', '966589898989', 8, '30', 3, 'uploads/orders/id_pics/17/index.jpg', 'uploads/orders/medical_report_pics/17/POS.jpg', 'قيد المراجعة', '2022-03-22 14:44:09', '2022-03-22 14:44:09'),
(20, 'لجين عبدالله', '', '', '', 'lujain.333@hotmail.com', '966560244421', 7, '4', 1, 'uploads/orders/id_pics/20/F2B2623A-6657-4C14-8441-3EE7AA891BAA.jpeg', 'uploads/orders/medical_report_pics/20/C630A637-5C60-4824-A866-1C580D525A87.jpeg', 'قيد المراجعة', '2022-03-28 07:36:43', '2022-03-28 07:36:43'),
(21, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.come', '966590909090', 7, '100', 1, 'uploads/orders/id_pics/21/index.jpg', 'uploads/orders/medical_report_pics/21/index.jpg', 'قيد المراجعة', '2022-04-06 15:50:24', '2022-04-06 15:50:24'),
(22, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.come', '966590909090', 7, '100', 1, 'uploads/orders/id_pics/22/index.jpg', 'uploads/orders/medical_report_pics/22/index.jpg', 'قيد المراجعة', '2022-04-06 15:56:08', '2022-04-06 15:56:08'),
(23, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', 7, '20', 1, 'uploads/orders/id_pics/23/index.jpg', 'uploads/orders/medical_report_pics/23/index.jpg', 'قيد المراجعة', '2022-04-06 15:59:02', '2022-04-06 15:59:02'),
(24, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', 7, '20', 1, 'uploads/orders/id_pics/24/index.jpg', 'uploads/orders/medical_report_pics/24/index.jpg', 'قيد المراجعة', '2022-04-06 16:00:40', '2022-04-06 16:00:40'),
(25, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', 7, '20', 1, 'uploads/orders/id_pics/25/index.jpg', 'uploads/orders/medical_report_pics/25/index.jpg', 'قيد المراجعة', '2022-04-06 16:02:53', '2022-04-06 16:02:53'),
(26, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', 7, '20', 1, 'uploads/orders/id_pics/26/index.jpg', 'uploads/orders/medical_report_pics/26/index.jpg', 'قيد المراجعة', '2022-04-06 16:10:49', '2022-04-06 16:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_types`
--

CREATE TABLE `order_types` (
  `id` int(11) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_types`
--

INSERT INTO `order_types` (`id`, `order_type`, `created_at`, `updated_at`) VALUES
(7, 'مستلزمات صناعيه', '2022-03-06 14:31:12', '2022-03-06 14:31:12'),
(8, 'مستلزمات علاجية', '2022-03-06 14:31:39', '2022-03-06 14:31:39'),
(9, 'مستلزمات طبية', '2022-03-06 14:31:42', '2022-03-06 14:31:42'),
(10, 'حقائب تعليمية', '2022-03-28 05:05:21', '2022-03-28 05:05:21'),
(11, 'أسرة طبية', '2022-04-02 08:33:14', '2022-04-02 08:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `key`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'اضافة مشرف', 'supervisor', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(2, 'عرض مشرف', 'supervisor', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(3, 'تعديل مشرف', 'supervisor', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(4, 'حذف مشرف', 'supervisor', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(5, 'اضافة متطوع', 'volunteer', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(6, 'عرض متطوع', 'volunteer', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(7, 'تعديل متطوع', 'volunteer', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(8, 'حذف متطوع', 'volunteer', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(13, 'اضافة عضو', 'beneficiary', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(14, 'عرض عضو', 'beneficiary', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(15, 'تعديل عضو', 'beneficiary', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(16, 'حذف عضو', 'beneficiary', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(18, 'اضافة صلاحية', 'privilege', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(19, 'عرض صلاحية', 'privilege', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(20, 'تعديل صلاحية', 'privilege', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(21, 'حذف صلاحية', 'privilege', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(22, 'اضافة جنسية', 'nationality', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(23, 'عرض جنسية', 'nationality', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(24, 'تعديل جنسية', 'nationality', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(25, 'حذف جنسية', 'nationality', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(30, 'اضافة نوع طلب', 'orderType', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(31, 'عرض نوع طلب', 'orderType', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(32, 'تعديل نوع طلب', 'orderType', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(33, 'حذف نوع طلب', 'orderType', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(34, 'اضافة مجال', 'field', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(35, 'عرض مجال', 'field', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(36, 'تعديل مجال', 'field', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(37, 'حذف مجال', 'field', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(38, 'اضافة نوع عضوية', 'membership_type', 'supervisor-web', '2022-09-22 03:21:23', '2022-09-22 03:21:23'),
(39, 'عرض نوع عضوية', 'membership_type', 'supervisor-web', '2022-09-22 03:21:23', '2022-09-22 03:21:23'),
(40, 'تعديل نوع عضوية', 'membership_type', 'supervisor-web', '2022-09-22 03:21:23', '2022-09-22 03:21:23'),
(41, 'حذف نوع عضوية', 'membership_type', 'supervisor-web', '2022-09-22 03:21:23', '2022-09-22 03:21:23'),
(42, 'اضافة طلب', 'order', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(43, 'عرض طلب', 'order', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(44, 'تعديل طلب', 'order', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(45, 'حذف طلب', 'order', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(46, 'اضافة مؤهل', 'qualification', 'supervisor-web', '2022-09-22 03:00:42', '2022-09-22 03:00:42'),
(47, 'عرض مؤهل', 'qualification', 'supervisor-web', '2022-09-22 03:01:51', '2022-09-22 03:01:51'),
(48, 'تعديل مؤهل', 'qualification', 'supervisor-web', '2022-09-22 03:01:51', '2022-09-22 03:01:51'),
(49, 'حذف مؤهل', 'qualification', 'supervisor-web', '2022-09-22 03:01:51', '2022-09-22 03:01:51'),
(50, 'التحكم فى الموقع', 'settings', 'supervisor-web', '2022-03-17 04:28:44', '2022-03-17 04:28:44'),
(51, 'اضافة قائمة بريدية', 'maillist', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(52, 'عرض قائمة بريدية', 'maillist', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(53, 'تعديل قائمة بريدية', 'maillist', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42'),
(54, 'حذف قائمة بريدية', 'maillist', 'supervisor-web', '2022-03-04 14:29:42', '2022-03-04 14:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `qualification`, `created_at`, `updated_at`) VALUES
(1, 'ابتدائي', '2022-03-16 23:44:46', '2022-03-16 23:44:46'),
(2, 'متوسط', '2022-03-16 23:44:55', '2022-03-16 23:44:55'),
(3, 'ثانوي', '2022-03-16 23:45:04', '2022-03-16 23:45:04'),
(4, 'دبلوم متوسط', '2022-03-16 23:45:14', '2022-03-16 23:45:14'),
(5, 'جامعي', '2022-03-16 23:45:26', '2022-03-16 23:45:26'),
(6, 'ماجستير', '2022-03-16 23:45:39', '2022-03-16 23:45:39'),
(7, 'دكتوراه', '2022-03-16 23:45:46', '2022-03-16 23:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `renewal_requests`
--

CREATE TABLE `renewal_requests` (
  `id` int(11) NOT NULL,
  `beneficiary_id` bigint(20) UNSIGNED NOT NULL,
  `period` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `membership_type_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'قيد المراجعة',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renewal_requests`
--

INSERT INTO `renewal_requests` (`id`, `beneficiary_id`, `period`, `amount`, `membership_type_id`, `status`, `created_at`, `updated_at`) VALUES
(25, 1, 2, '100000', 4, 'قيد المراجعة', '2022-10-20 01:36:34', '2022-10-20 01:36:34'),
(26, 1, 3, '75000', 5, 'قيد المراجعة', '2022-10-20 01:42:39', '2022-10-20 01:42:39'),
(27, 1, 3, '75000', 5, 'قيد المراجعة', '2022-10-20 01:43:32', '2022-10-20 01:43:32'),
(28, 1, 2, '200', 2, 'قيد المراجعة', '2022-10-20 01:44:16', '2022-10-20 01:44:16'),
(29, 1, 1, '100', 2, 'قيد المراجعة', '2022-10-20 01:45:27', '2022-10-20 01:45:27'),
(30, 1, 3, '900', 1, 'قيد المراجعة', '2022-11-05 09:28:52', '2022-11-05 09:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'مدير النظام', 'supervisor-web', '2021-08-23 01:40:49', '2021-08-23 01:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'خدمة الشراكات لتوفير المتطلبات والإحتياجات بأسعار مخفضه', 'خدمة الشراكات لتوفير المتطلبات والإحتياجات بأسعار مخفضه', '2022-10-19 17:49:01', '2022-10-19 17:49:01'),
(2, 'خدمات إستشاريه', 'خدمات إستشاريه', '2022-10-19 17:49:01', '2022-10-19 17:49:01'),
(3, 'خدمات إجتماعية ترفيهية', 'خدمات إجتماعية ترفيهية', '2022-10-19 17:49:01', '2022-10-19 17:49:01'),
(4, 'التنسيق لتوفير اولوية الخدمة في المرافق الخدمية', 'التنسيق لتوفير اولوية الخدمة في المرافق الخدمية', '2022-10-19 17:49:01', '2022-10-19 17:49:01'),
(5, 'خدمات تعزيز الصحه', 'خدمات تعزيز الصحه', '2022-10-19 17:49:01', '2022-10-19 17:49:01'),
(7, 'خدمة تجريبية 1', 'خدمة تجريبية 1', '2022-10-19 19:32:10', '2022-10-19 19:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `arabic_name` text DEFAULT NULL,
  `english_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `logo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `arabic_name`, `english_name`, `description`, `email`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'جمعية المتقاعدين بمنطقة الرياض', 'Retirees Association in Riyadh', 'كيان رائد في الاستثمار المعرفي والاقتصادي  للمتقاعدين.', 'info@rrra.org.sa', 'uploads/logo/1/logo.png', 'uploads/favicon/1/favicon.png', '2022-03-17 03:44:18', '2022-10-01 18:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image_path` text NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image_path`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'uploads/slider/1/1.png', 'من نحن', ' جمعية أهلية تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق خبراتهم وتسعى لتحسين أوضاعهم من خلال ما تقدمه من برامج وأنشطة ومبادرات اجتماعية وثقافية وترفيهية تعزز الصحة وتوفر بيئة اجتماعية تليق بهم وتوثق الصلات فيما بينهم لتحقيق جودة الحياة وفقاً لرؤية المملكة 2030 وبرنامج التحول الوطني.', '2022-03-11 04:29:34', '2022-03-11 23:57:16'),
(2, 'uploads/slider/2/pngtree-id-card-line-filled-icon-png-image_325456.jpg', 'من نحن', 'جمعية أهلية تعنى بأعضائها من المتقاعدين من الجنسين ومظلة ترعى مصالحهم وتسوق خبراتهم وتسعى لتحسين أوضاعهم من خلال ما تقدمه من برامج وأنشطة ومبادرات اجتماعية وثقافية وترفيهية تعزز الصحة وتوفر بيئة اجتماعية تليق بهم وتوثق الصلات فيما بينهم لتحقيق جودة الحياة وفقاً لرؤية المملكة 2030 وبرنامج التحول الوطني.', '2022-03-11 04:29:44', '2022-10-01 18:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fourth_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `first_name`, `second_name`, `third_name`, `fourth_name`, `email`, `phone_number`, `profile_pic`, `email_verified_at`, `password`, `role_name`, `Status`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '01092716796', 'uploads/profiles/supervisors/1/logo.png', '2021-08-23 01:40:49', '$2y$10$VW0cXnJ4hWTV2OpcQnFj1uYCfbkbRaaIutDN0u6M8WXNmOLaIid1i', 'مدير النظام', 'active', NULL, 'o3VhjielMqrYS0Pc6M7paJY6fivFgKu4dXK04wErqzFzgImaAc2sY3ANZlf1', '2021-08-23 01:40:49', '2022-09-16 23:02:38'),
(2, 'ماجد', 'جوفان', 'خالد', 'الجوفان', 'meo-oo@hotmail.com', NULL, NULL, NULL, '$2y$10$LpFBJYSRL0tH5X9Qr2JP/.UzT9xgTccNqzLNZzrlGXwE5d4rA/QTC', 'مدير النظام', 'active', NULL, NULL, '2022-10-01 18:55:45', '2022-10-01 18:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_password_resets`
--

CREATE TABLE `supervisor_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `cart_id` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique cart id to be submit for telr',
  `order_id` int(11) DEFAULT NULL COMMENT 'Should be the foreign key for items',
  `store_id` int(11) NOT NULL COMMENT 'Map to ivp_store',
  `test_mode` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(8,2) NOT NULL COMMENT 'Map to ivp_amount the total or purchase',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description should be limit to 64',
  `success_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The success URL',
  `canceled_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The canceled URL',
  `declined_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The declined URL',
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing first name',
  `billing_sname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing sur name',
  `billing_address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing address 1',
  `billing_address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing address 2',
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing city',
  `billing_region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing region',
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing zip',
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing country',
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Billing email',
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Transaction Request lang',
  `trx_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The transaction reference',
  `approved` tinyint(1) DEFAULT NULL COMMENT 'The transaction status is approved or failed',
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'The transaction response' CHECK (json_valid(`response`)),
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'The transaction status is updated or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `cart_id`, `order_id`, `store_id`, `test_mode`, `amount`, `description`, `success_url`, `canceled_url`, `declined_url`, `billing_fname`, `billing_sname`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_region`, `billing_zip`, `billing_country`, `billing_email`, `lang_code`, `trx_reference`, `approved`, `response`, `status`, `created_at`, `updated_at`) VALUES
(1, '7614e3ac-6ba6-4381-853a-be3283a60fb5-1663895340', 5669, 27311, 1, '1000.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'http://192.168.1.2:8000/handle-payment/success?cart_id=7614e3ac-6ba6-4381-853a-be3283a60fb5-1663895340', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=7614e3ac-6ba6-4381-853a-be3283a60fb5-1663895340', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=7614e3ac-6ba6-4381-853a-be3283a60fb5-1663895340', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'E5BF23BA1621144DAF4B19FFB5E84CEF11954E428613BA4D6E4480FFCEA86B89', 1, '{\"method\":\"check\",\"trace\":\"4001\\/1048\\/632d0754\",\"order\":{\"ref\":\"E5BF23BA1621144DAF4B19FFB5E84CEF11954E428613BA4D6E4480FFCEA86B89\",\"cartid\":\"7614e3ac-6ba6-4381-853a-be3283a60fb5-1663895340\",\"test\":1,\"amount\":\"1000.00\",\"currency\":\"SAR\",\"description\":\"\\u062a\\u0628\\u0631\\u0639 \\u0644\\u062c\\u0645\\u0639\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0642\\u0627\\u0639\\u062f\\u064a\\u0646 \\u0628\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u0631\",\"status\":{\"code\":3,\"text\":\"Paid\"},\"transaction\":{\"ref\":\"040029024978\",\"date\":\"23 Sep 2022 04:09 AST\",\"type\":\"sale\",\"class\":\"ECom\",\"status\":\"A\",\"code\":\"901027\",\"message\":\"Authorised\"},\"paymethod\":\"Card\",\"card\":{\"type\":\"Visa Credit\",\"last4\":\"1111\",\"country\":\"SA\",\"first6\":\"411111\",\"expiry\":{\"month\":9,\"year\":2022}},\"customer\":{\"email\":\"info@rrr.org.sa\",\"name\":{\"forenames\":\"john\",\"surname\":\"mark\"},\"address\":{\"line1\":\"354\",\"line2\":\"elhammad\",\"city\":\"rasheed\",\"country\":\"SA\",\"areacode\":\"22456\",\"mobile\":\"01092716796\"}}}}', 1, '2022-09-23 02:09:02', '2022-09-23 02:09:34'),
(2, 'c5e86936-cce7-4021-b333-63f4411c165b-1663901571', 5405, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'http://192.168.1.2:8000/handle-payment/success?cart_id=c5e86936-cce7-4021-b333-63f4411c165b-1663901571', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=c5e86936-cce7-4021-b333-63f4411c165b-1663901571', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=c5e86936-cce7-4021-b333-63f4411c165b-1663901571', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '589B574E46964140BDC052168D0E952271D7F1B4733BDFF2C1DDBA7F6F61D440', 1, '{\"method\":\"check\",\"trace\":\"4000\\/25211\\/632d1fd3\",\"order\":{\"ref\":\"589B574E46964140BDC052168D0E952271D7F1B4733BDFF2C1DDBA7F6F61D440\",\"cartid\":\"c5e86936-cce7-4021-b333-63f4411c165b-1663901571\",\"test\":1,\"amount\":\"300.00\",\"currency\":\"SAR\",\"description\":\"\\u0637\\u0644\\u0628 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0639\\u0636\\u0648\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0641\\u064a\\u062f \\u0639\\u0628\\u062f\\u0647 \\u0634\",\"status\":{\"code\":3,\"text\":\"Paid\"},\"transaction\":{\"ref\":\"030029349263\",\"date\":\"23 Sep 2022 05:54 AST\",\"type\":\"sale\",\"class\":\"ECom\",\"status\":\"A\",\"code\":\"925192\",\"message\":\"Authorised\"},\"paymethod\":\"Card\",\"card\":{\"type\":\"Visa Credit\",\"last4\":\"1111\",\"country\":\"SA\",\"first6\":\"411111\",\"expiry\":{\"month\":9,\"year\":2022}},\"customer\":{\"email\":\"abdoushawer93@gmail.com\",\"name\":{\"forenames\":\"\\u0639\\u0628\\u062f\\u0647\",\"surname\":\"\\u0634\\u0627\\u0648\\u0631\"},\"address\":{\"line1\":\"354\",\"line2\":\"elhammad\",\"city\":\"rasheed\",\"country\":\"SA\",\"areacode\":\"22456\",\"mobile\":\"4444444444\"}}}}', 1, '2022-09-23 03:52:53', '2022-09-23 03:54:05'),
(3, 'd1a9b0c4-7413-4ce7-91a9-01ce4b13f005-1663901682', 8650, 27311, 1, '600.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنتين', 'http://192.168.1.2:8000/handle-payment/success?cart_id=d1a9b0c4-7413-4ce7-91a9-01ce4b13f005-1663901682', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=d1a9b0c4-7413-4ce7-91a9-01ce4b13f005-1663901682', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=d1a9b0c4-7413-4ce7-91a9-01ce4b13f005-1663901682', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '00FB955D380C53F986154C28D8C32F618A926B55A1F97D5CB584FD8151CF1202', NULL, NULL, 0, '2022-09-23 03:54:44', '2022-09-23 03:54:44'),
(4, 'b465b05b-9d5e-40b6-add6-d323857d620f-1663901815', 8115, 27311, 1, '600.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنتين', 'http://192.168.1.2:8000/handle-payment/success?cart_id=b465b05b-9d5e-40b6-add6-d323857d620f-1663901815', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=b465b05b-9d5e-40b6-add6-d323857d620f-1663901815', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=b465b05b-9d5e-40b6-add6-d323857d620f-1663901815', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '04A778269D499F9C2A43D2B7D335BF9F7FB19B66C58558124A68057219E8AB7A', NULL, NULL, 0, '2022-09-23 03:56:56', '2022-09-23 03:56:56'),
(5, '30dc362e-d34f-4b17-8b89-fc695225c95f-1663902295', 8490, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'http://192.168.1.2:8000/handle-payment/success?cart_id=30dc362e-d34f-4b17-8b89-fc695225c95f-1663902295', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=30dc362e-d34f-4b17-8b89-fc695225c95f-1663902295', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=30dc362e-d34f-4b17-8b89-fc695225c95f-1663902295', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '1DF809F4ED390431E7E416E7665128C0EAAC595512C2555465696D3F240B5346', NULL, NULL, 0, '2022-09-23 04:04:56', '2022-09-23 04:04:56'),
(6, '14f9122f-7b07-4862-b0f8-a2dacc976f43-1663902387', 6973, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'http://192.168.1.2:8000/handle-payment/success?cart_id=14f9122f-7b07-4862-b0f8-a2dacc976f43-1663902387', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=14f9122f-7b07-4862-b0f8-a2dacc976f43-1663902387', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=14f9122f-7b07-4862-b0f8-a2dacc976f43-1663902387', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'EE85D3C3BDE69055AB8157B0987ED2818456A112900D9D0147D669AD9DB47E59', NULL, NULL, 0, '2022-09-23 04:06:29', '2022-09-23 04:06:29'),
(7, '49514804-a3ab-4dbb-a92a-6eafd6191d44-1663902928', 7686, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'http://192.168.1.2:8000/handle-payment/success?cart_id=49514804-a3ab-4dbb-a92a-6eafd6191d44-1663902928', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=49514804-a3ab-4dbb-a92a-6eafd6191d44-1663902928', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=49514804-a3ab-4dbb-a92a-6eafd6191d44-1663902928', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '8AAD7049684BDC698AC5BEC49081FD72488A929700309398774E2D20EA8EB9F9', NULL, NULL, 0, '2022-09-23 04:15:30', '2022-09-23 04:15:30'),
(8, '27f69412-98c7-4fb1-82da-5093e6120d48-1663903508', 7822, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'http://192.168.1.2:8000/handle-payment/success?cart_id=27f69412-98c7-4fb1-82da-5093e6120d48-1663903508', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=27f69412-98c7-4fb1-82da-5093e6120d48-1663903508', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=27f69412-98c7-4fb1-82da-5093e6120d48-1663903508', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '9A144F04692DA5E391B5B4BA4199489F41187C0EEF2308BA7427AB4C4F442FED', NULL, NULL, 0, '2022-09-23 04:25:09', '2022-09-23 04:25:09'),
(9, '16af40e0-31b5-4850-bbc9-6f1214a12155-1663989579', 8501, 27311, 1, '300.00', 'انشاء عضوية جديدة من عبده شاور', 'http://192.168.1.2:8000/handle-payment/success?cart_id=16af40e0-31b5-4850-bbc9-6f1214a12155-1663989579', 'http://192.168.1.2:8000/handle-payment/cancel?cart_id=16af40e0-31b5-4850-bbc9-6f1214a12155-1663989579', 'http://192.168.1.2:8000/handle-payment/declined?cart_id=16af40e0-31b5-4850-bbc9-6f1214a12155-1663989579', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer0@gmail.com', 'ar', '8CD14136BDD2AC321590AABEFD5D941EA26FDBBADEDC566FE8D098A1F606B765', NULL, NULL, 0, '2022-09-24 04:19:41', '2022-09-24 04:19:41'),
(10, '358a453c-ba75-4c84-a9bf-2cd69e9cb925-1663992323', 7461, 27311, 1, '300.00', 'انشاء عضوية جديدة من عبده شاور', 'http://192.168.1.2:8000/handle-payment/success?id=4', 'http://192.168.1.2:8000/handle-payment/cancel?id=4', 'http://192.168.1.2:8000/handle-payment/declined?id=4', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer0@gmail.com', 'ar', 'BD1E21D3940F476624EA4B8A3814B3ACB8334960E62260363A3FE6A5AD16338B', NULL, NULL, 0, '2022-09-24 05:05:25', '2022-09-24 05:05:25'),
(11, '64e60f17-1371-4af7-a8a2-0d83365df8cc-1664051729', 6747, 27311, 1, '600.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنتين', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '9DCACBA10A0D687A2ACDA5A5383AEDDDB17E7D8F4145EE010D81322B99436B00', NULL, NULL, 0, '2022-09-25 06:35:29', '2022-09-25 06:35:29'),
(12, 'bc0074cb-9945-4be1-8f09-069a4980f543-1664101236', 6194, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '34D1280D62675FF6AFB65E021520FF9C3F60D68913E74A1F09235F0C0FEBF65B', NULL, NULL, 0, '2022-09-25 20:20:37', '2022-09-25 20:20:37'),
(13, 'e1dc4199-e608-46e6-bbf3-c318c4dc817d-1664101265', 9795, 27311, 1, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '4A8505D45C1DDD7C8B0B1674D18F9F2861B0B93159475E13C6BA59D902BA17BB', NULL, NULL, 0, '2022-09-25 20:21:06', '2022-09-25 20:21:06'),
(14, 'cc05a61a-77d1-4ac6-99d7-6e213d64e199-1664294914', 7759, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '261903D76D9FF8E1EDD2E14AE62320DE5C617555B925D62F445C4A5EF2464038', NULL, NULL, 0, '2022-09-28 02:08:35', '2022-09-28 02:08:35'),
(15, '78644ee1-74c5-46e2-8213-693d19532caf-1664294958', 9280, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '93B1C460BCC9F05BB37AA8F281423654C53A1A74A24BC67708F0510BA4B9D64B', NULL, NULL, 0, '2022-09-28 02:09:19', '2022-09-28 02:09:19'),
(16, '640c8002-6308-446a-b962-1c4e48626fd8-1664295000', 7593, 27311, 0, '0.25', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '16F368213642BE9EFA5CE5E7D181730C62E6AB5D95087DA3820BFB129780A31B', NULL, NULL, 0, '2022-09-28 02:10:01', '2022-09-28 02:10:01'),
(17, 'ce0e602f-ba29-4df9-95db-dabb1996822e-1664295291', 8635, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '09A762F7AC2689EA1CB131F8B9E4A2294BB3306EDED2FFE3917B03D4C69E4B8E', NULL, NULL, 0, '2022-09-28 02:14:52', '2022-09-28 02:14:52'),
(18, 'fc5924ed-6b8e-462e-9917-aa5a433eadee-1664297403', 5860, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '778D1EBB86E44452C93C7C908ED7EEA7BD2A23857E8F259083418F82916766AE', NULL, NULL, 0, '2022-09-28 02:50:03', '2022-09-28 02:50:03'),
(19, '3773d764-9a65-4aac-a62a-bf69cdd17624-1664297859', 5810, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'F293B9B15EF14B2309164D10C62FC4D96BF5C90E68E3B513724CF3FC89E79258', NULL, NULL, 0, '2022-09-28 02:57:40', '2022-09-28 02:57:40'),
(20, 'e8490000-2870-4d6d-8ceb-41d43fe59019-1664298225', 7543, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '2568E8A57171439AC434F78AD3119D87DCA47E00200B277026BBDC28B885BB13', NULL, NULL, 0, '2022-09-28 03:03:46', '2022-09-28 03:03:46'),
(21, 'c258ffc3-f96a-44e3-b7a3-555b144e2387-1664300541', 6343, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'EAB4261A6735E685BDD8CB74E0E6C16DB7E5DFB1FB3F0BF6D03A30D8FA5038BB', NULL, NULL, 0, '2022-09-28 03:42:22', '2022-09-28 03:42:22'),
(22, 'f3fbea13-c46c-42d3-a91c-5e1f95662c2e-1664303923', 8582, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '3F258AEFD2C5BA78870CB68D4989745376AA290CDFD7E10BDB9145B6527BE1EC', NULL, NULL, 0, '2022-09-28 04:38:44', '2022-09-28 04:38:44'),
(23, '79e412a5-24a1-46af-ac24-21c2f3fd1510-1664307518', 4903, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '3AA3F909D1A647516D2DAF701C1DE4F5BD3BC6C7DD6F8AF9D6563AD648F0FF92', NULL, NULL, 0, '2022-09-28 05:38:39', '2022-09-28 05:38:39'),
(24, 'fcefb1d6-41ec-47cd-98db-891085d159ab-1664351479', 5828, 27311, 1, '4.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '1939A0E0B89DF20E7933993B42444366099ACDE17ECD0C21D784442FCDA0390C', NULL, NULL, 0, '2022-09-28 17:51:20', '2022-09-28 17:51:20'),
(25, '027e068e-0f15-41a3-85e8-5911785268ef-1664402461', 8687, 27311, 1, '5.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '07F2757E93A413F102AA4C40E3240B144CDAE942F5809745C6EC2FE797196B66', NULL, NULL, 0, '2022-09-29 08:01:02', '2022-09-29 08:01:02'),
(26, 'f286e737-d210-4625-8a51-e5114198c792-1664615017', 5002, 27311, 1, '10000.00', 'انشاء عضوية جديدة من ماجد الجوفان', 'https://gate.rrra.org.sa/handle-payment/success?id=666', 'https://gate.rrra.org.sa/handle-payment/cancel?id=666', 'https://gate.rrra.org.sa/handle-payment/declined?id=666', 'ماجد', 'الجوفان', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', '887a233d94@boxomail.live', 'ar', 'B8247B501B986D21792854DAAC1F203C4BBF15F8ECF1D3EA9EDC870B5D00516E', NULL, NULL, 0, '2022-10-01 19:03:38', '2022-10-01 19:03:38'),
(27, '79b1e4ac-dd2f-4023-ad23-5c920e8dbd0e-1664615312', 8414, 27311, 1, '10000.00', 'طلب تجديد عضوية من المستفيد ماجد الجوفان ولمدة سنة', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'ماجد', 'الجوفان', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', '887a233d94@boxomail.live', 'ar', 'D1102D870FB3B25BE904776D5DB8A99D88E601710D494E3FAE2F6D09A49C11C4', NULL, NULL, 0, '2022-10-01 19:08:33', '2022-10-01 19:08:33'),
(28, 'b2333f37-195d-4685-a58a-c95acc40229c-1664617910', 8303, 27311, 1, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '833C0ED033B53941412CB8B7C8410C81584A1C687FE71F1CDD436FB9F341B24F', NULL, NULL, 0, '2022-10-01 19:51:51', '2022-10-01 19:51:51'),
(29, '43e7a6f2-693f-4db9-83da-64fde6873bc7-1664617984', 8292, 27311, 0, '4.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '38EAFD02F8E1A0E60521AB2F514CD5BFD4F356888CE9B676635F4877A4CE02AF', NULL, NULL, 0, '2022-10-01 19:53:05', '2022-10-01 19:53:05'),
(30, 'c535aa70-dfa5-42a8-8283-724703dce166-1664621037', 8198, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '68640E2EA8F3D6501C5BFB7AD5BF9FBC6EC1ACF391BB7B2752C5140DB7531007', NULL, NULL, 0, '2022-10-01 20:43:58', '2022-10-01 20:43:58'),
(31, 'e3b0348a-557d-48ec-b89e-94d5646a34d7-1664631125', 9224, 27311, 0, '4.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'D17CB608E68DC371E60F641828339C006AEFBECE236C7A0D47CB1439C4CAB803', NULL, NULL, 0, '2022-10-01 23:32:06', '2022-10-01 23:32:06'),
(32, '4e7be901-f867-48ab-a39b-1286d531580b-1664632055', 4615, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '65690049496A74B7A1A517B872AD01190F4B4175DC8243F701B6CFD38848EB52', NULL, NULL, 0, '2022-10-01 23:47:35', '2022-10-01 23:47:35'),
(33, '290f98ee-1e12-4934-beea-5b37dd2166ae-1664632203', 5071, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '0DD383A575B8CD13942B84E6DF7C48D3FBF311A9FC660EFF3DE631B9E9659913', NULL, NULL, 0, '2022-10-01 23:50:04', '2022-10-01 23:50:04'),
(34, '8a847a67-d9eb-43fe-bbaf-22fdd48e98ab-1664632515', 6045, 27311, 0, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'E68AF1CFB50B023082A41DDA1D2914965FBD099151B5248889380EDE58920C23', NULL, NULL, 0, '2022-10-01 23:55:15', '2022-10-01 23:55:15'),
(35, '039287f4-21ac-44f0-812a-da687f951e90-1664632752', 6064, 27311, 0, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'A7EADF2135BFC72A230B7F0CA2CB03CEE039D1438E502CFCB02EBD75950B3649', NULL, NULL, 0, '2022-10-01 23:59:12', '2022-10-01 23:59:12'),
(36, 'b7d0161c-d888-47bf-b54d-2fdb2efe0738-1664632810', 5635, 27311, 0, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'ED572D819B6CF4BC1D9A7B5FDB2CD0067C413EF8E77D557F421D95A3E1363E7E', NULL, NULL, 0, '2022-10-02 00:00:11', '2022-10-02 00:00:11'),
(37, 'be8f5344-9350-48bf-98d6-60487409141d-1664633062', 5200, 27311, 0, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '36CE00297FDB44B392EB0422EBDAC8E28B3CC894899C9AF737DB115D1D068B41', NULL, NULL, 0, '2022-10-02 00:04:23', '2022-10-02 00:04:23'),
(38, 'b8acf40b-175e-4869-ae9e-ec3f12787a21-1664633127', 4867, 27311, 0, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '412B181808B838F8420CA9F7CDF12FEBD6E7E607C6AE18CD812904916BB39303', NULL, NULL, 0, '2022-10-02 00:05:28', '2022-10-02 00:05:28'),
(39, 'c1e15106-6137-420a-82f3-17eb7290f5da-1664633420', 9526, 27311, 0, '55.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'E3923B81DCCB99396FC8AB9F1907F5664AD10E8B2A5C328138BC5FB16FEB3F3C', NULL, NULL, 0, '2022-10-02 00:10:21', '2022-10-02 00:10:21'),
(40, '5ba95cd4-b8f4-49cf-bdca-373cbbb7a159-1664633779', 9192, 27311, 0, '300.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنة', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '9693CC6A73ED6161FA61837BCEA26CCF6D33930AC1B7457422892A4BF591633D', NULL, NULL, 0, '2022-10-02 00:16:20', '2022-10-02 00:16:20'),
(41, 'fda3f8ae-7216-401b-a691-3ffc9ac7b4a5-1664639460', 8805, 27311, 0, '100.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '94702B4D63116FEEDFF07D180C23A9ECB4CEDA5857E6A4D8A864B06A3323DCAD', NULL, NULL, 0, '2022-10-02 01:51:01', '2022-10-02 01:51:01'),
(42, '2d1d8d18-3894-4cd3-a1fa-8fca0f1eb543-1664645644', 8424, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '5B9C16DED95F0F971BA5B69FA8E924D9BCE132B8326DE34C9B984D51786E87D2', NULL, NULL, 0, '2022-10-02 03:34:05', '2022-10-02 03:34:05'),
(43, '80b41b1a-a7e8-40c7-9152-b20f54f4d8af-1664714946', 6917, 27311, 1, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '28D8B3E7BE22D650BAF392C52FADE6187265CAFC8744D5B66FE250F4CD750382', NULL, NULL, 0, '2022-10-02 22:49:07', '2022-10-02 22:49:07'),
(44, '8a3cb4c9-edca-4649-a0a9-d0f72d8e0d95-1665230515', 9308, 27311, 1, '600.00', 'طلب تجديد عضوية من المستفيد عبده شاور ولمدة سنتين', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'B89C34D624A7F91B96FA757408AD84CCAAAA587823D117EDC1BC53D46138C317', NULL, NULL, 0, '2022-10-08 22:01:56', '2022-10-08 22:01:56'),
(45, '461c5e12-d7d7-40f6-b116-9e8167a9e1bf-1665311368', 9781, 27311, 1, '50.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '2E3D71472DB4DA06B277A1A09919308ED86A82B06925CF08ADDC0307BD0D5E99', NULL, NULL, 0, '2022-10-09 20:29:29', '2022-10-09 20:29:29'),
(46, 'f576c675-a72e-4501-ac8e-2ea7d34a8f57-1665311728', 9136, 27311, 0, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '2059889032CC9C3B822727D29FE3AE27370A60455C0E0EC78CA6CD4BECD4364C', NULL, NULL, 0, '2022-10-09 20:35:28', '2022-10-09 20:35:28'),
(47, '453a43f8-f7df-4675-8086-408c58fdab00-1665312011', 4283, 27311, 1, '1.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', 'CEA8184E65E700D9B39FA990D526851E448F777F2E55966E81F79D3697B6372A', NULL, NULL, 0, '2022-10-09 20:40:12', '2022-10-09 20:40:12'),
(48, 'fde9b313-265e-48be-b996-2f58acdbe810-1666215095', 9377, 27311, 1, '300.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنة', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'E4D08D17576340D7ED279483DCC5B7B46E2B293E7D4BD19B8533B4B594DEA177', NULL, NULL, 0, '2022-10-19 22:31:37', '2022-10-19 22:31:37'),
(49, '256512c8-d01b-4dad-bca4-80b4ab89f944-1666215234', 5209, 27311, 1, '300.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنة', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'B271FC1DC46423196828AFB4D0BD6C8207043BC0AD2185D2D02C91A2681E3F07', NULL, NULL, 0, '2022-10-19 22:33:56', '2022-10-19 22:33:56'),
(50, 'c87303db-2d33-42ab-915f-d562524e6cd5-1666215929', 4745, 27311, 1, '600.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنتين', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'BCCF5A98E25A18C20405867844E936A33CB1898C823F404ACA76532682C58B56', NULL, NULL, 0, '2022-10-19 22:45:31', '2022-10-19 22:45:31'),
(51, '4378c564-6c69-4d68-a0ed-991021b3b4f4-1666217366', 7523, 27311, 1, '600.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنتين', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '2A123E90B08E8C04527E4491D73210C82F2FFFF69546FFDB09A380B68D638066', NULL, NULL, 0, '2022-10-19 23:09:28', '2022-10-19 23:09:28'),
(52, '01982433-890e-46fd-8fd9-70d583702901-1666217593', 8365, 27311, 1, '900.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة 3 سنوات', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '0CB76B8A5180B4F9D8F1C7EB2BAA18E05B499C509CAE11743BC1D414F247363D', NULL, NULL, 0, '2022-10-19 23:13:14', '2022-10-19 23:13:14'),
(53, '653a49eb-d36d-4900-b75c-7095307743fa-1666219554', 4693, 27311, 1, '600.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنتين', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'CAA5D5585A5FEE25CDAC7101F6F38AE1D7FE1B1A1964F7339867EAE81EF56A8D', NULL, NULL, 0, '2022-10-19 23:45:55', '2022-10-19 23:45:55'),
(54, 'f7aeac65-b64d-4915-a97b-65aa6d75c6e2-1666225823', 8145, 27311, 1, '300.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنة', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'C1DC398C0994B2DE72DE5E68FF1C7B202A8FC4A8C503E9DDBACFEC67B9CC386F', NULL, NULL, 0, '2022-10-20 01:30:24', '2022-10-20 01:30:24'),
(55, 'f4e24d58-a54c-4d9d-8dca-0153016708f3-1666226202', 5518, 27311, 1, '100000.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنتين', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '4B4C531FC5A212B14FDB3C230396D9E13AA677BFA3ACD33BE7C80941B5E451EF', NULL, NULL, 0, '2022-10-20 01:36:44', '2022-10-20 01:36:44'),
(56, 'de66f4d1-a2bc-4f51-bbd0-5facc12a7406-1666226568', 7994, 27311, 1, '75000.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة 3 سنوات', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'A80374B53B566AEEFF4BE5B9B061E64493E7D0FD677EFA3A8F8C460BC43C567E', NULL, NULL, 0, '2022-10-20 01:42:50', '2022-10-20 01:42:50'),
(57, '70dab10a-658a-42f7-a5e2-6b10a9e8a0ab-1666226618', 5241, 27311, 1, '75000.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة 3 سنوات', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'F27DFFF8D4F4DB4CA27C00E4627328DE51593B6495B0B1C92CFA7D0F091D554D', NULL, NULL, 0, '2022-10-20 01:43:41', '2022-10-20 01:43:41'),
(58, '7af10ff7-ef0e-48f7-b58f-01867b6e288c-1666226663', 6159, 27311, 1, '200.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنتين', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '5E6BE01D7D59E72E8D1207DA2A15905899EB10CD30E2912231F65FAB14D4B845', NULL, NULL, 0, '2022-10-20 01:44:26', '2022-10-20 01:44:26'),
(59, 'c3fb35c6-f2be-4932-93ab-02eac7d93435-1666226734', 6569, 27311, 1, '100.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة سنة', 'http://localhost:8000/handle-payment/success?id=1', 'http://localhost:8000/handle-payment/cancel?id=1', 'http://localhost:8000/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', 'EACB93480F2D82B7A73D73EE316F491E8FF8C7B4637378A7B09D3E6250B0CC19', NULL, NULL, 0, '2022-10-20 01:45:37', '2022-10-20 01:45:37'),
(60, '12ca472d-b5c6-4436-b9f3-c95550dc29ba-1667604314', 9594, 27311, 1, '444.00', 'تبرع لجمعية المتقاعدين بمنطقة الرياض', 'http://gate.rrra.org.sa/handle-payment/success?id=1', 'http://gate.rrra.org.sa/handle-payment/cancel?id=1', 'http://gate.rrra.org.sa/handle-payment/declined?id=1', 'john', 'mark', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'info@rrr.org.sa', 'ar', '87EB52CED180F42B0245B1D7EC17428904E67B10DC8688C4933558B6A168D1C9', NULL, NULL, 0, '2022-11-05 09:25:16', '2022-11-05 09:25:16'),
(61, 'b7a01ae9-2be3-49fa-90dc-2a431375bd74-1667604533', 4649, 27311, 1, '900.00', 'طلب تجديد عضوية من العضو عبده شاور ولمدة 3 سنوات', 'https://gate.rrra.org.sa/handle-payment/success?id=1', 'https://gate.rrra.org.sa/handle-payment/cancel?id=1', 'https://gate.rrra.org.sa/handle-payment/declined?id=1', 'عبده', 'شاور', '354', 'elhammad', 'rasheed', NULL, '22456', 'sa', 'abdoushawer93@gmail.com', 'ar', '1DBF94A4ADC2B9C74C4553F7A884C397AA5B0A35C78952A406A25F6DA8DA9A09', NULL, NULL, 0, '2022-11-05 09:28:54', '2022-11-05 09:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fourth_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'قيد المراجعة',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `first_name`, `second_name`, `third_name`, `fourth_name`, `email`, `phone_number`, `record`, `field_id`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'عبده', 'سعيد', 'فهيم', 'شاور', 'abdoushawer93@gmail.com', '966590909090', '1234567890', 5, 'سارى', '2022-09-19 21:04:57', '2022-09-19 21:23:10'),
(2, 'ماجد', 'سعد', 'خالد', 'العجمي', 'majed@test.com', '966599887666', '1081444444', 5, 'قيد المراجعة', '2022-10-01 19:14:19', '2022-10-01 19:14:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_content`
--
ALTER TABLE `about_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`),
  ADD KEY `membership_type_id` (`membership_type_id`),
  ADD KEY `qualification_id` (`qualification_id`);

--
-- Indexes for table `beneficiary_password_resets`
--
ALTER TABLE `beneficiary_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_content`
--
ALTER TABLE `donation_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maillist`
--
ALTER TABLE `maillist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_types`
--
ALTER TABLE `membership_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_type_id` (`order_type_id`),
  ADD KEY `nationality_id_2` (`nationality_id`);

--
-- Indexes for table `order_types`
--
ALTER TABLE `order_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renewal_requests`
--
ALTER TABLE `renewal_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beneficiary_id_12` (`beneficiary_id`),
  ADD KEY `transaction_id` (`amount`),
  ADD KEY `membership_type_id_12` (`membership_type_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `supervisor_password_resets`
--
ALTER TABLE `supervisor_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `field_id_2` (`field_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_content`
--
ALTER TABLE `about_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation_content`
--
ALTER TABLE `donation_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maillist`
--
ALTER TABLE `maillist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_types`
--
ALTER TABLE `order_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `renewal_requests`
--
ALTER TABLE `renewal_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD CONSTRAINT `membership_type_id` FOREIGN KEY (`membership_type_id`) REFERENCES `membership_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `qualification_id` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `nationality_id_2` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_type_id` FOREIGN KEY (`order_type_id`) REFERENCES `order_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `renewal_requests`
--
ALTER TABLE `renewal_requests`
  ADD CONSTRAINT `beneficiary_id_12` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiaries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `membership_type_id_12` FOREIGN KEY (`membership_type_id`) REFERENCES `membership_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `field_id_2` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
