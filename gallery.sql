-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 23, 2020 lúc 08:19 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `Image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`ID`, `Name`, `Details`, `Image`) VALUES
(1, 'Wikimedia Foundation', 'United States of America - Freedom of information', 'https://media.daysoftheyear.com/20180518092352/world-ngo-day.jpeg'),
(2, 'Oxfam', 'United Kingdom - Humanitarian development and relief', 'https://d3jh33bzyw1wep.cloudfront.net/s3/W1siZiIsIjIwMTkvMDkvMTUvMTgvNTAvMjYvMjc3L05HTyBQaWMgMS5qcGciXSxbInAiLCJ0aHVtYiIsIjEyMDB4NjMwIyJdXQ'),
(3, 'Nepal Association of the Blind', 'Nepal Association of the Blind (NAB) is a non-Governmental, non-profit making national organization of the blind, formally established in 1993', 'https://image3.tienphong.vn/w665/Uploaded/2020/bpivpvoi/2019_07_07/miss_world_viet_nam_2019_1__grpw.jpg'),
(4, 'Access Bangladesh Foundation', 'In order to facilitate this the Access Bangladesh Foundation, a non political, not for profit and non government organization was set up on 4 th January, 2008', 'https://4.bp.blogspot.com/-DTaQipRyJAs/WLQkAExI0SI/AAAAAAAAEbk/IXPmkrfOCqYorv-y4OnbqyewfKinYMXMACLcB/s1600/IMG-20170227-WA0002.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
