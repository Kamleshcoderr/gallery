-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 07:03 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `albumid` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `adesc` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`albumid`, `name`, `adesc`, `image`, `date`, `status`) VALUES
(1, 'Cars', 'My Cars Album', '13019lexus_lc_500_4k-HD.jpg', '2016-04-06 04:40:24', 'process'),
(2, 'Sunset PIC', 'My Sunset Album ', '21038british_virgin_islands_sunset-wide.jpg', '2016-04-06 04:52:04', 'process'),
(3, '3d wallpaers', 'My 3d wallpaers', '22862solid_abstract_colors-HD.jpg', '2016-04-06 04:54:51', 'process'),
(4, 'Heros', 'Mysuper heros', '4710iron_man_4k-HD.jpg', '2016-04-06 10:27:58', 'process'),
(5, 'Ladscape', 'My extrem ', '6567construction-40.jpg', '2016-04-06 10:28:52', 'process'),
(6, 'Kamlesh', 'hi', '1030507988Desert1.jpg', '2022-09-20 17:17:24', 'process');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `gname` varchar(1000) NOT NULL,
  `gimages` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gid`, `aid`, `gname`, `gimages`, `date`, `status`) VALUES
(1, 1, 'Cars', '0139052016_mclaren_570s_gt4-wide.jpg', '2016-04-06 04:41:00', 'delete'),
(2, 1, 'Cars', '1324382016_rolls_royce_ghost_eternal_love-wide.jpg', '2016-04-06 04:41:00', 'process'),
(3, 1, 'Cars', '260712016_rosso_mars_novara_edizione_lamborghini_huracan-wide.jpg', '2016-04-06 04:41:00', 'process'),
(4, 1, 'Cars', '32852aston_martin_rapide.jpg', '2016-04-06 04:41:00', 'process'),
(5, 1, 'Cars', '426253bell_ross_design_aerogt_concept-wide.jpg', '2016-04-06 04:41:00', 'process'),
(6, 1, 'Cars', '520546mercedes_benz_glc_coupe_2017-HD.jpg', '2016-04-06 04:41:00', 'process'),
(7, 2, 'Sunset', '023803british_virgin_islands_sunset-wide.jpg', '2016-04-06 04:52:26', 'process'),
(8, 2, 'Sunset', '116664rocky_coastline_sunset-wide.jpg', '2016-04-06 04:52:26', 'process'),
(9, 2, 'Sunset', '214193sunrise_5k-wide.jpg', '2016-04-06 04:52:26', 'process'),
(10, 2, 'Sunset', '314678sunset_beach_mood-wide.jpg', '2016-04-06 04:52:26', 'process'),
(11, 3, '3d wallpaers', '08078aqua_abstract-HD.jpg', '2016-04-06 04:55:11', 'process'),
(12, 3, '3d wallpaers', '125519colorful_polygons-wide.jpg', '2016-04-06 04:55:11', 'process'),
(13, 3, '3d wallpaers', '229628glow_rays_abstract-HD.jpg', '2016-04-06 04:55:11', 'process'),
(14, 3, '3d wallpaers', '316197htc_one_m8_background-wide.jpg', '2016-04-06 04:55:11', 'process'),
(15, 3, '3d wallpaers', '49882the_great_race-wide.jpg', '2016-04-06 04:55:11', 'delete'),
(16, 4, 'Heros', '0417170927Desert.jpeg', '2022-09-20 18:46:09', 'process'),
(17, 6, 'Kamlesh', '02083229461Developing Soft Skills and Personality.jpg', '2022-09-21 04:01:18', 'process');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `lid` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`lid`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kamlesh', 'kamlesh@gmail.com', '$2y$10$WSFbV.aRxV43/NFtOcLUPumGzburjT/G1iz71kbWScB7yX3YP5FvK'),
(2, 'Kamlesh', 'Kamlesh020@gmail.com', '$2y$10$riGUWkCjLIXuNrbtYRNy6.zhLIRWs7cLJtrFkfbl7yFVXsBJkKkym');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`albumid`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `albumid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `lid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
