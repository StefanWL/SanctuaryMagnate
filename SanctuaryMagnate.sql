-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 19, 2022 at 09:49 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SanctuaryMagnate`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `animalinventory`
-- (See below for the actual view)
--
CREATE TABLE `animalinventory` (
`Name` varchar(255)
,`Number` int(11)
,`Enclosure` int(11)
,`Staff` int(11)
,`Food` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `Animals`
--

CREATE TABLE `Animals` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Number` int(11) NOT NULL,
  `Enclosure` int(11) NOT NULL,
  `Food` int(11) NOT NULL,
  `Staff` int(11) NOT NULL,
  `Sick` int(11) NOT NULL,
  `Medicine` int(11) NOT NULL,
  `Ads` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Animals`
--

INSERT INTO `Animals` (`Id`, `Name`, `Number`, `Enclosure`, `Food`, `Staff`, `Sick`, `Medicine`, `Ads`) VALUES
(1, 'Lion', 5, 1, 0, 1, 4, 0, 0),
(2, 'Elephant', 0, 0, 0, 0, 0, 0, 0),
(3, 'Gorilla', 1, 1, 0, 1, 1, 5, 0),
(4, 'Panda', 0, 0, 0, 0, 0, 0, 0),
(5, 'Parrot', 0, 0, 0, 0, 0, 0, 0),
(6, 'Crocodile', 0, 0, 0, 0, 0, 0, 0),
(7, 'Zebra', 0, 0, 0, 0, 0, 0, 0),
(8, 'Giraffe', 0, 0, 0, 0, 0, 0, 0),
(9, 'Orangutan', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lastlog`
-- (See below for the actual view)
--
CREATE TABLE `lastlog` (
`Week` int(11)
,`Money` int(11)
,`Visitors` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `Log`
--

CREATE TABLE `Log` (
  `Id` int(11) NOT NULL,
  `Money` int(11) NOT NULL,
  `Visitors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Log`
--

INSERT INTO `Log` (`Id`, `Money`, `Visitors`) VALUES
(0, 3275, 30),
(1, 3275, 30),
(2, 3275, 30);

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE `People` (
  `Id` int(11) NOT NULL,
  `LikesLions` float NOT NULL,
  `LikesElephants` float NOT NULL,
  `LikesGorillas` float NOT NULL,
  `LikesPandas` float NOT NULL,
  `LikesParrots` float NOT NULL,
  `LikesCrocodiles` float NOT NULL,
  `LikesZebras` float NOT NULL,
  `LikesGiraffes` float NOT NULL,
  `LikesOrangutans` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `People`
--

INSERT INTO `People` (`Id`, `LikesLions`, `LikesElephants`, `LikesGorillas`, `LikesPandas`, `LikesParrots`, `LikesCrocodiles`, `LikesZebras`, `LikesGiraffes`, `LikesOrangutans`) VALUES
(1, 0.122737, 0.7181, 2.344, 0.880742, 0.210766, 0.56247, 2.17065, 1.88908, 1.3397),
(2, 2.5197, 6.8982, 3.45622, 4.13573, 0.762834, 2.2699, 0.789819, 2.48037, 1.822),
(3, 1.08742, 0.195029, 1.08323, 7.29853, 0.56174, 1.04846, 0.215253, 1.99156, 2.99984),
(4, 0.080515, 4.71475, 1.00109, 6.69084, 0.0316528, 0.457268, 1.9476, 2.22452, 1.15012),
(5, 2.25856, 1.05727, 2.00593, 0.324218, 0.423185, 2.42278, 2.98304, 1.75456, 0.779451),
(6, 2.39899, 4.9152, 0.317946, 3.20224, 0.721842, 1.58346, 1.2251, 1.59777, 2.27956),
(7, 0.0814093, 6.13419, 1.18979, 1.0824, 0.946475, 0.469382, 0.979428, 0.460098, 0.730026),
(8, 0.818303, 5.55068, 3.13308, 2.01471, 0.217106, 2.95603, 0.990049, 1.64358, 0.0420848),
(9, 1.31794, 6.99134, 0.405537, 1.15313, 0.043456, 0.0112942, 2.35457, 0.067607, 2.67725),
(10, 0.0826909, 5.55741, 2.48598, 2.27166, 0.599797, 1.84503, 0.441335, 2.07992, 0.819989),
(11, 2.89822, 6.55318, 0.906534, 6.83313, 0.819285, 0.718522, 1.602, 1.16709, 0.451419),
(12, 1.73737, 1.48505, 3.64079, 0.702084, 0.943723, 1.37624, 1.36601, 1.97186, 0.495079),
(13, 1.32791, 3.11857, 1.08491, 5.35635, 0.149248, 2.58462, 2.21283, 2.91351, 1.19847),
(14, 0.197254, 1.68213, 0.586726, 1.97047, 0.565405, 2.96608, 0.264292, 0.667656, 2.66614),
(15, 0.899735, 5.20991, 3.56604, 1.80329, 0.651971, 1.37122, 1.75086, 0.157637, 2.47509),
(16, 0.606892, 6.7353, 3.55493, 0.956486, 0.561932, 0.180207, 1.35293, 1.24136, 1.03587),
(17, 0.686901, 3.98362, 1.1959, 4.42111, 0.0194724, 1.47754, 1.31833, 2.26591, 0.743724),
(18, 1.58768, 0.971628, 0.73224, 7.17679, 0.194624, 1.12706, 0.845475, 1.38607, 0.290868),
(19, 0.625387, 5.77677, 3.19444, 4.85612, 0.095631, 0.842374, 1.97133, 2.78459, 1.93944),
(20, 0.531941, 6.99066, 2.01536, 2.74635, 0.591326, 0.0659756, 2.78025, 0.34189, 1.12514),
(21, 1.56606, 6.01838, 2.05045, 6.36222, 0.759581, 1.55579, 1.23622, 0.0410437, 0.216805),
(22, 0.732697, 5.47139, 0.230612, 4.06655, 0.396984, 2.01573, 1.3799, 0.0440325, 0.14461),
(23, 1.31765, 0.762116, 3.94115, 7.0678, 0.696697, 0.493417, 2.49919, 1.48722, 0.720678),
(24, 1.02513, 0.526531, 0.654674, 0.500621, 0.660265, 2.63072, 0.340772, 0.476633, 0.652623),
(25, 2.32486, 4.11012, 1.13273, 6.41005, 0.930612, 1.78508, 0.747872, 0.640956, 0.0756712),
(26, 2.67202, 3.18232, 2.94187, 4.50228, 0.0730428, 1.57564, 2.03058, 0.786668, 0.740883),
(27, 1.94361, 1.15616, 0.0721086, 7.86169, 0.357765, 2.38575, 2.52207, 1.44227, 0.555791),
(28, 1.9094, 0.911078, 3.51648, 6.52346, 0.442268, 0.386104, 2.29513, 0.759134, 1.6349),
(29, 2.43296, 3.48884, 3.4231, 0.0404515, 0.562474, 0.590708, 2.39161, 1.46789, 1.46281),
(30, 2.75895, 2.09011, 3.00186, 7.80258, 0.836051, 0.303992, 0.762859, 1.83267, 1.04056),
(31, 2.12795, 5.34295, 2.91425, 5.4122, 0.299937, 0.160601, 1.41034, 2.9335, 1.08268),
(32, 1.12942, 3.15528, 3.17696, 2.95064, 0.345199, 2.5303, 1.85851, 2.59473, 1.49895),
(33, 2.29899, 0.433429, 3.98026, 7.46658, 0.127225, 1.35325, 2.50846, 0.208989, 2.53939),
(34, 1.58138, 5.59369, 2.91252, 5.39844, 0.020317, 1.46108, 0.231508, 0.113528, 1.35371),
(35, 2.66687, 2.27427, 3.08754, 7.82975, 0.506242, 1.17891, 1.78516, 2.97048, 0.38735),
(36, 0.402752, 3.19577, 0.390739, 3.90593, 0.306609, 1.4926, 0.204962, 0.354173, 1.1346),
(37, 0.106408, 2.95244, 2.23867, 3.08262, 0.431596, 2.71177, 0.00599841, 0.762863, 1.49504),
(38, 2.85101, 5.00646, 3.25128, 5.72054, 0.635693, 1.71013, 0.0997857, 2.11377, 0.939645),
(39, 1.63737, 1.81462, 1.72659, 4.26127, 0.361276, 0.589106, 0.625211, 0.612453, 1.30202),
(40, 1.51386, 6.70733, 1.09359, 0.00539725, 0.894653, 0.497215, 1.41372, 2.86237, 2.10872),
(41, 1.93128, 4.7057, 3.04477, 5.95879, 0.918568, 2.84248, 1.07487, 2.1622, 2.80568),
(42, 1.52517, 0.250239, 2.99578, 7.60314, 0.866624, 0.311614, 1.44584, 1.23634, 0.885336),
(43, 2.62999, 5.66899, 0.511693, 2.9419, 0.840052, 1.81033, 0.291141, 1.76295, 2.99864),
(44, 0.176724, 6.75555, 1.1096, 1.07968, 0.287789, 1.60276, 0.102201, 2.3281, 1.38701),
(45, 2.5207, 2.14877, 3.65361, 6.27296, 0.537707, 1.2979, 1.00852, 0.726779, 1.38289),
(46, 2.70202, 0.474261, 0.995542, 0.652315, 0.137561, 0.990704, 1.32956, 1.34375, 2.27014),
(47, 0.662537, 5.62275, 0.23353, 7.86295, 0.127101, 2.06006, 2.06069, 0.0710667, 2.78724),
(48, 2.95591, 0.372263, 2.8679, 7.37635, 0.283449, 0.615638, 1.95334, 2.59957, 2.32677),
(49, 0.503535, 2.83654, 2.08983, 6.84572, 0.463025, 0.218286, 2.24393, 0.444447, 0.81555),
(50, 0.931695, 2.45572, 3.8444, 3.32743, 0.071067, 1.53046, 0.322651, 1.49494, 2.00857),
(51, 0.269118, 2.27186, 2.93627, 7.70014, 0.0736049, 0.900319, 1.44142, 1.58063, 0.738981),
(52, 0.957427, 1.27085, 2.14413, 7.84529, 0.940456, 1.39899, 2.28088, 2.36101, 2.96285),
(53, 0.5363, 6.86073, 3.72192, 7.80525, 0.571108, 1.85892, 2.78572, 0.473638, 0.307174),
(54, 1.61157, 6.50675, 0.0806586, 4.12559, 0.702135, 2.58589, 2.89074, 1.56363, 1.87636),
(55, 1.13839, 4.98043, 3.98141, 3.34318, 0.355718, 2.00014, 1.57469, 0.597296, 2.73377),
(56, 1.05661, 3.90131, 1.21248, 1.61325, 0.453321, 0.635872, 1.98492, 1.16339, 2.55496),
(57, 0.778714, 6.63762, 1.65528, 4.02624, 0.347205, 2.26872, 0.678556, 2.80952, 0.169196),
(58, 0.195545, 0.625173, 2.22507, 0.719921, 0.47863, 2.30399, 0.369534, 1.71615, 1.97132),
(59, 1.54399, 1.26001, 3.88137, 6.1394, 0.850276, 1.59141, 2.84732, 0.337053, 1.98685),
(60, 0.414882, 1.36292, 3.42313, 1.64569, 0.656201, 0.37859, 1.99161, 0.140624, 0.372356),
(61, 0.756118, 2.45522, 2.02168, 7.7084, 0.585951, 2.28635, 0.117307, 2.27507, 2.2318),
(62, 2.57606, 3.06362, 3.9877, 7.49804, 0.778285, 0.212976, 0.23897, 0.125941, 0.907992),
(63, 0.721892, 0.444008, 3.07396, 6.13228, 0.13962, 0.234537, 1.19548, 0.601816, 2.69306),
(64, 0.104198, 4.01525, 0.768485, 7.05841, 0.619608, 2.01767, 1.3534, 1.92587, 1.7919),
(65, 2.2103, 2.77792, 3.70205, 2.60944, 0.90901, 1.89248, 1.69953, 2.8908, 2.72189),
(66, 2.1107, 0.738664, 2.54011, 7.62445, 0.92703, 2.48426, 2.32794, 2.47157, 1.83825),
(67, 0.779413, 0.691687, 0.689837, 1.03048, 0.299114, 0.498361, 0.327428, 1.60249, 2.34493),
(68, 0.234025, 4.5386, 1.56725, 6.71194, 0.551152, 2.74328, 0.716344, 1.88105, 0.64381),
(69, 2.97671, 3.78317, 2.33353, 0.627853, 0.759291, 2.95775, 1.68303, 0.92468, 0.633117),
(70, 2.18252, 3.69024, 0.220586, 1.42358, 0.473455, 2.85856, 2.5003, 0.548226, 1.41628),
(71, 2.73669, 5.22759, 3.75716, 7.83768, 0.668709, 0.701081, 1.21324, 2.78422, 2.22984),
(72, 0.786867, 0.111591, 3.29266, 3.38291, 0.588482, 2.5994, 2.02145, 0.853542, 2.52584),
(73, 2.55024, 4.22546, 3.49473, 4.77183, 0.0943636, 2.99022, 2.04715, 0.51834, 1.88803),
(74, 0.627018, 0.901751, 0.803213, 4.68865, 0.602546, 1.79088, 0.763456, 1.79501, 1.32786),
(75, 1.71202, 3.25353, 1.43597, 1.35985, 0.520701, 1.68148, 0.280683, 1.22428, 2.3292),
(76, 2.30328, 6.33992, 3.46714, 7.11126, 0.729225, 0.7435, 2.93821, 1.56617, 0.715311),
(77, 2.9765, 4.96542, 2.98863, 4.96239, 0.943415, 1.82555, 2.56853, 2.74362, 2.15808),
(78, 0.906715, 3.1545, 1.21333, 0.794028, 0.692687, 2.05404, 0.497018, 0.214424, 1.80358),
(79, 1.97186, 5.25212, 1.37762, 2.3539, 0.71153, 0.763493, 2.02481, 0.0647392, 0.75966),
(80, 2.52504, 1.68066, 1.05261, 4.55737, 0.591531, 0.526987, 0.745918, 0.474084, 1.25683),
(81, 2.39063, 3.28023, 0.428782, 7.38669, 0.628302, 1.79131, 1.1145, 1.7391, 1.98838),
(82, 2.74927, 6.80822, 3.51249, 7.91579, 0.104123, 2.24552, 1.65659, 2.47419, 2.84325),
(83, 0.317679, 3.14028, 0.6923, 5.86816, 0.636882, 1.7594, 2.95154, 1.75948, 0.0307196),
(84, 0.353139, 0.0601456, 3.52933, 2.83746, 0.948719, 0.274257, 2.03864, 1.29395, 2.82469),
(85, 2.77461, 3.86105, 2.19957, 0.790269, 0.569879, 2.15776, 1.65914, 2.82459, 2.92404),
(86, 0.355333, 0.389132, 3.12028, 7.23772, 0.767548, 1.85644, 0.370785, 2.78191, 0.756029),
(87, 2.23614, 2.20731, 3.1963, 3.29747, 0.0719262, 0.617594, 0.369242, 0.250002, 0.988991),
(88, 1.10608, 2.79738, 3.36426, 3.96217, 0.515547, 1.88665, 0.275768, 2.83663, 0.960809),
(89, 0.621326, 6.3908, 2.66133, 4.61123, 0.763379, 0.867258, 0.263058, 2.11955, 0.118638),
(90, 1.98375, 1.03805, 1.20217, 0.315197, 0.983107, 1.43522, 2.392, 2.84146, 1.21389),
(91, 0.112043, 0.261478, 3.69811, 7.62977, 0.529147, 2.3843, 2.35372, 2.58529, 1.23946),
(92, 1.75307, 2.34795, 0.333146, 4.85229, 0.0169191, 0.970175, 0.794959, 1.83208, 2.01576),
(93, 1.84837, 1.91922, 2.22979, 1.54419, 0.740282, 1.72774, 0.367012, 0.171109, 1.22484),
(94, 2.96361, 2.73589, 0.222562, 7.1883, 0.175399, 1.76158, 0.544145, 2.29033, 2.31729),
(95, 0.0524842, 2.66499, 0.785857, 3.50335, 0.695353, 1.07825, 0.489029, 1.96483, 1.49424),
(96, 2.09506, 5.10292, 1.9809, 7.48314, 0.658691, 0.467733, 1.46183, 1.77778, 0.0182721),
(97, 1.18444, 3.22221, 2.2785, 1.13217, 0.912031, 2.51923, 0.406768, 2.45331, 0.795578),
(98, 1.7263, 6.59298, 2.10903, 6.00498, 0.866963, 0.90751, 0.248837, 2.06086, 0.886151),
(99, 0.663109, 5.69688, 3.36154, 2.05631, 0.533106, 2.46109, 2.68323, 1.98088, 1.75209),
(100, 0.131053, 6.10919, 3.51684, 6.18311, 0.122079, 2.04141, 0.875188, 2.35237, 1.74237);

-- --------------------------------------------------------

--
-- Table structure for table `Prices`
--

CREATE TABLE `Prices` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Animal` int(11) NOT NULL,
  `Enclosure` int(11) NOT NULL,
  `Staff` int(11) NOT NULL,
  `Food` int(11) NOT NULL,
  `Medicine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Prices`
--

INSERT INTO `Prices` (`Id`, `Name`, `Animal`, `Enclosure`, `Staff`, `Food`, `Medicine`) VALUES
(1, 'Lion', 300, 2000, 100, 30, 200),
(2, 'Elephant', 700, 10000, 100, 30, 500),
(3, 'Gorilla', 200, 1500, 100, 5, 100),
(4, 'Panda', 1000, 8000, 100, 60, 600),
(5, 'Parrot', 50, 700, 100, 1, 40),
(6, 'Crocodile', 175, 1000, 100, 10, 100),
(7, 'Zebra', 225, 2000, 100, 5, 150),
(8, 'Giraffe', 250, 2200, 100, 5, 150),
(9, 'Orangutan', 150, 1200, 100, 4, 100);

-- --------------------------------------------------------

--
-- Structure for view `animalinventory`
--
DROP TABLE IF EXISTS `animalinventory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `animalinventory`  AS SELECT `animals`.`Name` AS `Name`, `animals`.`Number` AS `Number`, `animals`.`Enclosure` AS `Enclosure`, `animals`.`Staff` AS `Staff`, `animals`.`Food` AS `Food` FROM `animals` WHERE (`animals`.`Number` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `lastlog`
--
DROP TABLE IF EXISTS `lastlog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lastlog`  AS SELECT `log`.`Id` AS `Week`, `log`.`Money` AS `Money`, `log`.`Visitors` AS `Visitors` FROM `log` ORDER BY `log`.`Id` DESC LIMIT 0, 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animals`
--
ALTER TABLE `Animals`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Prices`
--
ALTER TABLE `Prices`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyAds`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Cost INT DEFAULT 400;
  DECLARE Existing INT;
  DECLARE MoneyAvailable INT;
 
  SELECT `Ads` INTO Existing 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Money` INTO MoneyAvailable
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  IF (Cost * Quantity > MoneyAvailable)
    THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Not enough money!';
  ELSEIF (Existing + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative ads!';
  ELSE
  	UPDATE `Animals`
	SET `Ads` = Existing + Quantity
	WHERE Name = Creature;
    UPDATE `Log`
	SET `Money` = MoneyAvailable - Cost * Quantity;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyAnimal`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Cost INT;
  DECLARE Enclosures INT;
  DECLARE StaffAvailable INT;
  DECLARE Existing INT;
  DECLARE MoneyAvailable INT;

  SELECT `Animal` INTO Cost 
  FROM `Prices`
  WHERE `Name` = Creature;
 
  SELECT `Enclosure` INTO Enclosures 
  FROM `Animals`
  WHERE `Name` = Creature;
  
  SELECT `Staff` INTO StaffAvailable 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Number` INTO Existing 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Money` INTO MoneyAvailable
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  IF (Cost * Quantity > MoneyAvailable)
    THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Not enough money!';
  ELSEIF (Existing + Quantity > 10 * enclosures)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Not enough space!';
  ELSEIF (Existing + Quantity > 5 * StaffAvailable)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Not enough staff!';
  ELSEIF (Existing + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative animals!';
  ELSE
  	UPDATE `Animals`
	SET `Number` = Existing + Quantity
	WHERE Name = Creature;
    UPDATE `Log`
	SET `Money` = MoneyAvailable - Cost * Quantity;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyEnclosure`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Cost INT;
  DECLARE ExistingEnclosures INT;
  DECLARE MoneyAvailable INT;

  SELECT `Enclosure` INTO Cost 
  FROM `Prices`
  WHERE `Name` = Creature;
 
  SELECT `Enclosure` INTO ExistingEnclosures 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Money` INTO MoneyAvailable
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  IF (Cost * Quantity > MoneyAvailable)
    THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Not enough money!';
  ELSEIF (ExistingEnclosures + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative enclosures!';
  ELSE
  	UPDATE `Animals`
	SET `Enclosure` = ExistingEnclosures + Quantity
	WHERE Name = Creature;
    UPDATE `Log`
	SET `Money` = MoneyAvailable - Cost * Quantity;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyFood`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Cost INT;
  DECLARE Existing INT;
  DECLARE MoneyAvailable INT;

  SELECT `Food` INTO Cost 
  FROM `Prices`
  WHERE `Name` = Creature;
 
  SELECT `Food` INTO Existing 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Money` INTO MoneyAvailable
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  IF (Cost * Quantity > MoneyAvailable)
    THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Not enough money!';
  ELSEIF (Existing + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative food!';
  ELSE
  	UPDATE `Animals`
	SET `Food` = Existing + Quantity
	WHERE Name = Creature;
    UPDATE `Log`
	SET `Money` = MoneyAvailable - Cost * Quantity;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buyMedicine`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Cost INT;
  DECLARE Existing INT;
  DECLARE MoneyAvailable INT;

  SELECT `Medicine` INTO Cost 
  FROM `Prices`
  WHERE `Name` = Creature;
 
  SELECT `Medicine` INTO Existing 
  FROM `Animals`
  WHERE `Name` = Creature;

  SELECT `Money` INTO MoneyAvailable
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  IF (Cost * Quantity > MoneyAvailable)
    THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Not enough money!';
  ELSEIF (Existing + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative medicine!';
  ELSE
  	UPDATE `Animals`
	SET `Medicine` = Existing + Quantity
	WHERE Name = Creature;
    UPDATE `Log`
	SET `Money` = MoneyAvailable - Cost * Quantity;
  END IF;
  
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `deductSalaries`()
BEGIN

  DECLARE x INT DEFAULT 0;
  DECLARE length INT;
  DECLARE animalStaff INT;
  DECLARE animalCost INT;
  DECLARE moneyAvailable INT;

  SELECT COUNT(`Id`) INTO length 
  FROM `Animals`;
  
  SELECT `Money` INTO moneyAvailable 
  FROM `Log`
  ORDER BY `Id` DESC
  LIMIT 1;
  
  WHILE x < length DO
  	SET x = x + 1;
  	SELECT `Staff` INTO animalStaff 
    FROM `Animals`
    WHERE `Id` = x;
    
    SELECT `Staff` INTO animalCost 
    FROM `Prices`
    WHERE `Id` = x;
    
    SET moneyAvailable = moneyAvailable -animalStaff * animalCost;
    
  END WHILE;

  UPDATE `Log`
  SET `Money` = moneyAvailable;

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `eatFood`()
BEGIN

  DECLARE x INT DEFAULT 0;
  DECLARE length INT;
  DECLARE animalNum INT;
  DECLARE animalFood INT;

  SELECT COUNT(`Id`) INTO length 
  FROM `Animals`;
  
  WHILE x < length DO
  	SET x = x + 1;
  	SELECT `Number` INTO animalNum 
  	FROM `Animals`
  	WHERE `Id` = x;
    
    SELECT `Food` INTO animalFood 
  	FROM `Animals`
  	WHERE `Id` = x;
    
    IF (animalFood >= animalNum)
    THEN
      UPDATE `Animals`
      SET `Food` = animalFood - animalNum
      WHERE `Id` = x;
  	ELSE
  	  UPDATE `Animals`
      SET `Number` = animalFood
      WHERE `Id` = x;
    
      UPDATE `Animals`
      SET `Food` = 0
      WHERE `Id` = x;
    END IF;
    
  END WHILE;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hireStaff`(IN `Creature` VARCHAR(255), IN `Quantity` INT)
BEGIN
  DECLARE Existing INT;
 
  SELECT `Staff` INTO Existing 
  FROM `Animals`
  WHERE `Name` = Creature;
  
  IF (Existing + Quantity < 0)
	THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT='Cannot have negative staff!';
  ELSE
  	UPDATE `Animals`
  	SET `Staff` = Existing + Quantity
  	WHERE Name = Creature;
  END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `newGame`()
BEGIN
	DECLARE x INT DEFAULT 1;
	DECLARE ElephantMod INT;
	DECLARE ElephantOpinion Float;
    DECLARE CrocodileMod INT;
	DECLARE CrocodileOpinion Float;
    DECLARE GiraffeMod INT;
	DECLARE GiraffeOpinion Float;
    DECLARE GorillaMod INT;
	DECLARE GorillaOpinion Float;
    DECLARE LionMod INT;
	DECLARE LionOpinion Float;
    DECLARE OrangutanMod INT;
	DECLARE OrangutanOpinion Float;
    DECLARE PandaMod INT;
	DECLARE PandaOpinion Float;
    DECLARE ParrotMod INT;
	DECLARE ParrotOpinion Float;
    DECLARE ZebraMod INT;
	DECLARE ZebraOpinion Float;
    
    DECLARE StartingDie Float;
    DECLARE StartingAnimal VarChar(255);
    
    SET ElephantMod = 7 * Rand() + 7;
    SET CrocodileMod = 2 * Rand() + 2;
    SET GiraffeMod = 2 * Rand() + 2;
    SET GorillaMod = 2 * Rand() + 2;
    SET LionMod = 3 * Rand() + 3;
    SET OrangutanMod = 1.5 * Rand() + 1.5;
    SET PandaMod = 6 * Rand() + 6;
    SET ParrotMod = 0.5 * Rand() + 0.5;
    SET ZebraMod = 2 * Rand() + 2;
    
    DELETE FROM `People`;
    
    WHILE x <= 1000 DO
    	SET ElephantOpinion = ElephantMod * RAND();
        SET CrocodileOpinion = CrocodileMod * RAND();
        SET GiraffeOpinion = GiraffeMod * RAND();
        SET GorillaOpinion = GorillaMod * RAND();
        SET LionOpinion = LionMod * RAND();
        SET OrangutanOpinion = OrangutanMod * RAND();
        SET PandaOpinion = PandaMod * RAND();
        SET ParrotOpinion = ParrotMod * RAND();
        SET ZebraOpinion = ZebraMod * RAND();
        INSERT INTO `People` (`Id`, `LikesLions`, `LikesElephants`, `LikesGorillas`, `LikesPandas`, `LikesParrots`, `LikesCrocodiles`, `LikesZebras`, `LikesGiraffes`, `LikesOrangutans`) VALUES (x, LionOpinion, ElephantOpinion, GorillaOpinion, PandaOpinion, ParrotOpinion, CrocodileOpinion, ZebraOpinion, GiraffeOpinion, OrangutanOpinion);
    SET x = x + 1;
    END WHILE;
	
    DELETE FROM `Log`;
	INSERT INTO `Log` (`Id`, `Money`, `Visitors`) VALUES (0, 5000, 0);
    
    UPDATE `Animals`
    SET `Enclosure` = 0;
    UPDATE `Animals`
    SET `Food` = 0;
    UPDATE `Animals`
    SET `Number` = 0;
    UPDATE `Animals`
    SET `Staff` = 0;
    
    SET StartingDie = 6 * RAND();
    If (StartingDie < 1)
    	THEN
        SET StartingAnimal = 'Lion';
    ELSEIF (StartingDie < 2)
    	THEN
        SET StartingAnimal = 'Gorilla';
    ELSEIF (StartingDie < 3)
    	THEN
        SET StartingAnimal = 'Giraffe';
    ELSEIF (StartingDie < 4)
    	THEN
        SET StartingAnimal = 'Zebra';
    ELSEIF (StartingDie < 5)
    	THEN
        SET StartingAnimal = 'Crocodile';
    ELSE
        SET StartingAnimal = 'Orangutan';
	END IF;
    
    UPDATE `Animals`
    SET `Enclosure` = 1
    WHERE `Name` = StartingAnimal;
    UPDATE `Animals`
    SET `Food` = 5
    WHERE `Name` = StartingAnimal;
    UPDATE `Animals`
    SET `Number` = 5
    WHERE `Name` = StartingAnimal;
    UPDATE `Animals`
    SET `Staff` = 1
    WHERE `Name` = StartingAnimal;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `nextWeek`()
BEGIN
  CALL simulateVisitors;
  CALL eatFood;
  CALL deductSalaries;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `runAds`()
BEGIN

  DECLARE x INT DEFAULT 0;
  DECLARE length INT;
  DECLARE animalAds INT;

  SELECT COUNT(`Id`) INTO length 
  FROM `Animals`;
  
  WHILE x < length DO
  	SET x = x + 1;
  	SELECT `Ads` INTO animalAds 
  	FROM `Animals`
  	WHERE `Id` = x;
    
    IF (animalAds > 0)
    THEN
      UPDATE `Animals`
      SET `Ads` = animalAds - 1
      WHERE `Id` = x;
    END IF;
    
  END WHILE;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `simulateDisease`()
BEGIN

  DECLARE x INT DEFAULT 0;
  DECLARE length INT;
  DECLARE animalNum INT;
  DECLARE animalSick INT;
  DECLARE animalHealthy INT;
  DECLARE animalTreated INT;
  DECLARE animalUntreated INT;
  DECLARE sickSpread INT;
  DECLARE animalRecovered INT;
  DECLARE animalDeceased INT;
  DECLARE medicineAvailable INT;

  SELECT COUNT(`Id`) INTO length 
  FROM `Animals`;
  
  WHILE x < length DO
  	SET x = x + 1;
  	SELECT `Number` INTO animalNum 
    FROM `Animals`
    WHERE `Id` = x;
    
    SELECT `Sick` INTO animalSick
    FROM `Animals`
    WHERE `Id` = x;
    
    SELECT `Medicine` INTO medicineAvailable 
    FROM `Animals`
    WHERE `Id` = x;
    
    SET animalHealthy = animalNum - animalSick;
    
    IF 1 - animalHealthy * 0.001 < RAND()
    THEN
      SET animalSick = animalSick + 1;
    END IF;
    
    IF medicineAvailable >= animalSick
    THEN
      SET animalTreated = animalSick;
    ELSE
      SET animalTreated = medicineAvailable;
    END IF;
        
    SET animalUntreated = animalSick - animalTreated;
    SET medicineAvailable = medicineAvailable - animalTreated;
    
    SET sickSpread = Round(RAND() * (animalUntreated + animalTreated * 0.2));  
    SET animalRecovered = ROUND(RAND() * (animalUntreated * 0.25 + animalTreated));
    SET animalDeceased = ROUND(RAND() * (animalUntreated * 0.3 + animalTreated * 0.1));
    
    SET animalSick = animalSick + sickSpread - animalRecovered - animalDeceased;
    SET animalNum = animalNum - animalDeceased;
    
    IF animalSick > animalNum
    THEN
      SET animalSick = animalNum;
    END IF;
    
    UPDATE `Animals`
    SET `Number` = animalNum
    WHERE `Id` = x;
    
    UPDATE `Animals`
    SET `Sick` = animalSick
    WHERE `Id` = x;
    
    UPDATE `Animals`
    SET `Medicine` = medicineAvailable
    WHERE `Id` = x;
    
  END WHILE;

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `simulateVisitors`()
BEGIN
	DECLARE x INT DEFAULT 1;
	DECLARE Elephants INT;
	DECLARE ElephantOpinion Float;
    DECLARE ElephantAds INT;
    DECLARE Crocodiles INT;
	DECLARE CrocodileOpinion Float;
    DECLARE CrocodileAds INT;
    DECLARE Giraffes INT;
	DECLARE GiraffeOpinion Float;
    DECLARE GiraffeAds INT;
    DECLARE Gorillas INT;
	DECLARE GorillaOpinion Float;
    DECLARE GorillaAds INT;
    DECLARE Lions INT;
	DECLARE LionOpinion Float;
    DECLARE LionAds INT;
    DECLARE Orangutans INT;
	DECLARE OrangutanOpinion Float;
    DECLARE OrangutanAds INT;
    DECLARE Pandas INT;
	DECLARE PandaOpinion Float;
    DECLARE PandaAds INT;
    DECLARE Parrots INT;
	DECLARE ParrotOpinion Float;
    DECLARE ParrotAds INT;
    DECLARE Zebras INT;
	DECLARE ZebraOpinion Float;
    DECLARE ZebraAds INT;
    
    DECLARE RawPropensity Float;
    DECLARE RandHolder Float;
    DECLARE ScaledPropensity Float;
    
    DECLARE CurrentMoney INT;
    DECLARE CurrentVisitors INT;
    
    SELECT `Number` INTO Elephants
    FROM `Animals`
    WHERE `Name` = 'Elephant';
    SELECT `Ads` INTO ElephantAds
    FROM `Animals`
    WHERE `Name` = 'Elephant';
    IF ElephantAds > 0
    THEN
      SET Elephants = ROUND(Elephants * 1.5);
    END IF;
    SELECT `Number` INTO Gorillas
    FROM `Animals`
    WHERE `Name` = 'Gorilla';
    SELECT `Ads` INTO GorillaAds
    FROM `Animals`
    WHERE `Name` = 'Gorilla';
    IF GorillaAds > 0
    THEN
      SET Gorillas = ROUND(Gorillas * 1.5);
    END IF;
    SELECT `Number` INTO Crocodiles
    FROM `Animals`
    WHERE `Name` = 'Crocodile';
    SELECT `Ads` INTO CrocodileAds
    FROM `Animals`
    WHERE `Name` = 'Crocodile';
    IF CrocodileAds > 0
    THEN
      SET Crocodiles = ROUND(Crocodiles * 1.5);
    END IF;
    SELECT `Number` INTO Giraffes
    FROM `Animals`
    WHERE `Name` = 'Giraffe';
    SELECT `Ads` INTO GiraffeAds
    FROM `Animals`
    WHERE `Name` = 'Giraffe';
    IF GiraffeAds > 0
    THEN
      SET Giraffes = ROUND(Giraffes * 1.5);
    END IF;
    SELECT `Number` INTO Lions
    FROM `Animals`
    WHERE `Name` = 'Lion';
    SELECT `Ads` INTO LionAds
    FROM `Animals`
    WHERE `Name` = 'Lion';
    IF LionAds > 0
    THEN
      SET Lions = ROUND(Lions * 1.5);
    END IF;
    SELECT `Number` INTO Orangutans
    FROM `Animals`
    WHERE `Name` = 'Orangutan';
    SELECT `Ads` INTO OrangutanAds
    FROM `Animals`
    WHERE `Name` = 'Orangutan';
    IF OrangutanAds > 0
    THEN
      SET Orangutans = ROUND(Orangutans * 1.5);
    END IF;
    SELECT `Number` INTO Pandas
    FROM `Animals`
    WHERE `Name` = 'Panda';
    SELECT `Ads` INTO PandaAds
    FROM `Animals`
    WHERE `Name` = 'Panda';
    IF PandaAds > 0
    THEN
      SET Pandas = ROUND(Pandas * 1.5);
    END IF;
    SELECT `Number` INTO Parrots
    FROM `Animals`
    WHERE `Name` = 'Parrot';
    SELECT `Ads` INTO ParrotAds
    FROM `Animals`
    WHERE `Name` = 'Parrot';
    IF ParrotAds > 0
    THEN
      SET Parrots = ROUND(Parrots * 1.5);
    END IF;
    SELECT `Number` INTO Zebras
    FROM `Animals`
    WHERE `Name` = 'Zebra';
    SELECT `Ads` INTO ZebraAds
    FROM `Animals`
    WHERE `Name` = 'Zebra';
    IF ZebraAds > 0
    THEN
      SET Zebras = ROUND(Zebras * 1.5);
    END IF;
    
    WHILE x <= 1000 DO
		SELECT `LikesElephants` INTO ElephantOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesCrocodiles` INTO CrocodileOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesGiraffes` INTO GiraffeOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesGorillas` INTO GorillaOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesLions` INTO LionOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesOrangutans` INTO OrangutanOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesPandas` INTO PandaOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesParrots` INTO ParrotOpinion
        FROM `People`
        WHERE `Id` = x;
        SELECT `LikesZebras` INTO ZebraOpinion
        FROM `People`
        WHERE `Id` = x;
        
        SET RawPropensity = ElephantOpinion * Elephants + CrocodileOpinion * Crocodiles + GiraffeOpinion * Giraffes + GorillaOpinion * Gorillas + LionOpinion * Lions + OrangutanOpinion * Orangutans + PandaOpinion * Pandas + ParrotOpinion * Parrots + ZebraOpinion * Zebras;
        SET RandHolder = RAND();
        SET ScaledPropensity = RawPropensity / (RawPropensity + 1000);
        
		If (ScaledPropensity > RandHolder)
        	THEN
            	SELECT `Money` INTO CurrentMoney
                FROM `Log`
                ORDER BY `ID` DESC
                LIMIT 1;
                SELECT `Visitors` INTO CurrentVisitors
                FROM `Log`
                ORDER BY `ID` DESC
                LIMIT 1;
                
                UPDATE `Log`
                SET `Money` = CurrentMoney + 50;
                UPDATE `Log`
                SET `Visitors` = CurrentVisitors + 1;
        END IF;
        
	SET x = x + 1;
    END WHILE;
    
END$$
DELIMITER ;