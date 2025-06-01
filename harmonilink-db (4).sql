-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 03:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harmonilink-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `discarded`
--

CREATE TABLE `discarded` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `discarded_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discarded`
--

INSERT INTO `discarded` (`id`, `user_id`, `discarded_user_id`, `created_at`) VALUES
(1, 4, 3, '2025-05-28 19:05:29'),
(2, 7, 5, '2025-05-29 06:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favorited_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorited_user_id`, `created_at`) VALUES
(1, 2, 1, '2025-05-28 11:23:26'),
(3, 1, 2, '2025-05-28 11:32:00'),
(4, 3, 2, '2025-05-28 18:48:44'),
(5, 3, 1, '2025-05-28 18:49:00'),
(7, 4, 2, '2025-05-28 19:05:51'),
(8, 6, 4, '2025-05-29 00:42:24'),
(9, 6, 5, '2025-05-29 00:44:15'),
(10, 6, 1, '2025-05-29 00:47:44'),
(11, 7, 1, '2025-05-29 06:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `mixtapes`
--

CREATE TABLE `mixtapes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `source` varchar(20) DEFAULT 'sidebar',
  `is_public` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mixtapes`
--

INSERT INTO `mixtapes` (`id`, `user_id`, `name`, `bio`, `photo_url`, `created_at`, `updated_at`, `source`, `is_public`) VALUES
(1, 1, 'my mix', '<3', 'uploads/1748431111442-924710186.jpg', '2025-05-28 11:19:12', '2025-05-28 11:19:12', 'onboarding', 0),
(2, 2, 'sophia\'s', '<3', 'uploads/1748431275791-32256391.jpg', '2025-05-28 11:21:56', '2025-05-28 11:21:56', 'onboarding', 0),
(18, 2, 'broken k b', 'ouch sakit po!', 'uploads/1748450492007-663340823.jpg', '2025-05-28 16:43:07', '2025-05-28 17:29:37', 'sidebar', 0),
(22, 3, 'love songs', 'hart', 'uploads/1748458046751-346680689.jpg', '2025-05-28 18:48:25', '2025-05-28 18:48:25', 'onboarding', 0),
(23, 3, 'apple', 'fruit', 'uploads/1748458178231-450458710.jpg', '2025-05-28 18:50:07', '2025-05-28 18:51:09', 'sidebar', 0),
(25, 3, 'barbie', 'pink', 'uploads/1748458812184-726430360.jpg', '2025-05-28 19:00:12', '2025-05-28 19:00:12', 'sidebar', 0),
(26, 4, 'jpop!', 'yay', 'uploads/1748459028934-505040935.jpg', '2025-05-28 19:04:39', '2025-05-28 19:04:39', 'onboarding', 0),
(27, 4, 'ken', 'ryan gosling <3', 'uploads/1748459192718-187106445.jpg', '2025-05-28 19:06:56', '2025-05-28 19:08:48', 'sidebar', 0),
(29, 5, 'diva', 'diva!', 'uploads/1748459938484-602678334.jpg', '2025-05-28 19:19:45', '2025-05-28 19:19:45', 'onboarding', 0),
(30, 6, 'party!', 'party mixx', 'uploads/1748479123886-142471389.jpg', '2025-05-29 00:39:34', '2025-05-29 00:39:34', 'onboarding', 0),
(31, 6, 'valentine', 'love mix', 'uploads/1748479212261-43810127.jpg', '2025-05-29 00:40:57', '2025-05-29 00:41:26', 'sidebar', 0),
(32, 6, 'pink', 'pink vibes', 'uploads/1748479580163-475235075.jpg', '2025-05-29 00:46:20', '2025-05-29 00:46:20', 'sidebar', 0),
(33, 7, 'Playlist #1', 'All about OPM', 'uploads/1748501071626-191782666.jpg', '2025-05-29 06:45:57', '2025-05-29 06:45:57', 'onboarding', 0),
(35, 8, 'ramen', 'yummy', 'uploads/1748501809695-137573846.jpg', '2025-05-29 06:57:45', '2025-05-29 06:57:45', 'onboarding', 0),
(36, 9, 'flower', '<3', 'uploads/1748501977186-450793073.jpg', '2025-05-29 07:00:01', '2025-05-29 07:00:01', 'onboarding', 0),
(37, 10, '.', '.', 'uploads/1748502135094-48425598.jpg', '2025-05-29 07:02:55', '2025-05-29 07:02:55', 'onboarding', 0),
(38, 12, 'we', 'awe', 'uploads/1748780533091-686018795.jpg', '2025-06-01 12:22:27', '2025-06-01 12:22:27', 'onboarding', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mixtape_songs`
--

CREATE TABLE `mixtape_songs` (
  `id` int(11) NOT NULL,
  `mixtape_id` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `artwork_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mixtape_songs`
--

INSERT INTO `mixtape_songs` (`id`, `mixtape_id`, `song_name`, `artist_name`, `preview_url`, `artwork_url`) VALUES
(1, 1, 'Lover', 'Taylor Swift', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/4f/fd/c7/4ffdc746-c0de-999b-eb93-2753eaa18978/mzaf_8574966813156057641.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/49/3d/ab/493dab54-f920-9043-6181-80993b8116c9/19UMGIM53909.rgb.jpg/100x100bb.jpg'),
(2, 1, 'Gnarly', 'KATSEYE', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/89/f0/32/89f0328a-5ace-bb03-a999-0c4be7cc0d23/mzaf_1250595743166562923.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/3d/74/b7/3d74b780-502c-91eb-646a-7db6f1110259/25UMGIM37397.rgb.jpg/100x100bb.jpg'),
(3, 1, 'Debut', 'KATSEYE', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/bc/19/ef/bc19ef0e-446f-78ab-fe0f-a0266fdeeef0/mzaf_9912874792904533518.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/08/fb/6a/08fb6a32-8856-f1f4-148b-8959bff0efb0/24UMGIM67773.rgb.jpg/100x100bb.jpg'),
(4, 2, 'Butter', 'BTS', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/fd/16/2a/fd162abd-e7bb-2dda-0966-802045d9e6b5/mzaf_16580954066183351090.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/41/c8/dc/41c8dcd8-f883-adde-c762-dc49383b6b58/196006720476_Cover.jpg/100x100bb.jpg'),
(5, 2, 'Spring Day (Japanese Version)', 'BTS', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/53/28/1c/53281c34-35f4-da3b-269e-5460686cefa1/mzaf_17464117039785315497.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/3a/49/f6/3a49f65b-600b-b220-beea-6917f2cda62b/00602567531531.rgb.jpg/100x100bb.jpg'),
(6, 2, 'Blood Sweat & Tears (Japanese Version)', 'BTS', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/49/de/bd/49debd88-a095-b3ad-01a3-7339aa67531c/mzaf_2520710864380293626.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/3a/49/f6/3a49f65b-600b-b220-beea-6917f2cda62b/00602567531531.rgb.jpg/100x100bb.jpg'),
(88, 18, 'Beer Lite', 'The Itchyworms', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/5a/1a/11/5a1a1113-ae69-5e36-f446-9ebeda12e7a3/mzaf_7316257525018580083.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music122/v4/60/42/4b/60424bbe-b006-51e1-c473-a50998be7c84/3610155799727_Cover.jpg/100x100bb.jpg'),
(89, 18, 'Backburner', 'NIKI', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/6d/0e/d2/6d0ed28c-b550-b359-42db-1f775a5fb7c5/mzaf_8882763170580714189.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/19/b6/51/19b6510e-4edb-1bc5-1aff-9d21c889cdae/190296084300.jpg/100x100bb.jpg'),
(105, 22, '(They Long to Be) Close to You (1991 Remix)', 'Carpenters', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/2b/b9/ef/2bb9ef17-23a2-c077-679a-75673f4f8cd3/mzaf_9789818267836467514.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/8a/60/e3/8a60e389-06f5-b075-4ae9-f3e77e583b13/00602567822059.rgb.jpg/100x100bb.jpg'),
(106, 22, 'Lover', 'Taylor Swift', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/4f/fd/c7/4ffdc746-c0de-999b-eb93-2753eaa18978/mzaf_8574966813156057641.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/49/3d/ab/493dab54-f920-9043-6181-80993b8116c9/19UMGIM53909.rgb.jpg/100x100bb.jpg'),
(107, 22, 'Love Story (Taylor’s Version)', 'Taylor Swift', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/02/74/0c/02740c34-4c67-8dcb-8536-68b063c4599d/mzaf_16446498107479592761.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/c3/d0/1c/c3d01c88-73e7-187e-fd62-e1744de979a6/21UMGIM09915.rgb.jpg/100x100bb.jpg'),
(111, 23, 'Apple', 'Charli xcx', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/4b/c7/99/4bc79997-921c-06d0-3613-5013188ed79a/mzaf_8761475538849718083.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/01/89/82/01898256-a4b0-3067-108d-72302a87e1f6/075679666130.jpg/100x100bb.jpg'),
(112, 23, '365', 'Charli xcx', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/ee/16/be/ee16be5b-6d38-327c-463c-b0ae05a500ef/mzaf_10915980644411753187.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/01/89/82/01898256-a4b0-3067-108d-72302a87e1f6/075679666130.jpg/100x100bb.jpg'),
(117, 25, 'Queen of the Waves', 'Barbie', 'https://audio-ssl.itunes.apple.com/itunes-assets/Music2/v4/f7/1d/7a/f71d7aab-f50e-635b-6ed6-755dee239feb/mzaf_1550834807806644320.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Features/53/ac/8a/dj.xuyysgbv.jpg/100x100bb.jpg'),
(118, 25, 'All for One', 'Barbie', 'https://audio-ssl.itunes.apple.com/itunes-assets/Music/v4/99/dc/ec/99dcec71-7abd-4adb-a151-6d0fa5b98e19/mzaf_4305646557731252935.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music/4b/d4/c8/mzi.fjftanfa.jpg/100x100bb.jpg'),
(119, 26, 'J-Pop', 'Koresawa', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/07/8d/c9/078dc92e-03f0-1f19-bfa9-ebec8e8f5d06/mzaf_12560433193393498212.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/54/4f/c0/544fc057-ba6d-9855-17e4-0e2c7aa73004/RECO-4.jpg/100x100bb.jpg'),
(120, 26, 'Ussewa', 'Akami Chiyo & Said', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/27/3f/b8/273fb819-9bad-c4d9-b052-24092cf8fdea/mzaf_13356763652597589707.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/2c/1b/1f/2c1b1fce-4754-27fc-9515-a688160cd9c0/730530082398_cover.jpg/100x100bb.jpg'),
(121, 26, 'Miku', 'Anamanaguchi & Hatsune Miku', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/6a/b2/0a/6ab20a2f-63d0-1118-a550-1825817b6a64/mzaf_2344909269726999527.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music122/v4/bb/fd/53/bbfd53be-a7ee-b4f2-50f4-443bd796fd6e/644110954190.png/100x100bb.jpg'),
(124, 27, 'I’m Just Ken', 'Ryan Gosling', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/57/94/67/579467b1-b399-e8e9-df19-5ba8f7eef3ac/mzaf_14172449658158727135.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/c0/54/97/c05497aa-c19f-bf4f-de29-71edf30fbefb/075679688767.jpg/100x100bb.jpg'),
(125, 27, 'Ken', 'Rupert Gregson-Williams', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/76/14/37/76143756-4310-0d23-2f50-1252b0110642/mzaf_8721350964949548795.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music/f4/30/ac/mzi.zhjmedlg.jpg/100x100bb.jpg'),
(128, 29, 'Bubblegum Bitch', 'Marina and The Diamonds', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2d/c2/47/2dc2477a-1bfb-d35c-dd82-e41551098ed8/mzaf_508563079517522819.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/4b/dc/88/4bdc8837-8831-9277-a89c-db947c21ea36/825646580118.jpg/100x100bb.jpg'),
(129, 29, 'My Humps (Single Version)', 'Black Eyed Peas', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/58/fe/5a/58fe5a25-b04b-9a43-2a90-77a480fa1d10/mzaf_3525536821197946477.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/fc/9f/bf/fc9fbf5c-870e-173b-3dcd-441376f3dc2b/00602577028373.rgb.jpg/100x100bb.jpg'),
(130, 29, 'PUSH 2 START', 'Tyla', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/3a/f3/85/3af385a2-f662-74f6-3601-a3dcdf2778f1/mzaf_5206016143787549848.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/2a/cc/48/2acc48c7-e092-6b83-ce65-ff80ac6eb51c/196872520118.jpg/100x100bb.jpg'),
(131, 30, 'Party (feat. André 3000)', 'Beyoncé', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/7c/0c/35/7c0c354f-8c89-5036-a9e5-3c0c093f0644/mzaf_8061922618762160451.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/c9/6b/3f/c96b3ff3-9cf6-4ce6-05aa-9f11474bd569/886443938373.jpg/100x100bb.jpg'),
(132, 30, 'Party In the U.S.A.', 'Miley Cyrus', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/48/64/ba/4864ba50-2cdf-62ba-5b43-147af19459f9/mzaf_7832507139895440694.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/1f/29/3e/1f293e38-987a-9a77-d004-c866acebdac1/09BVMIM00838.rgb.jpg/100x100bb.jpg'),
(133, 30, 'Disco', 'Surf Curse', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2c/b4/ad/2cb4adc4-025c-9bc6-b847-2450f3d4d243/mzaf_7140086730849724916.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/4f/3e/fd/4f3efd12-78b9-8215-dc2d-ebf17762605a/075679775481.jpg/100x100bb.jpg'),
(140, 31, 'Love Story (Taylor’s Version)', 'Taylor Swift', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/02/74/0c/02740c34-4c67-8dcb-8536-68b063c4599d/mzaf_16446498107479592761.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/c3/d0/1c/c3d01c88-73e7-187e-fd62-e1744de979a6/21UMGIM09915.rgb.jpg/100x100bb.jpg'),
(141, 31, 'Die With A Smile', 'Lady Gaga & Bruno Mars', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/e9/d1/46/e9d14699-9505-493e-cd27-a501095c81ff/mzaf_7283388936457278756.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music221/v4/11/ae/f2/11aef294-f57c-bab9-c9fc-529162984e62/24UMGIM85348.rgb.jpg/100x100bb.jpg'),
(142, 31, 'Grenade', 'Bruno Mars', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/eb/e3/11/ebe3111c-31c8-db50-53fe-b4b84615b94e/mzaf_122558449473593076.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/52/b1/45/52b1452b-229e-78db-231b-7b43fa0077cc/075679956491.jpg/100x100bb.jpg'),
(143, 31, 'Love Never Felt So Good', 'Michael Jackson & Justin Timberlake', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/ef/f7/b0/eff7b02a-00f0-0f63-6a03-6914fe7da1b3/mzaf_7822593566558616322.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/83/15/cc/8315ccdd-5a8d-8344-fa15-72e4cb64145e/886444533171.jpg/100x100bb.jpg'),
(144, 32, 'Angel', 'PinkPantheress', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/af/94/db/af94db0a-7746-1f15-164a-342771c3a0c1/mzaf_13245720400635110323.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/b7/0a/bc/b70abcc1-b835-99c5-ea32-6fee2155605a/075679675002.jpg/100x100bb.jpg'),
(145, 32, 'Boy\'s a liar', 'PinkPantheress', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/f7/90/5a/f7905a81-0329-4b97-8495-4da24baaed2a/mzaf_3076988214388777487.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/8a/3f/ef/8a3fef38-bbba-4644-74f1-64e3c8894e1e/5054197466762.jpg/100x100bb.jpg'),
(146, 32, 'Life in Color', 'Barbie', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/10/cf/44/10cf4400-cc2b-2e57-46b9-f82185ded417/mzaf_17011651119553134426.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/77/de/5e/77de5ef6-9dfc-3b2b-c2d5-3ad16e03218a/093624891796.jpg/100x100bb.jpg'),
(147, 33, 'Tibok', 'Earl Agustin', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/d8/e3/09/d8e3094d-8c2d-9f37-1a54-ac20495d7136/mzaf_4652005308566937463.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/ef/49/ba/ef49baef-1e82-620b-453f-81c3a9122a50/cover.jpg/100x100bb.jpg'),
(148, 33, 'You\'ll Be In My Heart', 'NIKI', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/0a/f2/4d/0af24d7c-48da-1a74-f7a2-204cbcedf346/mzaf_5930962614751251469.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/57/f9/e9/57f9e9ef-eb79-b242-c8ae-8e1e9477a139/5054197341953.jpg/100x100bb.jpg'),
(149, 33, 'Multo', 'Cup of Joe', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/41/58/0b/41580b9c-4583-6089-4478-19c30715e6ab/mzaf_7015057589897402343.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/0b/e2/18/0be218a4-45ea-5c35-03f2-b0c2026e3504/cover.jpg/100x100bb.jpg'),
(153, 35, 'Ramen', 'Medasin', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/8f/33/47/8f334769-0cdd-cec4-5691-98ca16be11ae/mzaf_9941719350290573061.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/50/e5/4d/50e54d9d-2fcf-5555-4d97-387d91c0e6e6/00602567937197.rgb.jpg/100x100bb.jpg'),
(154, 35, 'Noodle', 'Trick Daddy', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/e8/67/90/e86790f0-130c-1a35-21d6-48bb497efd7e/mzaf_9893721115420167057.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d8/fd/2c/d8fd2c3a-c664-e431-6a6f-38373c225ac9/mzi.mxitanut.jpg/100x100bb.jpg'),
(155, 35, 'Chicken Noodle Soup', 'KIDZ BOP Kids', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/18/49/33/18493391-ffa2-1261-dff7-e01294963799/mzaf_12818219504906915265.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/be/f2/5d/bef25d48-f162-1072-0dcc-8d6a6da3251c/00793018930437.rgb.jpg/100x100bb.jpg'),
(156, 36, 'Rose', 'James Horner', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/44/06/6f/44066f95-c6a6-9306-2574-34ee755dcd9a/mzaf_18195312845244046793.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music/73/19/01/mzi.apneoski.jpg/100x100bb.jpg'),
(157, 36, 'Sunflower (Spider-Man: Into the Spider-Verse)', 'Post Malone & Swae Lee', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/80/e6/9f/80e69ff0-2e40-12f6-7d6a-46f18fc278c0/mzaf_141349396850874628.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/4b/30/2c/4b302cb6-7a14-5464-4e97-0577e9d0be49/18UMGIM82277.rgb.jpg/100x100bb.jpg'),
(158, 36, 'Daisy (From \"One Man\'s Trash\")', 'Michael Penn', 'https://audio-ssl.itunes.apple.com/itunes-assets/Music6/v4/f1/43/69/f14369c9-4dac-489e-cec0-40d29e5fc3c9/mzaf_6267377814957463125.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/08/ee/a5/08eea5be-3096-407d-e2bc-cfca87e96b6d/075679944825.jpg/100x100bb.jpg'),
(159, 37, 'Creep', 'Radiohead', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/17/44/12/174412a1-090a-5565-c8d7-14aaae1e95b2/mzaf_12108298616773662013.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music211/v4/78/a4/ec/78a4ec7b-c6d6-c9c8-441b-660486e56a89/634904077969.png/100x100bb.jpg'),
(160, 37, 'I Won\'t Let You Down', 'Meghan Trainor', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/02/37/41/02374167-867e-4550-e6a5-a965634ae219/mzaf_3638848447615381443.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/1d/7f/e8/1d7fe8de-01ff-8d7b-1cbc-17743d8b102a/886445746600.jpg/100x100bb.jpg'),
(161, 37, 'Emo', 'blink-182', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/05/52/fa/0552fafa-4df2-4253-a8a6-92fa494e88de/mzaf_15662819050355937498.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music112/v4/18/73/f1/1873f1a7-4422-0000-9bbf-9f723f08cd9c/16UMGIM35642.rgb.jpg/100x100bb.jpg'),
(162, 38, 'C\'mon C\'mon', 'The Von Bondies', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview211/v4/f2/f7/3f/f2f73f4c-9bc1-3ecb-873c-60f9dd41f892/mzaf_3727384547379313415.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/bf/55/6a/bf556a23-3836-38a2-be03-edf74909b334/s02.wpdwqcuf.jpg/100x100bb.jpg'),
(163, 38, 'Twelve Notes (Dialogue)', 'A Star Is Born Cast', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview112/v4/69/8d/27/698d2783-bf94-8410-b9d6-d9b587d62dc4/mzaf_15327418944109147000.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/b1/9f/ef/b19fef51-79de-a940-e8ab-9e4e07b04d96/18UMGIM53752.rgb.jpg/100x100bb.jpg'),
(164, 38, 'GDFR (feat. Sage the Gemini & Lookas)', 'Flo Rida', 'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/5a/b6/6b/5ab66b5d-aebc-0903-6725-025e775b2537/mzaf_10389079026562184857.plus.aac.p.m4a', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/a9/aa/d0/a9aad0bb-e8a3-768f-8555-4b644a17553e/075679930903.jpg/100x100bb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `poll_length_seconds` int(11) DEFAULT 86400
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `user_id`, `question`, `created_at`, `poll_length_seconds`) VALUES
(1, 2, 'new here! why did you favorite me?', '2025-05-28 19:22:53', 18000),
(2, 1, 'sabrina carpenter is overrated...', '2025-05-28 19:25:07', 86400),
(3, 3, 'which is better for 20th bday song for ig story?', '2025-05-29 02:55:51', 432000),
(4, 6, 'which makes you more focused while studying?', '2025-05-29 08:43:57', 86400),
(5, 7, 'pls vote :)', '2025-05-29 14:48:28', 620160);

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `option_text` text NOT NULL,
  `votes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_options`
--

INSERT INTO `poll_options` (`id`, `poll_id`, `option_text`, `votes`) VALUES
(1, 1, 'i love your mix!', 0),
(2, 1, 'BTS fan', 0),
(3, 1, 'just because ', 0),
(4, 2, 'TRUE', 0),
(5, 2, 'lol NO', 0),
(6, 3, 'pushing 20', 0),
(7, 3, '20 something', 0),
(8, 3, 'lover', 0),
(9, 4, 'lo fi', 0),
(10, 4, 'classical', 0),
(11, 4, 'SILENCE', 0),
(12, 5, 'Yes', 0),
(13, 5, 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `voted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_votes`
--

INSERT INTO `poll_votes` (`id`, `user_id`, `poll_id`, `option_id`, `voted_at`) VALUES
(1, 1, 1, 2, '2025-05-28 19:25:35'),
(2, 2, 2, 5, '2025-05-29 00:38:06'),
(3, 3, 2, 4, '2025-05-29 02:49:08'),
(4, 4, 2, 5, '2025-05-29 03:05:41'),
(5, 7, 2, 5, '2025-05-29 14:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `onboarding_completed` tinyint(1) DEFAULT 0,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT 0,
  `otp_code` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `onboarding_completed`, `reset_token`, `reset_token_expiry`, `email_verified`, `otp_code`, `otp_expiry`) VALUES
(1, 'shaina', 'eggos4eva@gmail.com', '$2b$10$Dpv2BQXXnPUDlaGb9oA9uuF7BHDOM5N3vCCHqq27VmPXrFtHtxHAK', 1, NULL, NULL, 0, NULL, NULL),
(2, 'sophia', 'sophia@gmail.com', '$2b$10$Jn21KxdNdQo.JSPPyfRwkOG0y2LRaVEa27HdcPiyd1Ea852kvwxcq', 1, NULL, NULL, 0, NULL, NULL),
(3, 'manonn', 'manon@gmail.com', '$2b$10$DfmqxGH0awis384EwFvZkejQnJ8fLdTNEizsn2a1bCunllr8CWLGG', 1, NULL, NULL, 0, NULL, NULL),
(4, 'yoonchae', 'yoonchae@gmail.com', '$2b$10$UFMwP.V42YW.xFuj48oWj.Xd2Q6LQtrdbdfewWhyI9FucX0VDW0JO', 1, NULL, NULL, 0, NULL, NULL),
(5, 'dani', 'dani@gmail.com', '$2b$10$w6DkhK9hXQ/wa2eJ6C./C.E.mUh2Gd.2gndXsLG80mYlEaojEhUkq', 1, NULL, NULL, 0, NULL, NULL),
(6, 'lara', 'lara@gmail.com', '$2b$10$DYS7a8nUxrea88CNABbuBu8S.wnnXGOr6FORBCmcGXguoNO2JBJPO', 1, NULL, NULL, 0, NULL, NULL),
(7, 'Angeles', 'angelesridley@gmail.com', '$2b$10$rQVVNVBeikX7ykZgV1BK1OOs9UBWARD3qJj.WkVl7ZuKoVbgfx4we', 1, NULL, NULL, 0, NULL, NULL),
(8, 'naruto', 'naruto@gmail.com', '$2b$10$51wGP5G5Lqm66Ph8pwhVMOSeE9Wa7NaO6gAZntvr85kN95/Jn6VU2', 1, NULL, NULL, 0, NULL, NULL),
(9, 'sakura', 'sakura@gmail.com', '$2b$10$yu.XNqxevjqAps0eKA.mee2WkDZH2dfhh3t4nFfuNLMXdGK1QX/tq', 1, NULL, NULL, 0, NULL, NULL),
(10, 'sasuke', 'sasuke@gmail.com', '$2b$10$emy3AnuA1cTfkds2yRwFYuLTdAsp4AQR4dzTyn4u.umWzUvtqRUq6', 1, NULL, NULL, 0, NULL, NULL),
(11, 'cath', 'cath@gmail.com', '$2b$10$NklEIYPaMDqrBmQ5Oj0RzuDPo8EmfoKyApjPyv7rDsyURuAbsg8Wq', 0, NULL, NULL, 0, NULL, NULL),
(12, 'main', 'main23@gmail.com', '$2b$10$Blq6qEeSwGpCCDhhvLSEi.bAj7sxSCnMVMTdVHPa607/wCd7rHGLq', 1, NULL, NULL, 0, NULL, NULL),
(13, 'main8', 'taceke2111@claspira.com', '$2b$10$S1aN1oVifbW2Sw7zE4srvu5nA7xoY0ggstv/C/JQpn2UwvKPkS/lW', 0, NULL, NULL, 0, '987699', '2025-06-01 20:47:49'),
(14, 'main5', 'hegeri1125@claspira.com', '$2b$10$w0liBOOnxMErLITGA29nC.Md1/loibXCgCu5kCQ9w4H.BkIcw.x8C', 0, NULL, NULL, 0, '240502', '2025-06-01 20:52:16'),
(15, 'main34', 'ciyovec527@claspira.com', '$2b$10$NTtGM2jZxgUU0U0Ma5DtA.o0x91MDZL1Nj11aH7qSI7nQIPcO1Ea6', 0, NULL, NULL, 1, NULL, NULL),
(16, 'main231', 'horise4128@claspira.com', '$2b$10$BA1qQr.UyUT9p4TspnZliOaPZJ06WloJGnegfhztPBVy8f1zQVyPW', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('Female','Male','Non-Binary','Other') NOT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `birthday`, `gender`, `bio`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 1, '2005-05-27', 'Female', 'hi, im shaina', '2025-05-28 11:18:25', '2025-05-28 11:29:53', 'http://localhost:3000/uploads/1748431781439-383231226.jpg'),
(2, 2, '2001-01-01', 'Female', 'hi, it\'s sophia', '2025-05-28 11:21:10', '2025-05-28 16:38:51', 'http://localhost:3000/uploads/1748450329929-487405384.jpg'),
(3, 3, '2004-01-30', 'Female', 'heyy!', '2025-05-28 18:47:15', '2025-05-28 18:51:39', 'http://localhost:3000/uploads/1748458290365-564502565.jpg'),
(4, 4, '2005-07-07', 'Non-Binary', 'its yoonchae here', '2025-05-28 19:03:40', '2025-05-28 19:07:40', 'http://localhost:3000/uploads/1748459255537-879536904.jpg'),
(5, 5, '2000-05-14', 'Female', 'slay ', '2025-05-28 19:18:47', '2025-05-28 19:18:47', NULL),
(6, 6, '2003-08-14', 'Non-Binary', 'hey its da diva', '2025-05-29 00:38:38', '2025-05-29 00:44:56', 'http://localhost:3000/uploads/1748479485517-698445393.jpg'),
(7, 7, '2005-08-04', 'Male', 'Wala lang, hindi ko na kaya', '2025-05-29 06:44:06', '2025-05-29 06:44:06', NULL),
(8, 8, '1995-07-20', 'Male', 'dattebayo', '2025-05-29 06:56:40', '2025-05-29 06:56:40', NULL),
(9, 9, '1994-02-04', 'Female', 'im sakura!', '2025-05-29 06:59:31', '2025-05-29 07:00:22', 'http://localhost:3000/uploads/1748502021284-142992312.jpg'),
(10, 10, '1994-03-01', 'Male', 'emo sasuke', '2025-05-29 07:02:08', '2025-05-29 07:02:08', NULL),
(11, 11, '2005-03-27', '', 'hii', '2025-05-29 07:56:41', '2025-05-29 07:56:41', NULL),
(12, 12, '1990-12-23', 'Female', 'we', '2025-06-01 12:22:07', '2025-06-01 12:22:46', 'http://localhost:3000/uploads/1748780563558-370120347.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discarded`
--
ALTER TABLE `discarded`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`discarded_user_id`),
  ADD KEY `discarded_user_id` (`discarded_user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`favorited_user_id`),
  ADD KEY `favorited_user_id` (`favorited_user_id`);

--
-- Indexes for table `mixtapes`
--
ALTER TABLE `mixtapes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mixtape_songs`
--
ALTER TABLE `mixtape_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mixtape_id` (`mixtape_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`poll_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discarded`
--
ALTER TABLE `discarded`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mixtapes`
--
ALTER TABLE `mixtapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mixtape_songs`
--
ALTER TABLE `mixtape_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discarded`
--
ALTER TABLE `discarded`
  ADD CONSTRAINT `discarded_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discarded_ibfk_2` FOREIGN KEY (`discarded_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`favorited_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mixtapes`
--
ALTER TABLE `mixtapes`
  ADD CONSTRAINT `mixtapes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mixtape_songs`
--
ALTER TABLE `mixtape_songs`
  ADD CONSTRAINT `mixtape_songs_ibfk_1` FOREIGN KEY (`mixtape_id`) REFERENCES `mixtapes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD CONSTRAINT `poll_votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_2` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_votes_ibfk_3` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
