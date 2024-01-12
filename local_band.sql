-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 11, 2024 at 08:09 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_band`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` varchar(50) NOT NULL COMMENT '專輯編號',
  `album_name` varchar(50) NOT NULL COMMENT '專輯名稱',
  `year` int(50) NOT NULL COMMENT '專輯發行年份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `year`) VALUES
('a_1', '晴れの日(晴天)', 2023),
('a_10', '我肯定在幾百年前就說過愛你', 2019),
('a_11', '愛在夏天', 2018),
('a_12', '你已不在乎的事', 2016),
('a_13', '帶你飛', 2023),
('a_14', '在凌晨睡著的自己', 2022),
('a_15', '給你一瓶魔法藥水', 2022),
('a_16', '好不容易', 2021),
('a_17', '寂寞留白', 2021),
('a_18', '愛在夏天-盛夏之約', 2021),
('a_19', '運氣來得若有似無', 2020),
('a_2', '又到天黑', 2023),
('a_20', '說我愛你的一百種方式(100 Ways)', 2020),
('a_21', '帶我去找夜生活', 2019),
('a_22', '法蘭西多士', 2019),
('a_23', '迷霧之子', 2017),
('a_24', '瓦合', 2023),
('a_25', '我先矛盾', 2018),
('a_26', '如常', 2020),
('a_27', '醜奴兒', 2015),
('a_28', '戀人群像物語', 2022),
('a_29', '多色寶山大王', 2021),
('a_3', '在未來的你跟我說聲嗨', 2022),
('a_30', '馬克吐溫', 2021),
('a_31', '我要你愛', 2019),
('a_32', 'Sound Check', 2018),
('a_33', '滾石40 滾石撞樂隊 40團拚經典 - 還是會寂寞', 2022),
('a_34', '金光閃閃', 2021),
('a_35', '殭屍王', 2020),
('a_36', '電火王', 2018),
('a_4', '我以為你不會出現', 2022),
('a_5', 'Live A Little', 2021),
('a_6', '像是在天堂', 2021),
('a_7', '只管向前', 2021),
('a_8', '新世界', 2020),
('a_9', '電視劇 用九柑仔店', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `band_id` varchar(50) NOT NULL COMMENT '樂團編號',
  `band_name` varchar(50) NOT NULL COMMENT '樂團名稱',
  `year` int(50) NOT NULL COMMENT '樂團出道年份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`band_id`, `band_name`, `year`) VALUES
('b_1', '五月天', 1997),
('b_10', '麋先生', 2011),
('b_11', '理想混蛋', 2017),
('b_12', 'My Little Airport', 2004),
('b_13', '頑童 MJ116', 2008),
('b_14', '玖壹壹', 2009),
('b_15', '美秀集團', 2015),
('b_16', '草東沒有派對', 2016),
('b_17', 'BY2', 1992),
('b_18', '摩登兄弟', 1990),
('b_19', '草蜢', 1985),
('b_2', '告五人', 2016),
('b_20', '信樂團', 2007),
('b_21', 'Dear Jane', 2001),
('b_22', '房東的貓', 2016),
('b_23', '逃跑計劃', 2005),
('b_24', '滅火器樂團', 2000),
('b_25', '南拳媽媽', 2004),
('b_26', '萬能青年旅店', 2006),
('b_27', '草屯囝仔', 2009),
('b_28', '芒果醬', 2017),
('b_29', '牛奶咖啡', 2004),
('b_3', 'Beyond', 1983),
('b_30', 'MP魔幻力量', 2008),
('b_31', '怕胖團', 2007),
('b_32', '筷子兄弟', 2007),
('b_33', '兄弟本色', 2015),
('b_34', '九澤CP', 2020),
('b_35', 'BOOM！怪物星人', 2023),
('b_36', '康士坦的變化球', 2013),
('b_37', '宇宙人樂團', 2004),
('b_38', '五堅情WOLF', 2020),
('b_39', '未來少女 幻藍小熊', 2023),
('b_4', '八三夭樂團', 2003),
('b_40', '旺福', 1998),
('b_41', '達明一派', 1980),
('b_42', '老破麻', 2016),
('b_43', '老王樂隊', 2015),
('b_44', '溫拿樂隊', 1970),
('b_45', '南西肯恩', 2017),
('b_46', 'Icy Ball', 2013),
('b_47', 'C Allstar', 2009),
('b_48', '芭比', 1996),
('b_49', 'TRASH', 1976),
('b_5', 'TNT時代少年團', 2019),
('b_50', 'KOLOR', 2005),
('b_51', 'Deca Joins', 2016),
('b_52', '和平飯店', 2020),
('b_53', 'M-Girls', 2000),
('b_54', '無印良品', 1990),
('b_55', 'Fine樂團', 2015),
('b_56', '好樂團', 2015),
('b_57', '火把音樂', 2006),
('b_58', 'MATZKA', 2010),
('b_59', '黑旋風', 2013),
('b_6', '飛兒樂團', 2004),
('b_7', '動力火車', 1990),
('b_8', '蘇打綠', 2001),
('b_9', '茄子蛋', 2012);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `band_id` varchar(50) NOT NULL COMMENT '樂團編號',
  `member_id` varchar(50) NOT NULL COMMENT '成員編號',
  `member_nick_name` varchar(50) DEFAULT NULL COMMENT '成員暱稱',
  `member_real_name` varchar(50) DEFAULT NULL COMMENT '成員本名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`band_id`, `member_id`, `member_nick_name`, `member_real_name`) VALUES
('b_15', 'm_1', '狗柏', ''),
('b_15', 'm_2', '修齊', ''),
('b_15', 'm_3', '冠佑', ''),
('b_15', 'm_4', '鍾錡', ''),
('b_15', 'm_5', '婷文', ''),
('b_16', 'm_1', '巫堵', '林耕佑'),
('b_16', 'm_2', '筑筑', '詹為筑'),
('b_16', 'm_3', '世暄', '楊世暄'),
('b_16', 'm_4', '鳥人', '黃士瑋'),
('b_2', 'm_1', '雲安', '潘雲安'),
('b_2', 'm_2', '犬青', '蔡欣倫'),
('b_2', 'm_3', '謙哥', '林哲謙');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` varchar(50) NOT NULL COMMENT '歌曲編號',
  `band_id` varchar(50) NOT NULL COMMENT '歌曲所屬樂團編號',
  `album_id` varchar(50) NOT NULL COMMENT '歌曲所屬專輯編號',
  `song_name` varchar(50) NOT NULL COMMENT '歌曲名稱',
  `song_length` varchar(50) NOT NULL COMMENT '歌曲時間長度',
  `song_url` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `band_id`, `album_id`, `song_name`, `song_length`, `song_url`) VALUES
('s_1', 'b_2', 'a_1', '晴れの日(晴天)(OT：好不容易)', '5:00', '<iframe width=\"935\" height=\"522\" src=\"https://www.youtube.com/embed/zQeNdLfT1xo\" title=\"告五人&amp;藤岡靛-晴天（雙語歌詞）（中/日）\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_10', 'b_2', 'a_10', '愛人錯過', '5:18', ''),
('s_100', 'b_15', 'a_32', '一隻雞', '0:14', ''),
('s_101', 'b_15', 'a_32', '細粒的目睭', '5:15', ''),
('s_102', 'b_15', 'a_33', '還是會寂寞', '4:45', ''),
('s_103', 'b_15', 'a_34', '金光閃閃', '3:14', ''),
('s_104', 'b_15', 'a_35', '殭屍王', '4:44', ''),
('s_105', 'b_15', 'a_36', 'Intro', '2:08', ''),
('s_106', 'b_15', 'a_36', '電火王', '5:24', ''),
('s_107', 'b_15', 'a_36', '總裁水鴛鴦', '2:33', ''),
('s_108', 'b_15', 'a_36', '這幾年', '4:46', ''),
('s_109', 'b_15', 'a_36', '昨暝阿爸無轉來', '5:25', ''),
('s_11', 'b_2', 'a_10', '法蘭西多士', '4:36', ''),
('s_110', 'b_15', 'a_36', '做事人', '4:40', ''),
('s_111', 'b_15', 'a_36', '生活袂曉過', '5:19', ''),
('s_112', 'b_15', 'a_36', '米兒', '5:25', ''),
('s_113', 'b_15', 'a_36', '小老婆', '5:34', ''),
('s_114', 'b_15', 'a_36', '擋一根', '4:28', ''),
('s_115', 'b_15', 'a_36', '魯之歌', '5:18', ''),
('s_12', 'b_2', 'a_10', '跳海', '4:50', ''),
('s_13', 'b_2', 'a_10', '紅', '6:05', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/9WEYFqCUze8\" title=\"告五人 Accusefive 【紅 LOVE】Official Music Video\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_14', 'b_2', 'a_10', '果然你還是', '6:18', ''),
('s_15', 'b_2', 'a_10', '夜裡無星', '5:29', ''),
('s_16', 'b_2', 'a_10', '驕傲的鯨魚', '5:07', ''),
('s_17', 'b_2', 'a_10', '從沒去過巴塞隆納', '4:34', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/s_XnRpIuN4Q\" title=\"從沒去過巴塞隆納\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_18', 'b_2', 'a_10', '不具名的花', '5:40', ''),
('s_19', 'b_2', 'a_10', '簡答題', '2:59', ''),
('s_2', 'b_2', 'a_2', '又到天黑', '5:39', ''),
('s_20', 'b_2', 'a_10', '披星戴月的想你(Bonus track)', '7:46', ''),
('s_21', 'b_2', 'a_11', '愛在夏天', '6:38', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/6Xu-TGL-_qk\" title=\"告五人 Accusefive [ 愛在夏天－盛夏之約 Love In Summer ] Official Music Video\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_22', 'b_2', 'a_12', '在這座城市遺失了你', '6:38', ''),
('s_23', 'b_2', 'a_13', '又到天黑', '5:39', ''),
('s_24', 'b_2', 'a_13', '我無法克制自己', '5:09', ''),
('s_25', 'b_2', 'a_13', '我想要佔據你', '4:13', ''),
('s_26', 'b_2', 'a_13', '一念之間', '6:07', ''),
('s_27', 'b_2', 'a_13', '你所到之處(就下雨)', '4:02', ''),
('s_28', 'b_2', 'a_13', '啊我忘了帶傘', '4:19', ''),
('s_29', 'b_2', 'a_13', '你看你看看', '4:36', ''),
('s_3', 'b_2', 'a_3', '在未來的你跟我說聲嗨', '4:37', ''),
('s_30', 'b_2', 'a_13', '遠距離戀愛', '5:13', ''),
('s_31', 'b_2', 'a_13', '帶你飛', '4:54', ''),
('s_32', 'b_2', 'a_13', '愛你我沒問題', '3:59', ''),
('s_33', 'b_2', 'a_14', '在凌晨睡著的自己', '5:22', ''),
('s_34', 'b_2', 'a_15', '給你一瓶魔法藥水', '4:26', ''),
('s_35', 'b_2', 'a_16', '好不容易', '5:28', ''),
('s_36', 'b_2', 'a_17', '寂寞留白', '4:22', ''),
('s_37', 'b_2', 'a_18', '愛在夏天-盛夏之約', '6:46', ''),
('s_38', 'b_2', 'a_19', '醜人多作怪', '4:21', ''),
('s_39', 'b_2', 'a_19', 'WEWE', '3:49', ''),
('s_4', 'b_2', 'a_4', '我以為你不會出現', '6:48', ''),
('s_40', 'b_2', 'a_19', '同樣一個你', '5:23', ''),
('s_41', 'b_2', 'a_19', '在這座城市遺失了你', '6:38', ''),
('s_42', 'b_2', 'a_19', '唯一', '4:32', ''),
('s_43', 'b_2', 'a_19', '運氣來得若有似無', '3:50', ''),
('s_44', 'b_2', 'a_19', '人前人後', '4:14', ''),
('s_45', 'b_2', 'a_19', '過場', '0:35', ''),
('s_46', 'b_2', 'a_19', '溫蒂公主的侍衛', '4:22', ''),
('s_47', 'b_2', 'a_19', '與海無關', '4:25', ''),
('s_48', 'b_2', 'a_19', '愚人遊戲', '6:48', ''),
('s_49', 'b_2', 'a_19', '新世界 kacauan', '4:08', ''),
('s_5', 'b_2', 'a_5', 'Live A Little', '4:01', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/MsI3YfomkjA\" title=\"Live A Little (Safari Club 調酒主題曲)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_50', 'b_2', 'a_20', '說我愛你的一百種方式(100 Ways)', '4:32', ''),
('s_51', 'b_2', 'a_21', '帶我去找夜生活(健康版)', '4:28', ''),
('s_52', 'b_2', 'a_21', '帶我去找夜生活(非健康版)', '4:28', ''),
('s_53', 'b_2', 'a_22', '法蘭西多士', '4:36', ''),
('s_54', 'b_2', 'a_23', '你要不要吃哈密瓜', '5:33', ''),
('s_55', 'b_2', 'a_23', '獨角獸', '4:00', ''),
('s_56', 'b_2', 'a_23', '迷霧之子', '6:14', ''),
('s_57', 'b_16', 'a_23', '苦難精算師(Intro)', '4:12', ''),
('s_58', 'b_16', 'a_24', '缸', '3:07', ''),
('s_59', 'b_16', 'a_24', '空', '2:58', ''),
('s_6', 'b_2', 'a_6', '像是在天堂', '3:39', ''),
('s_60', 'b_16', 'a_24', '人洞山', '3:28', ''),
('s_61', 'b_16', 'a_24', '孑', '0:56', ''),
('s_62', 'b_16', 'a_24', '白日夢', '3:48:00', ''),
('s_63', 'b_16', 'a_24', '床', '0:07', ''),
('s_64', 'b_16', 'a_24', '八', '3:47', ''),
('s_65', 'b_16', 'a_24', '老張', '3:40', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/YXr89zWErQE\" title=\"草東沒有派對 - 老張\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_66', 'b_16', 'a_24', '芽', '3:13', ''),
('s_67', 'b_16', 'a_24', '但', '2:23', ''),
('s_68', 'b_16', 'a_24', '我先矛盾', '3:37', ''),
('s_69', 'b_16', 'a_25', '離歌', '4:29', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/Cd0pQvEF5Io\" title=\"草東沒有派對 No Party for Cao Dong - 離歌\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_7', 'b_2', 'a_7', '只管向前', '5:19', ''),
('s_70', 'b_16', 'a_26', 'Intro', '2:08', ''),
('s_71', 'b_16', 'a_27', '醜', '1:58', ''),
('s_72', 'b_16', 'a_27', '爛泥', '2:30', ''),
('s_73', 'b_16', 'a_27', '勇敢的人', '3:41', ''),
('s_74', 'b_16', 'a_27', '大風吹', '4:08', ''),
('s_75', 'b_16', 'a_27', '艾瑪', '1:42', ''),
('s_76', 'b_16', 'a_27', '等', '3:54', ''),
('s_77', 'b_16', 'a_27', '鬼', '2:41', ''),
('s_78', 'b_16', 'a_27', '在', '8:26', ''),
('s_79', 'b_16', 'a_27', '山海', '5:11', ''),
('s_8', 'b_2', 'a_8', '新世界', '4:08', ''),
('s_80', 'b_16', 'a_27', '我們', '4:34', ''),
('s_81', 'b_16', 'a_27', '情歌', '4:19', ''),
('s_82', 'b_15', 'a_28', '戀人', '5:06', ''),
('s_83', 'b_15', 'a_28', '群像', '4:56', ''),
('s_84', 'b_15', 'a_28', '物語', '3:15', ''),
('s_85', 'b_15', 'a_29', '我要你愛', '4:17', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/ouQwJj1V2pE\" title=\"美秀集團 Amazing Show－我要你愛 You are My Crazy Lover【Official Music Video】\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_86', 'b_15', 'a_29', '金光閃閃', '3:14', ''),
('s_87', 'b_15', 'a_29', '花光月影', '3:51', ''),
('s_88', 'b_15', 'a_29', '馬克吐溫', '5:46', ''),
('s_89', 'b_15', 'a_29', '戰鬥菸', '4:39', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/LgxNE7wu_3U\" title=\"戰鬥菸\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_9', 'b_2', 'a_9', '披星戴月的想你', '7:46', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/VpwAq7hiij0\" title=\"告五人 Accusefive 【披星戴月的想你】Official Music Video\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_90', 'b_15', 'a_29', '殭屍王', '4:44', ''),
('s_91', 'b_15', 'a_29', '心悶', '4:59', ''),
('s_92', 'b_15', 'a_29', '白鯨', '1:40', ''),
('s_93', 'b_15', 'a_29', '哥哥呀哥哥', '4:11', ''),
('s_94', 'b_15', 'a_29', '做夢的人', '5:28', ''),
('s_95', 'b_15', 'a_30', '馬克吐溫', '5:46', ''),
('s_96', 'b_15', 'a_31', '我要你愛', '4:17', '<iframe width=\"928\" height=\"522\" src=\"https://www.youtube.com/embed/ouQwJj1V2pE\" title=\"美秀集團 Amazing Show－我要你愛 You are My Crazy Lover【Official Music Video】\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
('s_97', 'b_15', 'a_32', '懶趴火', '5:44', ''),
('s_98', 'b_15', 'a_32', 'Only Scott Knows', '5:02', ''),
('s_99', 'b_15', 'a_32', '捲菸', '3:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL COMMENT '使用者編號',
  `user_name` varchar(10) NOT NULL COMMENT '使用者名稱',
  `user_password` varchar(20) NOT NULL COMMENT '使用者密碼'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`) VALUES
