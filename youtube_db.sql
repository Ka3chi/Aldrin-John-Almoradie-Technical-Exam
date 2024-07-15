-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 15, 2024 at 12:32 PM
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
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `profile_picture_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `channel_id`, `name`, `description`, `profile_picture_url`) VALUES
(1, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'MrBeast', 'SUBSCRIBE FOR A COOKIE!\n\nAccomplishments:\n- Raised $20,000,000 To Plant 20,000,000 Trees\n- Removed 30,000,000 pounds of trash from the ocean\n- Built wells in Africa\n- helped 1,000 blind people see\n- helped 1,000 deaf people hear\n- Given millions to charity\n- Started my own snack company Feastables\n- Donated over 100 cars lol\n- Gave away a private island (twice)\n- Gave away 1 million dollars in one video\n- Counted to 100k\n- Read the Dictionary\n- Read Bee Movie Script\n- Read Longest English Word\n- Watched Paint Dry\n- Ubering Across America\n- Watched It\'s Every Day Bro For 10 Hours\n- Ran a marathon in the world\'s largest shoes\n- Adopted every dog in a shelter\n- Bought $1,000,000 in lottery tickets\n- Sold houses for $1\n- I got buried alive\n- Recreated Squid Game in real life\n- Gave away a chocolate factory\n- Gave away private jet\n- Survived 50 hours in Antarctica\nYou get the point haha\n\n\n*Do not email me asking for money, I give away money because it makes me happy :)', 'https://yt3.ggpht.com/fxGKYucJAVme-Yz4fsdCroCFCrANWqw0ql4GYuvx8Uq4l_euNJHgE-w9MTkLQA805vWCi-kE0g=s800-c-k-c0x00ffffff-no-rj');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `channel_id`, `video_id`, `title`, `description`, `thumbnail_url`, `video_url`, `created_at`) VALUES
(1, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'XhuisK0bTSA', 'Pass The Phone To…', '', 'https://i.ytimg.com/vi/XhuisK0bTSA/hqdefault.jpg', 'https://www.youtube.com/watch?v=XhuisK0bTSA', '2024-07-14 07:26:29'),
(2, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'lkCRPp7cnP8', 'How Many Balloons Does It Take To Fly?', '', 'https://i.ytimg.com/vi/lkCRPp7cnP8/hqdefault.jpg', 'https://www.youtube.com/watch?v=lkCRPp7cnP8', '2024-07-14 07:26:29'),
(3, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'KkCXLABwHP0', 'I Built 100 Houses And Gave Them Away!', 'Thank you for making this video possible Techo: https://techo.org/ FFTP: https://foodforthepoor.org/housing-jamaica/ New Story: ...', 'https://i.ytimg.com/vi/KkCXLABwHP0/hqdefault.jpg', 'https://www.youtube.com/watch?v=KkCXLABwHP0', '2024-07-14 07:26:29'),
(4, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'PWirijQkH4M', 'World’s Deadliest Obstacle Course!', 'The obstacles in this video only get crazier as it goes on… Head to Walmart for Cirkul\'s BIGGEST. DROP. EVER. ⌛️ (while ...', 'https://i.ytimg.com/vi/PWirijQkH4M/hqdefault.jpg', 'https://www.youtube.com/watch?v=PWirijQkH4M', '2024-07-14 07:26:29'),
(5, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'U_LlX4t0A9I', '$10,000 Every Day You Survive In The Wilderness', 'They survived longer than I expected lol Feast like a Beast with Zaxby\'s new MrBeast Box, served with 4 Chicken Fingerz™, ...', 'https://i.ytimg.com/vi/U_LlX4t0A9I/hqdefault.jpg', 'https://www.youtube.com/watch?v=U_LlX4t0A9I', '2024-07-14 07:26:29'),
(6, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'T8I165Qxeo8', 'Sprinting with More and More Money', '', 'https://i.ytimg.com/vi/T8I165Qxeo8/hqdefault.jpg', 'https://www.youtube.com/watch?v=T8I165Qxeo8', '2024-07-14 07:26:29'),
(7, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'i-9V21MqlhY', 'Giving 1000 Phones Away', '', 'https://i.ytimg.com/vi/i-9V21MqlhY/hqdefault.jpg', 'https://www.youtube.com/watch?v=i-9V21MqlhY', '2024-07-14 07:26:29'),
(8, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'f0cXJ6mJxGc', 'Bottle Head Smashing World Record Attempt!', '', 'https://i.ytimg.com/vi/f0cXJ6mJxGc/hqdefault.jpg', 'https://www.youtube.com/watch?v=f0cXJ6mJxGc', '2024-07-14 07:26:29'),
(9, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'F6PqxbvOCUI', 'Protect The Yacht, Keep It!', 'This video did not go how I expected it to Craft your perfect defense from a combination of powerful Monkey Towers and awesome ...', 'https://i.ytimg.com/vi/F6PqxbvOCUI/hqdefault.jpg', 'https://www.youtube.com/watch?v=F6PqxbvOCUI', '2024-07-14 07:26:29'),
(10, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'oA4LSZvX4iE', 'Ages 1-100 Try My Chocolate', '', 'https://i.ytimg.com/vi/oA4LSZvX4iE/hqdefault.jpg', 'https://www.youtube.com/watch?v=oA4LSZvX4iE', '2024-07-14 07:26:29'),
(11, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'ZKxnjszkZto', 'Spot The Hidden People For $10,000', '', 'https://i.ytimg.com/vi/ZKxnjszkZto/hqdefault.jpg', 'https://www.youtube.com/watch?v=ZKxnjszkZto', '2024-07-14 07:26:29'),
(12, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '8_gdcaX9Xqk', 'Would You Split Or Steal $250,000?', '', 'https://i.ytimg.com/vi/8_gdcaX9Xqk/hqdefault.jpg', 'https://www.youtube.com/watch?v=8_gdcaX9Xqk', '2024-07-14 07:26:29'),
(13, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'snUyLbGx6U4', 'Buy Feastables, Win Unlimited Money', '', 'https://i.ytimg.com/vi/snUyLbGx6U4/hqdefault.jpg', 'https://www.youtube.com/watch?v=snUyLbGx6U4', '2024-07-14 07:26:29'),
(14, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Pv0iVoSZzN8', 'In 10 Minutes This Room Will Explode!', 'I didn\'t expect that to happen… There\'s no jumping through hoops (or plate glass windows) with T-Mobile. Customers can get ...', 'https://i.ytimg.com/vi/Pv0iVoSZzN8/hqdefault.jpg', 'https://www.youtube.com/watch?v=Pv0iVoSZzN8', '2024-07-14 07:26:29'),
(15, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'CWbV3NItSdY', 'The World&#39;s Fastest Cleaners', '', 'https://i.ytimg.com/vi/CWbV3NItSdY/hqdefault.jpg', 'https://www.youtube.com/watch?v=CWbV3NItSdY', '2024-07-14 07:26:29'),
(16, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'l-nMKJ5J3Uc', 'Ages 1 - 100 Decide Who Wins $250,000', 'I can\'t believe who they picked Thanks Top Troops for sponsoring this video. Download Top Troops at ...', 'https://i.ytimg.com/vi/l-nMKJ5J3Uc/hqdefault.jpg', 'https://www.youtube.com/watch?v=l-nMKJ5J3Uc', '2024-07-14 07:26:29'),
(17, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'XE1Qyss8GIY', 'Guess The Gift, Keep It', '', 'https://i.ytimg.com/vi/XE1Qyss8GIY/hqdefault.jpg', 'https://www.youtube.com/watch?v=XE1Qyss8GIY', '2024-07-14 07:26:29'),
(18, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'imhY0pe-Sd8', 'Anything You Touch, You Keep!', '', 'https://i.ytimg.com/vi/imhY0pe-Sd8/hqdefault.jpg', 'https://www.youtube.com/watch?v=imhY0pe-Sd8', '2024-07-14 07:26:29'),
(19, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'erLbbextvlY', '7 Days Stranded On An Island', 'I can\'t believe we actually did this Send money around the world with Western Union. New customers get their first online ...', 'https://i.ytimg.com/vi/erLbbextvlY/hqdefault.jpg', 'https://www.youtube.com/watch?v=erLbbextvlY', '2024-07-14 07:26:29'),
(20, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'OnTTThIzuNU', 'Keep Track Of Car, Win $10,000', '', 'https://i.ytimg.com/vi/OnTTThIzuNU/hqdefault.jpg', 'https://www.youtube.com/watch?v=OnTTThIzuNU', '2024-07-14 07:26:29'),
(21, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'mKdjycj-7eE', 'Protect The Lamborghini, Keep It!', 'I still can\'t believe what happened in this video lol Check out the mind-blowing Galaxy AI on the Samsung Galaxy S24 Ultra.', 'https://i.ytimg.com/vi/mKdjycj-7eE/hqdefault.jpg', 'https://www.youtube.com/watch?v=mKdjycj-7eE', '2024-07-14 07:26:29'),
(22, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'tWYsfOSY9vY', 'I Survived 7 Days In An Abandoned City', 'This was one of the hardest challenges we\'ve ever done A deal so good it feels like stealing - score a FREE double insulated ...', 'https://i.ytimg.com/vi/tWYsfOSY9vY/hqdefault.jpg', 'https://www.youtube.com/watch?v=tWYsfOSY9vY', '2024-07-14 07:26:29'),
(23, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'sH48lKbayNU', 'Unboxing My 200M Subscriber Play Button', '', 'https://i.ytimg.com/vi/sH48lKbayNU/hqdefault.jpg', 'https://www.youtube.com/watch?v=sH48lKbayNU', '2024-07-14 07:26:29'),
(24, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'AFXoSFNMwIA', 'I Filled Chandler’s Car With Feastables', '', 'https://i.ytimg.com/vi/AFXoSFNMwIA/hqdefault.jpg', 'https://www.youtube.com/watch?v=AFXoSFNMwIA', '2024-07-14 07:26:29'),
(25, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'AjwAdtlRKf8', 'Buy Feastables, Win $10,000', '', 'https://i.ytimg.com/vi/AjwAdtlRKf8/hqdefault.jpg', 'https://www.youtube.com/watch?v=AjwAdtlRKf8', '2024-07-14 07:26:29'),
(26, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'KOEfDvr4DcQ', 'Face Your Biggest Fear To Win $800,000', 'I can\'t believe how far he got Face your fears and start your business on Shopify right now https://shopify.com/mrbeast Update: ...', 'https://i.ytimg.com/vi/KOEfDvr4DcQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=KOEfDvr4DcQ', '2024-07-14 07:26:29'),
(27, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'krsBRQbOPQ4', '$1 vs $250,000,000 Private Island!', 'Watch until the end to see how crazy the last island is Play my ALL NEW MrBeast\'s Disco Dop level in Stumble Guys today!', 'https://i.ytimg.com/vi/krsBRQbOPQ4/hqdefault.jpg', 'https://www.youtube.com/watch?v=krsBRQbOPQ4', '2024-07-14 07:26:29'),
(28, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '7ESeQBeikKs', 'Protect $500,000 Keep It!', 'He spent so much money lol Grow your money with the Mighty Oak debit card from Acorns. Sign up at ...', 'https://i.ytimg.com/vi/7ESeQBeikKs/hqdefault.jpg', 'https://www.youtube.com/watch?v=7ESeQBeikKs', '2024-07-14 07:26:29'),
(29, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'K_CbgLpvH9E', 'I Spent 7 Days In Solitary Confinement', 'I started going insane at the end of this challenge Bet you can\'t guess MrBeast\'s favorite flavor - find out & get one for FREE at ...', 'https://i.ytimg.com/vi/K_CbgLpvH9E/hqdefault.jpg', 'https://www.youtube.com/watch?v=K_CbgLpvH9E', '2024-07-14 07:26:29'),
(30, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'lOKASgtr6kU', 'I Saved 100 Dogs From Dying', 'I\'m so happy all of these dogs will be going to great homes Get an exclusive Surfshark VPN deal! Enter promo code MRBEAST for ...', 'https://i.ytimg.com/vi/lOKASgtr6kU/hqdefault.jpg', 'https://www.youtube.com/watch?v=lOKASgtr6kU', '2024-07-14 07:26:29'),
(31, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '9RhWXPcKBI8', 'Survive 100 Days Trapped, Win $500,000', 'This video got crazier the longer we kept filming lol Don\'t miss your chance to get on MrBeast\'s gift list! Submit your wish in the ...', 'https://i.ytimg.com/vi/9RhWXPcKBI8/hqdefault.jpg', 'https://www.youtube.com/watch?v=9RhWXPcKBI8', '2024-07-14 07:26:29'),
(32, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'ZVt9ZJfWV1c', 'Feeding A Dog $1 vs $10,000 Steak', '', 'https://i.ytimg.com/vi/ZVt9ZJfWV1c/hqdefault.jpg', 'https://www.youtube.com/watch?v=ZVt9ZJfWV1c', '2024-07-14 07:26:29'),
(33, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'rWBOITBjitE', 'Could You Walk Up A Skyscraper?', '', 'https://i.ytimg.com/vi/rWBOITBjitE/hqdefault.jpg', 'https://www.youtube.com/watch?v=rWBOITBjitE', '2024-07-14 07:26:29'),
(34, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'tnTPaLOaHz8', '$10,000 Every Day You Survive In A Grocery Store', 'I didn\'t expect him to stay that long Shop Kanga Coolers, powered by Shopify: https://go.shop.app/kangacoolers Special thanks to: ...', 'https://i.ytimg.com/vi/tnTPaLOaHz8/hqdefault.jpg', 'https://www.youtube.com/watch?v=tnTPaLOaHz8', '2024-07-14 07:26:29'),
(35, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Wdjh81uH6FU', '$1 vs $10,000,000 Job!', 'I can\'t believe they actually hired me lol Try Immortals of Aveum today with a free trial for Playstation 5 and Xbox Series X|S, and a ...', 'https://i.ytimg.com/vi/Wdjh81uH6FU/hqdefault.jpg', 'https://www.youtube.com/watch?v=Wdjh81uH6FU', '2024-07-14 07:26:29'),
(36, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '7dYTw-jAYkY', 'I Spent 7 Days Buried Alive', 'Please don\'t try this at home lol Verizon 5G Home Internet for as low as $35/month. Opt-in and you could get a $200 Amazon.com ...', 'https://i.ytimg.com/vi/7dYTw-jAYkY/hqdefault.jpg', 'https://www.youtube.com/watch?v=7dYTw-jAYkY', '2024-07-14 07:26:29'),
(37, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'AjZDwxt7S8w', 'I Gave Away A House On Halloween', '', 'https://i.ytimg.com/vi/AjZDwxt7S8w/hqdefault.jpg', 'https://www.youtube.com/watch?v=AjZDwxt7S8w', '2024-07-14 07:26:29'),
(38, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'aZnqqXaT02g', 'Giving Car Keys Instead Of Candy On Halloween', '', 'https://i.ytimg.com/vi/aZnqqXaT02g/hqdefault.jpg', 'https://www.youtube.com/watch?v=aZnqqXaT02g', '2024-07-14 07:26:29'),
(39, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'mwKJfNYwvm8', 'I Built 100 Wells In Africa', 'Click the link below to donate https://www.beastphilanthropy.org/campaign/mrbeast-100-wells New Merch - https://mrbeast.store ...', 'https://i.ytimg.com/vi/mwKJfNYwvm8/hqdefault.jpg', 'https://www.youtube.com/watch?v=mwKJfNYwvm8', '2024-07-14 07:26:29'),
(40, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'l9_8_pDTmis', 'Furthest Away From Me Wins $10,000', '', 'https://i.ytimg.com/vi/l9_8_pDTmis/hqdefault.jpg', 'https://www.youtube.com/watch?v=l9_8_pDTmis', '2024-07-14 07:26:29'),
(41, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'n7x4Jj9pdH8', 'World’s Most Expensive Bed', '', 'https://i.ytimg.com/vi/n7x4Jj9pdH8/hqdefault.jpg', 'https://www.youtube.com/watch?v=n7x4Jj9pdH8', '2024-07-14 07:26:29'),
(42, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'QjvpjXdgugA', 'World’s Deadliest Laser Maze!', 'I can\'t believe what happened at the end… Drink PRIME Hydration, now at Walmart, Target, 7-Eleven, and Kroger Family Stores.', 'https://i.ytimg.com/vi/QjvpjXdgugA/hqdefault.jpg', 'https://www.youtube.com/watch?v=QjvpjXdgugA', '2024-07-14 07:26:29'),
(43, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'jGAJCAuV3pQ', 'World’s Most Expensive Coffee', '', 'https://i.ytimg.com/vi/jGAJCAuV3pQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=jGAJCAuV3pQ', '2024-07-14 07:26:29'),
(44, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'c0v8OPItCOg', '$100,000,000 Bathroom', '', 'https://i.ytimg.com/vi/c0v8OPItCOg/hqdefault.jpg', 'https://www.youtube.com/watch?v=c0v8OPItCOg', '2024-07-14 07:26:29'),
(45, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'SHOV58tdNiI', 'Miranda Cosgrove Said What?', '', 'https://i.ytimg.com/vi/SHOV58tdNiI/hqdefault.jpg', 'https://www.youtube.com/watch?v=SHOV58tdNiI', '2024-07-14 07:26:29'),
(46, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '3ryID_SwU5E', '$1 vs $100,000,000 House!', 'I can\'t believe how expensive the last house is In case you want to buy the $139000000 House...', 'https://i.ytimg.com/vi/3ryID_SwU5E/hqdefault.jpg', 'https://www.youtube.com/watch?v=3ryID_SwU5E', '2024-07-14 07:26:29'),
(47, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'IemzxkkzI5s', 'I Tipped A Pizza Delivery Driver A Car', '', 'https://i.ytimg.com/vi/IemzxkkzI5s/hqdefault.jpg', 'https://www.youtube.com/watch?v=IemzxkkzI5s', '2024-07-14 07:26:29'),
(48, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '3OFj6l2tQ9s', 'World&#39;s Most Dangerous Trap!', 'I can\'t believe how crazy the last room is Grab my FREE Jail Time Jimmy skin when you download Stumble Guys! Jump into the ...', 'https://i.ytimg.com/vi/3OFj6l2tQ9s/hqdefault.jpg', 'https://www.youtube.com/watch?v=3OFj6l2tQ9s', '2024-07-14 07:26:29'),
(49, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'AZlBZuS4hr0', 'Guess The Gift, Keep It', '', 'https://i.ytimg.com/vi/AZlBZuS4hr0/hqdefault.jpg', 'https://www.youtube.com/watch?v=AZlBZuS4hr0', '2024-07-14 07:26:29'),
(50, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Gx6VeIIbWwM', 'Spot The Hidden People For $10,000', '', 'https://i.ytimg.com/vi/Gx6VeIIbWwM/hqdefault.jpg', 'https://www.youtube.com/watch?v=Gx6VeIIbWwM', '2024-07-14 07:26:29'),
(51, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'CAOY8EKH1qU', 'I Paid A Random Student’s College Tuition', '', 'https://i.ytimg.com/vi/CAOY8EKH1qU/hqdefault.jpg', 'https://www.youtube.com/watch?v=CAOY8EKH1qU', '2024-07-14 07:26:29'),
(52, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'IQxea9UB1nQ', '$100,000,000 Car Doors', '', 'https://i.ytimg.com/vi/IQxea9UB1nQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=IQxea9UB1nQ', '2024-07-14 07:26:29'),
(53, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'KrLj6nc516A', '$1 vs $100,000,000 Car!', 'I have no idea why the last car was so expensive See how cool the Samsung Galaxy Z Flip5 is for yourself: ...', 'https://i.ytimg.com/vi/KrLj6nc516A/hqdefault.jpg', 'https://www.youtube.com/watch?v=KrLj6nc516A', '2024-07-14 07:26:29'),
(54, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'zgLhCT7aFCA', 'Extreme Home Makeover!', '', 'https://i.ytimg.com/vi/zgLhCT7aFCA/hqdefault.jpg', 'https://www.youtube.com/watch?v=zgLhCT7aFCA', '2024-07-14 07:26:29'),
(55, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'vBpQ1SlfVtU', 'Lamborghini Vs World&#39;s Largest Shredder', 'who let me do this lol Click here to join Creator League now: http://www.creatorleague.gg/mrbeast Buy a pass before September ...', 'https://i.ytimg.com/vi/vBpQ1SlfVtU/hqdefault.jpg', 'https://www.youtube.com/watch?v=vBpQ1SlfVtU', '2024-07-14 07:26:29'),
(56, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'SGzWIoLAzmY', 'Feeding A Cat $10 Vs $10,000 Sushi', '', 'https://i.ytimg.com/vi/SGzWIoLAzmY/hqdefault.jpg', 'https://www.youtube.com/watch?v=SGzWIoLAzmY', '2024-07-14 07:26:29'),
(57, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'NnNZLCl78Ao', 'Make This Kick, Win Super Bowl Tickets', '', 'https://i.ytimg.com/vi/NnNZLCl78Ao/hqdefault.jpg', 'https://www.youtube.com/watch?v=NnNZLCl78Ao', '2024-07-14 07:26:29'),
(58, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'NTZhwAldqwg', 'Metal Pipe Vs School Bus', '', 'https://i.ytimg.com/vi/NTZhwAldqwg/hqdefault.jpg', 'https://www.youtube.com/watch?v=NTZhwAldqwg', '2024-07-14 07:26:29'),
(59, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'J_z-W4UVHkw', 'Every Country On Earth Fights For $250,000!', 'New Merch - https://mrbeast.store Thanks! https://fie.org Check out Viewstats! - https://www.viewstats.com/ SUBSCRIBE OR I TAKE ...', 'https://i.ytimg.com/vi/J_z-W4UVHkw/hqdefault.jpg', 'https://www.youtube.com/watch?v=J_z-W4UVHkw', '2024-07-14 07:26:29'),
(60, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'mKIhHNznt4s', 'Can You Beat A Girl In Arm Wrestling?', '', 'https://i.ytimg.com/vi/mKIhHNznt4s/hqdefault.jpg', 'https://www.youtube.com/watch?v=mKIhHNznt4s', '2024-07-14 07:26:29'),
(61, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'jObOjhUkf50', '$1 vs $250,000 Vacation!', 'I did not expect the $250000 vacation to be that crazy… Thank you teamLab Planets TOKYO for letting us film! Thanks to the ...', 'https://i.ytimg.com/vi/jObOjhUkf50/hqdefault.jpg', 'https://www.youtube.com/watch?v=jObOjhUkf50', '2024-07-14 07:26:29'),
(62, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'O3YVBJ2n5xg', 'I Ate The World’s Most Poisonous Fish', '', 'https://i.ytimg.com/vi/O3YVBJ2n5xg/hqdefault.jpg', 'https://www.youtube.com/watch?v=O3YVBJ2n5xg', '2024-07-14 07:26:29'),
(63, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'yhB3BgJyGl8', '7 Days Stranded At Sea', 'Launch a store on Shopify right now https://shopify.com/mrbeast Go get your free box of Feastables while supplies lasts ...', 'https://i.ytimg.com/vi/yhB3BgJyGl8/hqdefault.jpg', 'https://www.youtube.com/watch?v=yhB3BgJyGl8', '2024-07-14 07:26:29'),
(64, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'CP82DAKzL1U', 'I Traded My Car At a Red Light', '', 'https://i.ytimg.com/vi/CP82DAKzL1U/hqdefault.jpg', 'https://www.youtube.com/watch?v=CP82DAKzL1U', '2024-07-14 07:26:29'),
(65, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'stUofW3whpE', 'I Buried Treasure in the Bermuda Triangle', '', 'https://i.ytimg.com/vi/stUofW3whpE/hqdefault.jpg', 'https://www.youtube.com/watch?v=stUofW3whpE', '2024-07-14 07:26:29'),
(66, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '48h57PspBec', '$1 vs $1,000,000,000 Yacht!', 'Buy Feastables anywhere to get a secret MrBeast video: https://bit.ly/_feastables Go watch Pete Davidson\'s new show \"Bupkis\" ...', 'https://i.ytimg.com/vi/48h57PspBec/hqdefault.jpg', 'https://www.youtube.com/watch?v=48h57PspBec', '2024-07-14 07:26:29'),
(67, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'ooAwCOP67GQ', 'Do Pawnshops Scam You?', '', 'https://i.ytimg.com/vi/ooAwCOP67GQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=ooAwCOP67GQ', '2024-07-14 07:26:29'),
(68, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'FM7Z-Xq8Drc', 'Ages 1 - 100 Fight For $500,000', 'Claim a piece of MrBeast history — buy a prop in the Shop app for $0.01 https://go.shop.app/mrbeast Thanks to Lickd for providing ...', 'https://i.ytimg.com/vi/FM7Z-Xq8Drc/hqdefault.jpg', 'https://www.youtube.com/watch?v=FM7Z-Xq8Drc', '2024-07-14 07:26:29'),
(69, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'ykRq_rp7NhM', 'I Got Naruto to Subscribe to Me', '', 'https://i.ytimg.com/vi/ykRq_rp7NhM/hqdefault.jpg', 'https://www.youtube.com/watch?v=ykRq_rp7NhM', '2024-07-14 07:26:29'),
(70, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '9fNNhWH-P2E', 'I Made An Egg Sandwich With @BayashiTV_', '', 'https://i.ytimg.com/vi/9fNNhWH-P2E/hqdefault.jpg', 'https://www.youtube.com/watch?v=9fNNhWH-P2E', '2024-07-14 07:26:29'),
(71, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'WTOm65IZneg', '1,000 Deaf People Hear For The First Time', 'Your support gives the Gift of Hearing. Please click here! https://hearingthecall.org/give/ SIGN LANGUAGE RESOURCES ...', 'https://i.ytimg.com/vi/WTOm65IZneg/hqdefault.jpg', 'https://www.youtube.com/watch?v=WTOm65IZneg', '2024-07-14 07:26:29'),
(72, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '8kggT2ej-lo', 'Would You Pet a Cheetah in Africa?', '', 'https://i.ytimg.com/vi/8kggT2ej-lo/hqdefault.jpg', 'https://www.youtube.com/watch?v=8kggT2ej-lo', '2024-07-14 07:26:29'),
(73, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Y4-gFIfGXiQ', 'Would you go on a Blind Date in Italy?', '', 'https://i.ytimg.com/vi/Y4-gFIfGXiQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=Y4-gFIfGXiQ', '2024-07-14 07:26:29'),
(74, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '1WEAJ-DFkHE', '$1 vs $500,000 Plane Ticket!', 'Check out ALL of MrBeast\'s awesome jobs or discover a new opportunity at https://bit.ly/MrBeast_ZipRecruiter New Merch ...', 'https://i.ytimg.com/vi/1WEAJ-DFkHE/hqdefault.jpg', 'https://www.youtube.com/watch?v=1WEAJ-DFkHE', '2024-07-14 07:26:29'),
(75, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Y0cBiGUuB1Y', 'I Sent a Subscriber to Disneyland', 'New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/Y0cBiGUuB1Y/hqdefault.jpg', 'https://www.youtube.com/watch?v=Y0cBiGUuB1Y', '2024-07-14 07:26:29'),
(76, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'YLt73w6criQ', 'I Paid A Real Assassin To Try To Kill Me', 'File with TurboTax today to get your biggest refund possible http://bit.ly/MrBeastxTurboTax New Merch - https://mrbeast.store ...', 'https://i.ytimg.com/vi/YLt73w6criQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=YLt73w6criQ', '2024-07-14 07:26:29'),
(77, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'lglIQkCHO0g', 'Do Men Lie About Their Height?', 'New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/lglIQkCHO0g/hqdefault.jpg', 'https://www.youtube.com/watch?v=lglIQkCHO0g', '2024-07-14 07:26:29'),
(78, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'TJ2ifmkGGus', '1,000 Blind People See For The First Time', 'If you would like to support more of this sight-restoring work, visit https://seeintl.org/join Try My MrBeast Snacks!', 'https://i.ytimg.com/vi/TJ2ifmkGGus/hqdefault.jpg', 'https://www.youtube.com/watch?v=TJ2ifmkGGus', '2024-07-14 07:26:29'),
(79, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '7IKab3HcfFk', 'I Survived 50 Hours In Antarctica', 'Check out my interview! http://bit.ly/Shopify-Behind-Beast Thank you to ALE https://antarctic-logistics.com/ Stream the Original ...', 'https://i.ytimg.com/vi/7IKab3HcfFk/hqdefault.jpg', 'https://www.youtube.com/watch?v=7IKab3HcfFk', '2024-07-14 07:26:29'),
(80, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'h5NvTTOlOtI', 'Hydraulic Press Vs Lamborghini', 'Hello Neighbor 2 is out now on PC & Consoles! It\'s time to find out what your creepy Neighbors are hiding.', 'https://i.ytimg.com/vi/h5NvTTOlOtI/hqdefault.jpg', 'https://www.youtube.com/watch?v=h5NvTTOlOtI', '2024-07-14 07:26:29'),
(81, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'se50viFJ0AQ', 'Would You Fly To Paris For A Baguette?', 'New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/se50viFJ0AQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=se50viFJ0AQ', '2024-07-14 07:26:29'),
(82, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '0CTp1a-aCUM', '100 Kids Vs 100 Adults For $500,000', 'The new Nerf Pro Gelfire x MrBeast blaster is available for preorder HERE: https://bit.ly/MrBeastxNerf Burst into battle with the Nerf ...', 'https://i.ytimg.com/vi/0CTp1a-aCUM/hqdefault.jpg', 'https://www.youtube.com/watch?v=0CTp1a-aCUM', '2024-07-14 07:26:29'),
(83, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'FD-0KG-h2-c', 'Gordon Ramsay Tries Most Expensive Chocolate Bar!', 'New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/FD-0KG-h2-c/hqdefault.jpg', 'https://www.youtube.com/watch?v=FD-0KG-h2-c', '2024-07-14 07:26:29'),
(84, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'kX3nB4PpJko', 'Last To Take Hand Off Jet, Keeps It!', 'Close this and watch to the end to see who wins! New Merch - https://mrbeast.store Check out Viewstats!', 'https://i.ytimg.com/vi/kX3nB4PpJko/hqdefault.jpg', 'https://www.youtube.com/watch?v=kX3nB4PpJko', '2024-07-14 07:26:29'),
(85, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'YlvcFJOE-OE', 'Giving iPhones Instead Of Candy on Halloween', 'New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/YlvcFJOE-OE/hqdefault.jpg', 'https://www.youtube.com/watch?v=YlvcFJOE-OE', '2024-07-14 07:26:29'),
(86, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'iogcY_4xGjo', '$1 vs $1,000,000 Hotel Room!', 'The hotel at the end is worth the wait! Download the Experian App: https://smart.link/n3op1gefxlzjn or Visit Experian.com/Boost.', 'https://i.ytimg.com/vi/iogcY_4xGjo/hqdefault.jpg', 'https://www.youtube.com/watch?v=iogcY_4xGjo', '2024-07-14 07:26:29'),
(87, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'S_CUEOBZ0P4', 'The Rock Vs MrBeast For $100,000', 'Winning totally Rocks! New Merch - https://shopmrbeast.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/S_CUEOBZ0P4/hqdefault.jpg', 'https://www.youtube.com/watch?v=S_CUEOBZ0P4', '2024-07-14 07:26:29'),
(88, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'gHzuabZUd6c', 'Survive 100 Days In Circle, Win $500,000', 'New Merch - https://mrbeast.store Check out Viewstats! - https://www.viewstats.com/ SUBSCRIBE OR I TAKE YOUR DOG ...', 'https://i.ytimg.com/vi/gHzuabZUd6c/hqdefault.jpg', 'https://www.youtube.com/watch?v=gHzuabZUd6c', '2024-07-14 07:26:29'),
(89, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '65fN_OUawjk', 'I Hunted 100 People!', 'We just opened our very first Beast Burger!! And I\'ll be working there all day tomorrow! Come visit us in the American Dream Mall ...', 'https://i.ytimg.com/vi/65fN_OUawjk/hqdefault.jpg', 'https://www.youtube.com/watch?v=65fN_OUawjk', '2024-07-14 07:26:29'),
(90, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'jdMNoQE3mIQ', 'I Survived A Plane Crash', 'Thanks again to the Coast Guard for the lift! New Merch - https://mrbeast.store Check out Viewstats! - https://www.viewstats.com/ ...', 'https://i.ytimg.com/vi/jdMNoQE3mIQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=jdMNoQE3mIQ', '2024-07-14 07:26:29'),
(91, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '2isYuQZMbdU', 'I Gave My 100,000,000th Subscriber An Island', 'Launch a store on Shopify, I\'ll buy from 100 random stores that do ▸ https://shopify.com/mrbeast New limited 100M merch drop ...', 'https://i.ytimg.com/vi/2isYuQZMbdU/hqdefault.jpg', 'https://www.youtube.com/watch?v=2isYuQZMbdU', '2024-07-14 07:26:29'),
(92, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'tVWWp1PqDus', '100 Boys Vs 100 Girls For $500,000', 'Giving away $25k on Current! Sign up and use my code “BEAST250” for a chance to win*: https://www.current.com/beast250 ...', 'https://i.ytimg.com/vi/tVWWp1PqDus/hqdefault.jpg', 'https://www.youtube.com/watch?v=tVWWp1PqDus', '2024-07-14 07:26:29'),
(93, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'vaIgyRoUkQI', 'I Didn’t Eat Food For 30 Days', 'This was one of my hardest videos. I went as long as possible not eating any food. New Chocolate - https://feastables.com/ Check ...', 'https://i.ytimg.com/vi/vaIgyRoUkQI/hqdefault.jpg', 'https://www.youtube.com/watch?v=vaIgyRoUkQI', '2024-07-14 07:26:29'),
(94, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'Hwybp38GnZw', 'I Built Willy Wonka&#39;s Chocolate Factory!', 'MILK Chocolate Win a Tesla or be in a MrBeast video - Buy now ▸ https://feastables.com SUBSCRIBE TO GORDON!', 'https://i.ytimg.com/vi/Hwybp38GnZw/hqdefault.jpg', 'https://www.youtube.com/watch?v=Hwybp38GnZw', '2024-07-14 07:26:29'),
(95, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'hD1YtmKXNb4', '$10,000 Every Day You Survive Prison', 'SUBSCRIBE IN THE NEXT 7 DAYS FOR A CHANCE TO WIN $10000! New Merch - https://mrbeast.store Check out Viewstats!', 'https://i.ytimg.com/vi/hD1YtmKXNb4/hqdefault.jpg', 'https://www.youtube.com/watch?v=hD1YtmKXNb4', '2024-07-14 07:26:29'),
(96, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'LnlKwzc_TNA', 'Would You Swim With Sharks For $100,000?', 'Try Experian Boost to boost your credit scores: https://smart.link/n3op1gefxlzjn Results may vary. See App Store or website for ...', 'https://i.ytimg.com/vi/LnlKwzc_TNA/hqdefault.jpg', 'https://www.youtube.com/watch?v=LnlKwzc_TNA', '2024-07-14 07:26:29'),
(97, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '3jS_yEK8qVI', 'World’s Most Dangerous Escape Room!', 'Buy my new chocolate bar: https://www.Feastables.com for a chance to win my chocolate factory in an upcoming video ...', 'https://i.ytimg.com/vi/3jS_yEK8qVI/hqdefault.jpg', 'https://www.youtube.com/watch?v=3jS_yEK8qVI', '2024-07-14 07:26:29'),
(98, 'UCX6OQ3DkcsbYNE6H8uQQuVA', '00NgUctWoLQ', 'Extreme $1,000,000 Hide And Seek', 'I didn\'t expect that to happen at the end I was so confused haha ...', 'https://i.ytimg.com/vi/00NgUctWoLQ/hqdefault.jpg', 'https://www.youtube.com/watch?v=00NgUctWoLQ', '2024-07-14 07:26:29'),
(99, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'x9TQ6culXIA', '$1,000,000 Influencer Tournament!', 'That was so close at the end I can\'t believe that happened!', 'https://i.ytimg.com/vi/x9TQ6culXIA/hqdefault.jpg', 'https://www.youtube.com/watch?v=x9TQ6culXIA', '2024-07-14 07:26:29'),
(100, 'UCX6OQ3DkcsbYNE6H8uQQuVA', 'QbJJwaVdgIs', 'I Got Hunted By The Military', 'I\'m not sure how they drove over that... it wasnt supposed to happen New Merch - https://mrbeast.store Check out Viewstats!', 'https://i.ytimg.com/vi/QbJJwaVdgIs/hqdefault.jpg', 'https://www.youtube.com/watch?v=QbJJwaVdgIs', '2024-07-14 07:26:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_id` (`channel_id`),
  ADD UNIQUE KEY `profile_picture_url` (`profile_picture_url`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_id` (`video_id`),
  ADD UNIQUE KEY `channel_id` (`channel_id`,`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
