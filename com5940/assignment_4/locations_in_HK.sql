-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2020 at 03:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locations_in_HK`
--

-- --------------------------------------------------------

--
-- Table structure for table `nopic`
--

CREATE TABLE `nopic` (
  `Film` varchar(44) DEFAULT NULL,
  `國家及地區 Country & Region` varchar(14) DEFAULT NULL,
  `Release_Date` int(4) DEFAULT NULL,
  `影片類型 Film Type` varchar(59) DEFAULT NULL,
  `poster_url` varchar(95) DEFAULT NULL,
  `Douban_Rating` decimal(2,1) DEFAULT NULL,
  `Filming_Site` varchar(49) DEFAULT NULL,
  `Scene_Time` varchar(6) DEFAULT NULL,
  `Character` varchar(22) DEFAULT NULL,
  `Scene_Plot` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nopic`
--

INSERT INTO `nopic` (`Film`, `國家及地區 Country & Region`, `Release_Date`, `影片類型 Film Type`, `poster_url`, `Douban_Rating`, `Filming_Site`, `Scene_Time`, `Character`, `Scene_Plot`) VALUES
('無間道 Infernal Affairs', 'Hongkong,China', 2002, '懸疑 Suspens Film,犯罪 Crime Film', 'https://dl.airtable.com/.attachments/3a818e6d79d0133225e411175f6dc940/2c20ec86/p2564556863.webp', '9.2', '香港萬佛寺 Ten Thousand Buddhas Monastery', '1:59', '劉偉強/陳冠希/曾志偉', '電影開場，黑幫老大韓琛在寺廟拜佛，向即將安插在警局的內鬼訓話。'),
('風中有朵雨做的雲The Shadow Play', 'Mainland,China', 2018, '懸疑 Suspens Film,犯罪 Crime Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/305440415b06a7c17576c2f83192ef94/19d2001e/p2552522615.webp', '7.2', '鴻運冰廳餅店Hung Wan Cafe', '65:43', '婁燁/井柏然', '老A一早與楊家棟見面，告訴他媒體對案件的關注已翻篇，但家棟還是堅持要追查到底，堅信父親當年的車禍非意外。'),
('重慶森林Chungking Express', 'Hongkong,China', 1994, '愛情 Affectional Film', 'https://dl.airtable.com/.attachments/9ec4f74b8b22ea7a173990f1aabdd516/daeab1c0/p792381411.webp', '8.7', '中環至半山自動扶梯Central-Mid-Levels Escalator', '18:05', '王家衛/金城武', '失戀的何志武最後一次給女朋友Mary打電話被掛斷，轉身跑上旁邊的扶手電梯，漸漸遠去。'),
('變形金剛4:絕跡重生Transformoers 4 :Age Of Extinction', 'America', 2014, '科幻 Science Fiction,動作 Action Film', 'https://dl.airtable.com/.attachments/0c18dcf8e9df64f32c9d4282e67bba81/3bc442b5/p2187231762.webp', '6.6', '土瓜灣益豐大廈Ifeng Mansion Ifeng Mansions', '118:18', '妮可拉·佩爾茨/馬克·沃爾伯格/斯坦利·圖齊', '眾人在頂樓逃竄，凱德捨生救女退出電梯，與墓風殊死一戰。'),
('志明與春嬌Love in a Puff', 'Hongkong,China', 2010, '愛情 Affectional Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/c07ad801033530c793efe2ebfb942740/387f3a1f/p1456854668.webp', '8.0', '\"尖沙咀皇悅酒店旁後巷Lane near Empire Hotel, Tsim Sha Tsui\"', '5:35', '余文樂/楊千嬅', '志明與春嬌第一次一起抽煙的場地。'),
('攻殼機動隊Ghost in the Shell', 'America', 2017, '科幻 Science Fiction,動作 Action Film,犯罪 Crime Film', 'https://dl.airtable.com/.attachments/b394021217e088a1cfeedcce44bad987/1d3fffed/p2453176400.webp', '6.4', '鰂魚涌益昌大廈（怪獸大廈）Yik Cheong Building', '79:10', '斯嘉麗·約翰遜', '少佐逃也似的離開了素子家。'),
('過春天The Crossing', 'Mainland,China', 2018, '劇情 Feature Film', 'https://dl.airtable.com/.attachments/77980b73cdd6b1356ddc4f5331d48ee5/ddb4a8ed/p2549537782.webp', '7.7', '飛鵝山Kowloon Peak', '57:07', '孫陽/黃蕘/白雪', '阿豪帶佩佩上飛鵝山頂，大喊自己是“香港之王”，對流星許願，兩人差一點親吻又中止。'),
('甜蜜蜜Comrades:Almost a Love Story', 'Hongkong,China', 1996, '愛情 Affectional Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/79fd4cdd87c635c7e2cc1e8de3abdc4e/ddf9973b/p2223011274.webp', '8.8', '廣東道Canton Road', '17:38', '陳可辛/張曼玉/黎明', '什麼都不懂的黎小君對李翹產生了依賴之情，用自行車送李翹回去，路上響起了“甜蜜蜜”，同是內地人的兩人忍不住跟唱起來。'),
('喜劇之王King of Comedy', 'Hongkong,China', 1999, '愛情 Affectional Film,喜劇 Comedy,劇情 Feature Film', 'https://dl.airtable.com/.attachments/24fedf227038e4eaef562b0ca90c0711/0d680f02/p1043597424.webp', '8.7', '石澳健康院', '7:29', '周星馳/李力持', '尹天仇寄住在街坊福利會裏，負責街坊的休閒娛樂事項，這天他因跑劇組而玩開門了，被街坊們數落。'),
('一念無明Mad World', 'Hongkong,China', 2016, '劇情 Feature Film', 'https://dl.airtable.com/.attachments/4a759d82e1136365f3cf111d9d5e8655/3860f733/p2452970761.webp', '7.9', '威龍小說', '16:41', '曾志偉', '黃大海在書店看閒書被替他頂班的同事撞見，同事問起阿東的情況，大海回答兒子已經痊癒，自己心中卻滿是憂鬱。'),
('色，戒Lust,Caution', 'Taiwan,China', 2007, '愛情 Affectional Film,劇情 Feature Film,情色 X-rated film', 'https://dl.airtable.com/.attachments/b3521f2a7a0cfa725c1b744053e6f444/f4b33048/p453716305.webp', '8.4', '本部大樓Main Building', '16:10', '李安/湯唯/王力宏', '王佳芝和嶺南大學同學在香港大學復課後，一日課間被鄺裕民叫住，請她和賴秀金參演愛國話劇。'),
('胭脂扣Rouge', 'Hongkong,China', 1987, '愛情 Affectional Film,劇情 Feature Film,奇幻 Fantasy Film', 'https://dl.airtable.com/.attachments/82df6d1145ea129482505405232af7a9/cd71df5c/p2205476838.webp', '8.4', '文武廟Man Mo Temple', '14:42', '梅艷芳', '如花被十二少爺強力追求，按慣例到文武廟求籤。'),
('阿飛正傳Days of Being Wild', 'Hongkong,China', 1990, '愛情 Affectional Film,犯罪 Crime Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/3d224ab7d157839e08692f7062a2703c/fb649c8b/p2525770523.webp', '8.5', '香港中國銀行大廈（舊址）Bank of China Building', '42:04', '劉德華/張曼玉', '蘇麗珍與超仔談起旭仔，被超仔點明心事，蘇麗珍情緒激動。'),
('怒火街頭Ghetto Justice', 'Hongkong,China', 2011, '愛情 Affectional Film,犯罪 Crime Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/2475f6c7789d24709245a8e9ba9ab0f9/5467717e/p2209114066.webp', '7.7', '好运阁茶餐厅New Lucky House Restaurant', '2:42', '鄭嘉穎', 'Law霸最愛的蛋撻'),
('月满轩尼诗Crossing Hennessy', 'Hongkong,China', 2010, '愛情 Affectional Film,喜劇 Comedy', 'https://dl.airtable.com/.attachments/15ab047cb4bc5b38ee0d7597a1c89194/27681787/p455551214.webp', '6.7', '檀島咖啡餅店（灣仔店）Honolulu Coffee Shop ', '20:10', '湯唯/張學友', '阿蓮和阿來去茶餐廳喝咖啡，遭印裔服務員調侃'),
('得閒炒飯All about Love', 'Hongkong,China', 2010, '愛情 Affectional Film,劇情 Feature Film,同性 Gay Film', 'https://dl.airtable.com/.attachments/388c1dffefea73f1402707abb6672abb/8266db83/p546809551.webp', '7.1', 'Jashan 印度料理 Jashan lndian Cuisine', '37:16', '許鞍華/吳君如/張兆輝', 'Macy和Robert去吃飯的途中經過Jashan'),
('盲探Blind Detective', 'Hongkong,China', 2013, '愛情 Affectional Film,喜劇 Comedy,懸疑 Suspens Film,犯罪 Crime Film', 'https://dl.airtable.com/.attachments/46c42a7b7c2afd14dcef07c2c3dc87d3/802f7c5c/p2003777772.webp', '7.1', '勝記海鮮酒家', '92:02', '劉德華/鄭秀文/王紫逸', '庄士敦何家彤監視阿祖，意外發現阿祖在等生意夥伴離開後與別的老婆上床，同時阿祖老婆也在監視他並通風報信，引起混战。'),
('神经侠侣Crazy n\' the City', 'Hongkong,China', 2005, '喜劇 Comedy,劇情 Feature Film', 'https://dl.airtable.com/.attachments/fd96bf98be687a7e7110fefa7189e7b0/68213315/p486706583.webp', '7.1', '金紫荆广场Golden Bauhinia Square', '34:52', '吳鎮宇/容祖兒', '阿男跟蹤阿成到金紫荊廣場，成哥為遊客熱情講解。'),
('港囧Lost in Hong Kong', 'Hongkong,China', 2015, '喜劇 Comedy', 'https://dl.airtable.com/.attachments/be6ea5a4598b14eaebcf3b0a699e9ea2/28c393ea/p2266145079.webp', '5.7', '南龍冰室', '15:00', '包贝尔/趙薇/徐崢', '徐來一家到香港旅遊，在餐廳裡享用早茶，用餐時家人們都拿徐來的名字開玩笑，還紛紛給他改名。'),
('機動部隊PTU', 'Hongkong,China', 2003, '犯罪 Crime Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/bb97cb5549f431ddd1dec80df8a30868/771b647a/p793201686.webp', '8.0', '方榮記沙爹牛肉專家', '3:56', '杜琪峰/林雪', '馬尾戴傷跑出火鍋店，叫車趕往醫院，司機嚇壞逃跑，馬尾只能自己負傷駕車。'),
('春嬌救志明Love off the cuff', 'Hongkong,China', 2017, '愛情 Affectional Film', 'https://dl.airtable.com/.attachments/a7ae12762df9f9c4b554289b0c466b19/6472d84d/p2456056900.webp', '7.0', '龍華酒店', '30:48', '楊千嬅/余文樂', '春嬌爸爸和春嬌、志明一起吃飯，向他們介紹他的未婚妻Apple。'),
('29+1', 'Hongkong,China', 2016, '愛情 Affectional Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/08b683d093382776f5a121cf544dbcbb/6089dce3/p2458020487.webp', '7.2', '得记唱片Ducky\'s Records', '43:24', '鄭欣宜/鄭丹瑞/彭秀慧', '黃天樂在一家唱片行坐了十年銷售，老闆是著名的“旦哥”'),
('翠絲Tracey', 'Hongkong,China', 2018, '劇情 Feature Film,同性 Gay Film', 'https://dl.airtable.com/.attachments/1f9e5381f9ec2e313e3fc5810caed50e/476c9675/p2540428736.webp', '6.9', '石板潭Shek Pan Tan', '0:41', '李駿碩', '佟大雄常夢見少年時，與好友高正、池俊到湖邊戲耍，高正拉著他的手跳進水中。'),
('S.C.I謎案集', 'Mainland,China', 2018, '懸疑 Suspens Film,驚悚 Horror Film', 'https://dl.airtable.com/.attachments/82f2c115e72f40b097f1aaa2137c5d0f/8ac0f05c/p2526593052.webp', '7.4', '香港摩天輪The HongKong Observation Wheel', '6:46', '空鏡頭', '空鏡頭，中環摩天輪'),
('星月童話 Moonlight Express', 'Hongkong,China', 1999, '愛情 Affectional Film', 'https://dl.airtable.com/.attachments/d4e9537e35540610416db5bd73101078/ba38b888/p2157774740.webp', '7.9', '馬灣碼頭Man Wan Pier', '74:33', '張國榮/常盤貴子', '家寶帶著瞳從深圳連夜返港'),
('玻璃之城', 'Hongkong,China', 1998, '愛情 Affectional Film,劇情 Feature Film', 'https://dl.airtable.com/.attachments/d7590016d62273bacf0199d69c605bb4/642282c6/p791235992.webp', '7.9', '香港大學大學堂（沙宣道校區）', '0:32', '黎明/舒淇', '韻文赴約，與港生參加星期六的舞會'),
('金枝玉叶', 'Hongkong,China', 1994, '愛情 Affectional Film,喜劇 Comedy', 'https://dl.airtable.com/.attachments/0de0c836b3e7765c593a1493bb7cf63e/1905cdcb/p2167118411.webp', '8.3', '貝魯特吧', '55:18', '陳可辛/劉嘉玲/袁詠儀', '玫瑰包下餐廳，與阿穎共度燭光晚餐，玫瑰訴說與家明之間的關係，阿穎向偶像表明心聲，阿穎扶醉酒玫瑰下樓，被記者偷拍。');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