('u_1', '張卜驊', 'A1115522'),
('u_10', 'coding_nin', 'Pa$$w0rdSafe'),
('u_100', 'epicurean_', 'Culin@ryC0mm@nd3r'),
('u_101', '123', '1234'),
('u_102', '1234', '123456'),
('u_103', '12345', '123'),
('u_11', 'sky_walker', 'B3@ch#Vibes!'),
('u_12', 'dreamer_11', 'C0ffee&T3ch'),
('u_13', 'coffee_add', 'Journ3y!Quest'),
('u_14', 'wanderlust', '5tarG@z3r!'),
('u_15', 'fitness_fr', 'Mus1cL0v3r*'),
('u_16', 'art_lover2', 'Art!st#F0r3ver'),
('u_17', 'movie_buff', 'P@ragraph56!'),
('u_18', 'science_wh', '3c0W@rri0r$'),
('u_19', 'fashionist', 'H@ppyD@ys42'),
('u_2', '孫健淳', 'A1115551'),
('u_20', 'foodie_exp', 'W@lk1ntheP@rk'),
('u_21', 'nature_ent', 'V1rTu@lReal1ty'),
('u_22', 'photograph', 'Passw0rdP@lad1n'),
('u_23', 'gamer_gal4', 'G1tHUbC0d3R'),
('u_24', 'music_maes', 'L0st&F0und'),
('u_25', 'tech_wizar', 'Cyb3rExpl0r3r'),
('u_26', 'literary_n', 'P0em4All*'),
('u_27', 'thrill_see', 'W@veR1d3r#101'),
('u_28', 'coding_gur', 'W1nt3r!sC0m1ng'),
('u_29', 'starry_eye', 'En!gmaPuzzl3'),
('u_3', '金城武', 'handsometree'),
('u_30', 'dream_chas', 'H0m3$w33tH0m3'),
('u_31', 'caffeine_q', 'N0v3lN@vig@tor'),
('u_32', 'journeyman', 'C0d3Junk!3'),
('u_33', 'fitness_ph', 'F1tn3ssF@natic'),
('u_34', 'art_affici', 'B1n@ryP@thw@y'),
('u_35', 'cinephile2', 'R@inb0wSk!3s'),
('u_36', 'lab_rat_88', 'M@rch!ng0n'),
('u_37', 'runway_reb', 'S3aS!d3Breeze'),
('u_38', 'gourmet_ex', 'C0ffeeH0us3#'),
('u_39', 'eco_warrio', 'M3l0dyMa3str0'),
('u_4', 'user001', 'P@ssw0rd123'),
('u_40', 'shutterbug', 'C0nsoleKing#22'),
('u_41', 'console_co', 'B!naryN1nja!'),
('u_42', 'melody_mav', 'L1t3r@ryL0v3r'),
('u_43', 'binary_nom', '3c0L0g!st#'),
('u_44', 'prose_poet', 'Shutt3rbugR0v3r'),
('u_45', 'adrenaline', 'C0d3C0mp03r'),
('u_46', 'algorithm_', 'R3dC@rp3tR0v3r'),
('u_47', 'red_carpet', 'Gastr0n0myG3nius'),
('u_48', 'gastronomy', 'N@tur3N@vig@t0r'),
('u_49', 'green_thum', 'C@mer@C@pt@in'),
('u_5', 'gamer_23', 'Secur1ty!L0ver'),
('u_50', 'pixel_pion', 'J0urn@l!stC0d3r'),
('u_51', 'symphony_s', 'Gastr0G0v3rn0r'),
('u_52', 'gamepad_gu', 'Gard3nGuru!81'),
('u_53', 'tech_tinke', 'RhythmR@ng3r#'),
('u_54', 'novel_navi', 'Ques7Qu@s@r'),
('u_55', 'expedition', 'T3chT1t@n&22'),
('u_56', 'wellness_w', 'B00k!shB@rd'),
('u_57', 'canvas_cru', 'Gal@xyGl1d3r'),
('u_58', 'film_fiend', 'FilMfusi0n!st'),
('u_59', 'code_compo', 'Qu@ntumQu3st3r'),
('u_6', 'tech_geek8', '9My$ecureP@ss'),
('u_60', 'skydiving_', 'C0dingCrus@d3r'),
('u_61', 'epicurean_', 'Pr0seP@thf!nder'),
('u_62', 'organic_or', 'Culin@ryC0mmand3r'),
('u_63', 'lens_lumin', 'RhythmR@ng3r'),
('u_64', 'joystick_j', 'T3chT!t@n'),
('u_65', 'sonnet_scu', 'B00kW0rm77!'),
('u_66', 'risk_revel', 'Ec0Expl0r3r'),
('u_67', 'software_s', 'Fitn3ssF1n3ss3'),
('u_68', 'poetry_pro', 'C0d3M@s!er'),
('u_69', 'epic_adven', 'Ep!cur3@nEngin33r'),
('u_7', 'musiclover', 'Rainbow#2K23'),
('u_70', 'museum_mys', 'Qu@ntumQu3st3r'),
('u_71', 'game_glide', 'C0deC0mm@nder'),
('u_72', 'data_dynam', 'Pr0seP@thf!nd3r'),
('u_73', 'style_savv', 'Cul1n@ryC0mm@nd3r'),
('u_74', 'culinary_c', 'RhythM!ster'),
('u_75', 'ecology_ex', 'J@v@ScriptL0ver'),
('u_76', 'melody_mys', '@rtfulC0d3r'),
('u_77', 'algorithm_', 'S0nnetSculpt0r'),
('u_78', 'catwalk_cr', '3P!c@dventur3r'),
('u_79', 'gastronomy', 'Mus3umMyst!c'),
('u_8', 'bookworm77', 'Ch@ngeMeN0w'),
('u_80', 'garden_gur', 'G@m3G1!d3r'),
('u_81', 'pixel_path', 'DataDyN@mo'),
('u_82', 'harmony_hu', 'Styl3S@vvy'),
('u_83', 'quest_quas', 'Cul!naryC@det'),
('u_84', 'tech_titan', 'Ecol0gyExpl0r3r'),
('u_85', 'bookish_ba', 'M3lodyMyst1c'),
('u_86', 'galaxy_gli', 'Alg0r1thm@rt!san'),
('u_87', 'film_fusio', 'C@twalkCruS@der'),
('u_88', 'quantum_qu', 'G@stronomyGl@d!ator'),
('u_89', 'coding_cru', 'Gard3nGurU'),
('u_9', 'adventure_', 'Sunsh1ne&Sky'),
('u_90', 'prose_path', 'P1xelPathF!nder'),
('u_91', 'culinary_c', 'H@rm0nyHunt3r'),
('u_92', 'rhythm_ran', 'QuestQu@s@r'),
('u_93', 'game_gover', 'T3chT1t@n'),
('u_94', 'wellness_w', 'Book!shB@rd'),
('u_95', 'art_adept', 'Gal@xyGl1d3r'),
('u_96', 'movie_myst', 'F!lmFusi0nist'),
('u_97', 'nature_nav', 'Qu@ntumQu3st3r'),
('u_98', 'cyber_cent', 'C0dingCrus@d3r'),
('u_99', 'fitness_fi', 'Pr0seP@thf!nd3r');

-- --------------------------------------------------------

--
-- Table structure for table `user_playlist`
--

CREATE TABLE `user_playlist` (
  `list_id` varchar(50) NOT NULL COMMENT '使用者播放清單編號',
  `user_id` varchar(50) NOT NULL COMMENT '使用者編號',
  `list_name` varchar(50) NOT NULL COMMENT '播放清單名稱',
  `create_date` varchar(50) NOT NULL COMMENT '創建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_playlist`
--

INSERT INTO `user_playlist` (`list_id`, `user_id`, `list_name`, `create_date`) VALUES
('l_1', 'u_1', 'emo', '2023/01/01'),
('l_10', 'u_3', '靈魂音樂之夜', '2023/01/30'),
('l_11', 'u_3', '搖滾革命', '2023/11/02'),
('l_12', 'u_3', '流行派對熱歌', '2023/06/18'),
('l_13', 'u_3', '爵士樂狂歡', '2023/04/21'),
('l_14', 'u_3', '節奏感動聽', '2023/08/09'),
('l_15', 'u_3', '拉丁音樂派對', '2023/02/14'),
('l_16', 'u_3', '藍調心情', '2023/10/07'),
('l_17', 'u_4', '電子舞曲狂熱', '2023/12/25'),
('l_18', 'u_4', '咖啡屋的原音吉他', '2023/03/06'),
('l_19', 'u_5', '復古回顧', '2023/07/19'),
('l_2', 'u_1', '動漫', '2023/01/02'),
('l_20', 'u_6', '鄉村之路收藏', '2023/05/22'),
('l_21', 'u_6', '古典音樂饗宴', '2023/09/28'),
('l_22', 'u_6', '嘻哈熱浪', '2023/01/13'),
('l_23', 'u_7', '環境音樂夢境', '2023/11/10'),
('l_24', 'u_8', '雷鬼節奏', '2023/06/03'),
('l_25', 'u_9', '節奏靈魂之夜', '2023/04/25'),
('l_26', 'u_10', '流行搖滾動感', '2023/08/31'),
('l_27', 'u_11', '民謠情懷', '2023/02/08'),
('l_28', 'u_12', '田園風情音樂', '2023/10/14'),
('l_29', 'u_12', '經典回顧', '2023/12/01'),
('l_3', 'u_1', '嗨歌', '2023/10/07'),
('l_30', 'u_12', '浪漫愛情小品', '2023/03/27'),
('l_31', 'u_12', '夜晚城市之聲', '2023/07/09'),
('l_32', 'u_12', '心靈之歌', '2023/05/17'),
('l_33', 'u_13', '海灘日光浴', '2023/09/05'),
('l_34', 'u_14', '世界音樂之旅', '2023/01/22'),
('l_35', 'u_15', '霧裡看花', '2023/11/23'),
('l_36', 'u_16', '音樂夢遊仙境', '2023/06/12'),
('l_37', 'u_17', '純音樂探索', '2023/04/03'),
('l_38', 'u_18', '迷幻之音', '2023/08/22'),
('l_39', 'u_19', '現場音樂珍藏', '2023/02/18'),
('l_4', 'u_2', '讀書', '2023/03/06'),
('l_40', 'u_20', '咖啡館音樂時光', '2023/10/31'),
('l_41', 'u_21', '紅白藍調之夜', '2023/12/09'),
('l_42', 'u_22', '霓虹夜未眠', '2023/03/16'),
('l_43', 'u_23', '爵士巡禮', '2023/07/01'),
('l_44', 'u_24', '流行舞曲集', '2023/05/10'),
('l_45', 'u_25', '冥想音樂之旅', '2023/09/20'),
('l_46', 'u_26', '搖擺樂章', '2023/01/08'),
('l_47', 'u_27', '咖啡香濃，音樂美妙', '2023/11/15'),
('l_48', 'u_28', '經典樂章回顧', '2023/06/27'),
('l_49', 'u_29', '搖滾烈焰', '2023/04/14'),
('l_5', 'u_2', '睡眠', '2023/05/22'),
('l_50', 'u_30', '夢幻音樂之旅', '2023/08/03'),
('l_51', 'u_2', '試試', ''),
('l_52', 'u_103', '輕鬆', ''),
('l_53', 'u_103', 'high', ''),
('l_6', 'u_2', '輕鬆紓壓之夜', '2023/03/12'),
('l_7', 'u_2', '獨立音樂精選', '2023/07/24'),
('l_8', 'u_2', '電子節奏感', '2023/05/08'),
('l_9', 'u_2', '木吉他彈奏夢', '2023/09/15');

-- --------------------------------------------------------

--
-- Table structure for table `user_playlist_song`
--

CREATE TABLE `user_playlist_song` (
  `list_id` varchar(50) NOT NULL COMMENT '使用者播放清單編號',
  `song_id` varchar(50) NOT NULL COMMENT '清單內歌曲編號',
  `added_date` varchar(50) NOT NULL COMMENT '歌曲加入日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_playlist_song`
--

INSERT INTO `user_playlist_song` (`list_id`, `song_id`, `added_date`) VALUES
('l_1', 's_2', '2023/2/15'),
('l_1', 's_3', '2023/4/22'),
('l_1', 's_4', '2023/6/11'),
('l_1', 's_6', '2023/9/8'),
('l_10', 's_101', '2023/07/27'),
('l_10', 's_105', '2023/01/28'),
('l_10', 's_110', '2023/08/07'),
('l_10', 's_112', '2023/08/13'),
('l_10', 's_114', '2023/10/12'),
('l_10', 's_15', '2023/02/09'),
('l_10', 's_17', '2023/12/01'),
('l_10', 's_18', '2023/12/20'),
('l_10', 's_23', '2023/03/22'),
('l_10', 's_26', '2023/06/07'),
('l_10', 's_30', '2023/03/14'),
('l_10', 's_31', '2023/02/26'),
('l_10', 's_32', '2023/07/19'),
('l_10', 's_33', '2023/06/23'),
('l_10', 's_34', '2023/10/09'),
('l_10', 's_37', '2023/02/13'),
('l_10', 's_4', '2023/06/29'),
('l_10', 's_50', '2023/10/30'),
('l_10', 's_53', '2023/01/08'),
('l_10', 's_58', '2023/09/04'),
('l_10', 's_6', '2023/01/14'),
('l_10', 's_63', '2023/04/10'),
('l_10', 's_64', '2023/03/18'),
('l_10', 's_67', '2023/09/20'),
('l_10', 's_7', '2023/05/22'),
('l_10', 's_70', '2023/06/04'),
('l_10', 's_71', '2023/08/03'),
('l_10', 's_72', '2023/09/28'),
('l_10', 's_74', '2023/10/07'),
('l_10', 's_75', '2023/01/09'),
('l_10', 's_78', '2023/12/22'),
('l_10', 's_79', '2023/05/27'),
('l_10', 's_80', '2023/08/16'),
('l_10', 's_84', '2023/10/25'),
('l_10', 's_85', '2023/02/23'),
('l_10', 's_89', '2023/05/05'),
('l_10', 's_9', '2023/04/04'),
('l_10', 's_91', '2023/05/12'),
('l_10', 's_94', '2023/11/17'),
('l_10', 's_97', '2023/04/16'),
('l_10', 's_98', '2023/04/18'),
('l_2', 's_2', '2023/11/4'),
('l_3', 's_108', '2023/07/01'),
('l_3', 's_12', '2023/03/08'),
('l_3', 's_17', '2023/08/14'),
('l_3', 's_19', '2023/08/26'),
('l_3', 's_23', '2023/09/15'),
('l_3', 's_3', '2023/1/18'),
('l_3', 's_34', '2023/05/01'),
('l_3', 's_4', '2023/3/21'),
('l_3', 's_42', '2023/06/09'),
('l_3', 's_49', '2023/06/19'),
('l_3', 's_51', '2023/11/28'),
('l_3', 's_56', '2023/10/19'),
('l_3', 's_65', '2023/10/03'),
('l_3', 's_68', '2023/04/12'),
('l_3', 's_7', '2023/05/18'),
('l_3', 's_73', '2023/04/05'),
('l_3', 's_76', '2023/10/24'),
('l_3', 's_81', '2023/02/25'),
('l_3', 's_85', '2023/06/27'),
('l_3', 's_9', '2023/08/05'),
('l_3', 's_94', '2023/01/22'),
('l_4', 's_105', '2023/12/09'),
('l_4', 's_110', '2023/05/06'),
('l_4', 's_3', '2023/03/02'),
('l_4', 's_35', '2023/01/07'),
('l_4', 's_57', '2023/09/30'),
('l_4', 's_62', '2023/07/05'),
('l_4', 's_78', '2023/11/12'),
('l_4', 's_88', '2023/09/21'),
('l_4', 's_97', '2023/04/28'),
('l_5', 's_39', '2023/01/29'),
('l_52', 's_5', '2024/01/11'),
('l_6', 's_5', '2024/01/11'),
('l_6', 's_71', '2023/10/11'),
('l_6', 's_93', '2023/05/24'),
('l_7', 's_114', '2023/04/14'),
('l_7', 's_26', '2023/09/01'),
('l_7', 's_48', '2023/12/16'),
('l_7', 's_50', '2023/11/09'),
('l_7', 's_83', '2023/02/19'),
('l_8', 's_101', '2023/04/01'),
('l_8', 's_103', '2023/08/08'),
('l_8', 's_104', '2023/07/22'),
('l_8', 's_109', '2023/08/30'),
('l_8', 's_11', '2023/09/23'),
('l_8', 's_112', '2023/02/14'),
('l_8', 's_113', '2023/02/07'),
('l_8', 's_115', '2023/10/08'),
('l_8', 's_14', '2023/06/14'),
('l_8', 's_15', '2023/06/03'),
('l_8', 's_18', '2023/03/05'),
('l_8', 's_20', '2023/12/03'),
('l_8', 's_21', '2023/05/29'),
('l_8', 's_24', '2023/08/19'),
('l_8', 's_27', '2023/11/15'),
('l_8', 's_28', '2023/03/12'),
('l_8', 's_30', '2023/04/24'),
('l_8', 's_31', '2023/05/20'),
('l_8', 's_33', '2023/05/15'),
('l_8', 's_36', '2023/10/05'),
('l_8', 's_37', '2023/02/22'),
('l_8', 's_38', '2023/03/09'),
('l_8', 's_4', '2023/06/05'),
('l_8', 's_40', '2023/04/21'),
('l_8', 's_43', '2023/03/01'),
('l_8', 's_44', '2023/02/12'),
('l_8', 's_46', '2023/03/15'),
('l_8', 's_47', '2023/11/24'),
('l_8', 's_52', '2023/09/17'),
('l_8', 's_53', '2023/07/20'),
('l_8', 's_55', '2023/10/22'),
('l_8', 's_58', '2023/02/28'),
('l_8', 's_59', '2023/01/16'),
('l_8', 's_6', '2023/11/19'),
('l_8', 's_60', '2023/05/13'),
('l_8', 's_63', '2023/04/08'),
('l_8', 's_64', '2023/12/13'),
('l_8', 's_66', '2023/01/12'),
('l_8', 's_67', '2023/03/26'),
('l_8', 's_69', '2023/08/22'),
('l_8', 's_70', '2023/01/11'),
('l_8', 's_72', '2023/07/08'),
('l_8', 's_74', '2023/05/09'),
('l_8', 's_75', '2023/04/07'),
('l_8', 's_77', '2023/01/19'),
('l_8', 's_79', '2023/07/17'),
('l_8', 's_8', '2023/03/19'),
('l_8', 's_82', '2023/01/30'),
('l_8', 's_84', '2023/12/05'),
('l_8', 's_86', '2023/07/11'),
('l_8', 's_87', '2023/08/10'),
('l_8', 's_89', '2023/09/12'),
('l_8', 's_91', '2023/01/05'),
('l_8', 's_92', '2023/10/27'),
('l_8', 's_95', '2023/09/27'),
('l_8', 's_98', '2023/01/25'),
('l_8', 's_99', '2023/07/26'),
('l_9', 's_113', '2023/11/14'),
('l_9', 's_114', '2023/09/05'),
('l_9', 's_14', '2023/03/29'),
('l_9', 's_19', '2023/07/24'),
('l_9', 's_2', '2023/04/03'),
('l_9', 's_21', '2023/11/18'),
('l_9', 's_3', '2023/06/01'),
('l_9', 's_32', '2023/08/15'),
('l_9', 's_36', '2023/02/20'),
('l_9', 's_40', '2023/01/21'),
('l_9', 's_46', '2023/08/25'),
('l_9', 's_51', '2023/02/16'),
('l_9', 's_54', '2023/06/08'),
('l_9', 's_55', '2023/04/11'),
('l_9', 's_59', '2023/08/01'),
('l_9', 's_65', '2023/05/23'),
('l_9', 's_69', '2023/01/15'),
('l_9', 's_74', '2023/02/06'),
('l_9', 's_77', '2023/10/14'),
('l_9', 's_8', '2023/06/12'),
('l_9', 's_82', '2023/05/10'),
('l_9', 's_87', '2023/06/21'),
('l_9', 's_9', '2023/01/23'),
('l_9', 's_90', '2023/10/18'),
('l_9', 's_93', '2023/09/03'),
('l_9', 's_96', '2023/06/15'),
('l_9', 's_99', '2023/12/08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`band_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`band_id`,`member_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `band_id` (`band_id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_playlist_song`
--
ALTER TABLE `user_playlist_song`
  ADD PRIMARY KEY (`list_id`,`song_id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD CONSTRAINT `user_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_playlist_song`
--
ALTER TABLE `user_playlist_song`
  ADD CONSTRAINT `user_playlist_song_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `user_playlist` (`list_id`),
  ADD CONSTRAINT `user_playlist_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
