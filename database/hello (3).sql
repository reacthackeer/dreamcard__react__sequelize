-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 03:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello`
--

-- --------------------------------------------------------

--
-- Table structure for table `backuppasswords`
--

CREATE TABLE `backuppasswords` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backuppasswords`
--

INSERT INTO `backuppasswords` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'dearvayu1@gmail.com', '$2a$10$XMITLlSv2UOoA4a30yW9NODQFVZZ/xLrkxW..RgRUmu1PaTIs5AJ.', '2023-11-29 12:45:50', '2023-11-29 12:45:50'),
(2, 'dearvayu2@gmail.com', '$2a$10$hM5AyzLxZTO2UMyQE82V9uXoimMnf3dDgTGFSUV/YiT.ZhlJtU4J2', '2023-11-29 12:46:03', '2023-11-29 12:46:03'),
(3, 'dearvayu3@gmail.com', '$2a$10$5fHtz3HNu7rSriIKfp917ud3w24jpB4YTeCz7PbXVuOeGvcj5MnQW', '2023-11-29 12:46:14', '2023-11-29 12:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `rootBlind` decimal(20,4) DEFAULT 0.0000,
  `rootChaal` decimal(20,4) DEFAULT 0.0000,
  `join` decimal(20,4) DEFAULT 0.0000,
  `chaal` decimal(20,4) DEFAULT 0.0000,
  `blind` decimal(20,4) DEFAULT 0.0000,
  `board` decimal(20,4) DEFAULT 0.0000,
  `currentBalance` decimal(20,4) DEFAULT 0.0000,
  `currentCommission` decimal(20,4) DEFAULT 0.0000,
  `totalBalance` decimal(20,4) DEFAULT 0.0000,
  `accessIdes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`accessIdes`)),
  `player` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`player`)),
  `member` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`member`)),
  `playing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`playing`)),
  `roomId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `increase` varchar(255) DEFAULT NULL,
  `compare` varchar(255) DEFAULT NULL,
  `balanceType` varchar(255) DEFAULT NULL,
  `isStart` varchar(255) DEFAULT 'false',
  `currentId` varchar(255) DEFAULT 'empty',
  `previousId` varchar(255) DEFAULT 'empty',
  `nextId` varchar(255) DEFAULT 'empty',
  `adminId` varchar(255) DEFAULT 'empty',
  `type` varchar(255) DEFAULT NULL,
  `isSchedule` varchar(255) DEFAULT NULL,
  `maxBlindHit` int(11) DEFAULT 0,
  `maxChaalHit` int(11) DEFAULT 0,
  `minBlindHit` int(11) DEFAULT 0,
  `minChaalHit` int(11) DEFAULT 0,
  `maxPlayer` int(11) DEFAULT 0,
  `cardViewTill` datetime DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `rootBlind`, `rootChaal`, `join`, `chaal`, `blind`, `board`, `currentBalance`, `currentCommission`, `totalBalance`, `accessIdes`, `player`, `member`, `playing`, `roomId`, `name`, `increase`, `compare`, `balanceType`, `isStart`, `currentId`, `previousId`, `nextId`, `adminId`, `type`, `isSchedule`, `maxBlindHit`, `maxChaalHit`, `minBlindHit`, `minChaalHit`, `maxPlayer`, `cardViewTill`, `startTime`, `created_at`, `updated_at`) VALUES
(8, 0.0000, 0.0000, 6.7797, 0.1695, 0.0847, 0.2542, 0.0000, 0.0000, 0.0000, '[\"999999999999\",\"9220832362\"]', '[{\"name\":\"Jumol Ali\",\"email\":\"dearvayu3@gmail.com\",\"phone\":\"01303501463\",\"userId\":\"9220832362\",\"referralCode\":\"999999999999\",\"id\":1},{\"name\":\"Sohidul Islam\",\"email\":\"dearvayu1@gmail.com\",\"phone\":\"01303501461\",\"userId\":\"999999999999\",\"referralCode\":\"999999999999\",\"id\":3}]', '[\"999999999999\",\"9220832362\"]', '[]', '430ac3ac8a4', 'Joying day', 'true', 'true', 'real', 'false', 'false', 'false', 'false', '8242892575', 'public', 'true', 5, 5, 1, 1, 13, '2023-12-25 15:39:44', '2023-12-25 16:56:00', '2023-12-25 13:53:37', '2023-12-25 15:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `connectedlists`
--

CREATE TABLE `connectedlists` (
  `id` int(11) NOT NULL,
  `socketId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `roomId` varchar(255) DEFAULT 'false',
  `inRoom` varchar(255) DEFAULT 'false',
  `interested` varchar(255) DEFAULT 'false',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `connectedlists`
--

INSERT INTO `connectedlists` (`id`, `socketId`, `userId`, `roomId`, `inRoom`, `interested`, `created_at`, `updated_at`) VALUES
(976, 'Wjw97SZk13sL87WmAABF', '9206215447', 'd3bd7ac4dff', 'true', 'false', '2023-12-06 12:38:53', '2023-12-06 12:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `email` varchar(255) NOT NULL,
  `adminId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `isActive` varchar(255) DEFAULT 'true',
  `status` varchar(255) DEFAULT 'pending',
  `message` varchar(255) DEFAULT 'empty',
  `balanceType` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dollar` decimal(20,4) NOT NULL,
  `currencyRate` decimal(20,4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `dollar`, `currencyRate`, `created_at`, `updated_at`) VALUES
(1, 'Usd', 1.0000, 1.0000, '2023-11-29 12:57:06', '2023-11-29 12:57:06'),
(2, 'Taka', 1.0000, 118.0000, '2023-11-29 12:57:18', '2023-11-29 12:57:18'),
(3, 'Rupi', 1.0000, 110.0000, '2023-12-02 12:30:05', '2023-12-02 12:30:05'),
(5, 'Dirham', 1.0000, 5.0000, '2023-12-02 13:30:35', '2023-12-02 13:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `depositrequests`
--

CREATE TABLE `depositrequests` (
  `id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `idType` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `referrance` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `message` varchar(255) NOT NULL DEFAULT 'empty',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `depositrequests`
--

INSERT INTO `depositrequests` (`id`, `wallet`, `idType`, `account`, `currency`, `amount`, `referrance`, `userId`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nagad', 'Personal Number', '01303501469', 'Taka', 25000.0000, 'enter', '9178098945', 'complete', 'empty', '2023-11-29 12:58:33', '2023-11-29 12:58:41'),
(2, 'Nagad', 'Personal Number', '01303501469', 'Taka', 25000.0000, 'enter', '8242892575', 'complete', 'empty', '2023-11-29 12:59:07', '2023-11-29 12:59:15'),
(3, 'Nagad', 'Personal Number', '01303501469', 'Taka', 25000.0000, 'enter', '9220832362', 'complete', 'empty', '2023-11-29 12:59:40', '2023-11-29 12:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `inrooms`
--

CREATE TABLE `inrooms` (
  `id` int(11) NOT NULL,
  `userIdes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`userIdes`)),
  `roomWithId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`roomWithId`)),
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inrooms`
--

INSERT INTO `inrooms` (`id`, `userIdes`, `roomWithId`, `created_at`, `updated_at`) VALUES
(1, '[\"9178098945\",\"999999999999\",\"9220832362\"]', '[{\"roomId\":\"9da8341e4f3\",\"adminId\":\"9178098945\"},{\"roomId\":\"430ac3ac8a4\",\"adminId\":\"999999999999\"},{\"roomId\":\"430ac3ac8a4\",\"adminId\":\"9220832362\"}]', '2023-11-29 14:01:52', '2023-12-25 15:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `playinghistories`
--

CREATE TABLE `playinghistories` (
  `id` int(11) NOT NULL,
  `winnerId` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT 'Game',
  `balanceType` varchar(255) DEFAULT 'demo',
  `members` varchar(255) DEFAULT NULL,
  `playingInfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`playingInfo`)),
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playinghistories`
--

INSERT INTO `playinghistories` (`id`, `winnerId`, `name`, `balanceType`, `members`, `playingInfo`, `created_at`, `updated_at`) VALUES
(1, '999999999999', 'Joying day', 'real', '___9220832362______999999999999______8242892575___', '[{\"index\":0,\"src\":\"/9220832362.png\",\"name\":\"Jumol Ali\",\"email\":\"dearvayu3@gmail.com\",\"phone\":\"01303501463\",\"userId\":\"9220832362\",\"referralCode\":\"999999999999\",\"id\":1,\"card\":[{\"name\":\"Clubs\",\"img__src\":\"/cards/k4.png\",\"card__index\":3,\"card__symble\":\"4\",\"card__point\":4,\"card__symble__point\":40},{\"name\":\"Spades\",\"img__src\":\"/cards/p5.png\",\"card__index\":30,\"card__symble\":\"5\",\"card__point\":5,\"card__symble__point\":50},{\"name\":\"Diamonds\",\"img__src\":\"/cards/lj.png\",\"card__index\":23,\"card__symble\":\"J\",\"card__point\":10,\"card__symble__point\":110}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"তুমি যখন তোমার কার্ড Sohidul Islam এর সাথে সাইড করে তখন Sohidul Islam বিজয়ী হয় এবং তুমি পরাজিত হও \",\"english\":\"When you side your cards with Sohidul Islam, Sohidul Islam wins and you lose\"}],\"seenRound\":1,\"blindRound\":2,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T14:36:47.000Z\"},{\"index\":1,\"src\":\"/9178098945.png\",\"name\":\"Sohidul Islam\",\"email\":\"dearvayu1@gmail.com\",\"phone\":\"01303501461\",\"userId\":\"999999999999\",\"referralCode\":\"999999999999\",\"id\":3,\"card\":[{\"name\":\"Diamonds\",\"img__src\":\"/cards/l6.png\",\"card__index\":18,\"card__symble\":\"6\",\"card__point\":6,\"card__symble__point\":60},{\"name\":\"Spades\",\"img__src\":\"/cards/p8.png\",\"card__index\":33,\"card__symble\":\"8\",\"card__point\":8,\"card__symble__point\":80},{\"name\":\"Clubs\",\"img__src\":\"/cards/kq.png\",\"card__index\":11,\"card__symble\":\"Q\",\"card__point\":10,\"card__symble__point\":120}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"আপনি খেলার প্রধান বিজয়ী \",\"english\":\"You are the main winner of the game\"}],\"seenRound\":1,\"blindRound\":2,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T14:36:47.000Z\"},{\"index\":2,\"src\":\"/8242892575.png\",\"name\":\"Saniul Islam\",\"email\":\"dearvayu2@gmail.com\",\"phone\":\"01303501462\",\"userId\":\"8242892575\",\"referralCode\":\"999999999999\",\"id\":2,\"card\":[{\"name\":\"Clubs\",\"img__src\":\"/cards/k2.png\",\"card__index\":1,\"card__symble\":\"2\",\"card__point\":2,\"card__symble__point\":20},{\"name\":\"Spades\",\"img__src\":\"/cards/p3.png\",\"card__index\":28,\"card__symble\":\"3\",\"card__point\":3,\"card__symble__point\":30},{\"name\":\"Spades\",\"img__src\":\"/cards/pj.png\",\"card__index\":36,\"card__symble\":\"J\",\"card__point\":10,\"card__symble__point\":110}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"Sohidul Islam যখন তার কার্ড তোমার সাথে  শো করে তখন সে বিজয়ী হয় \",\"english\":\"Sohidul Islam wins when he shows his card to you\"}],\"seenRound\":1,\"blindRound\":2,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T14:36:50.000Z\"}]', '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(2, '999999999999', 'Joying day', 'real', '___8242892575______999999999999______9220832362___', '[{\"index\":0,\"src\":\"/8242892575.png\",\"name\":\"Saniul Islam\",\"email\":\"dearvayu2@gmail.com\",\"phone\":\"01303501462\",\"userId\":\"8242892575\",\"referralCode\":\"999999999999\",\"id\":2,\"card\":[{\"name\":\"Spades\",\"img__src\":\"/cards/p3.png\",\"card__index\":28,\"card__symble\":\"3\",\"card__point\":3,\"card__symble__point\":30},{\"name\":\"Spades\",\"img__src\":\"/cards/p4.png\",\"card__index\":29,\"card__symble\":\"4\",\"card__point\":4,\"card__symble__point\":40},{\"name\":\"Hearts\",\"img__src\":\"/cards/sa.png\",\"card__index\":52,\"card__symble\":\"A\",\"card__point\":1,\"card__symble__point\":140}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"Sohidul Islam যখন তার কার্ড তোমার সাথে  শো করে তখন সে বিজয়ী হয় \",\"english\":\"Sohidul Islam wins when he shows his card to you\"}],\"seenRound\":1,\"blindRound\":2,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T15:39:44.000Z\"},{\"index\":1,\"src\":\"/9178098945.png\",\"name\":\"Sohidul Islam\",\"email\":\"dearvayu1@gmail.com\",\"phone\":\"01303501461\",\"userId\":\"999999999999\",\"referralCode\":\"999999999999\",\"id\":3,\"card\":[{\"name\":\"Clubs\",\"img__src\":\"/cards/k6.png\",\"card__index\":5,\"card__symble\":\"6\",\"card__point\":6,\"card__symble__point\":60},{\"name\":\"Clubs\",\"img__src\":\"/cards/k10.png\",\"card__index\":9,\"card__symble\":\"10\",\"card__point\":10,\"card__symble__point\":100},{\"name\":\"Clubs\",\"img__src\":\"/cards/kk.png\",\"card__index\":12,\"card__symble\":\"K\",\"card__point\":10,\"card__symble__point\":130}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"আপনি খেলার প্রধান বিজয়ী \",\"english\":\"You are the main winner of the game\"}],\"seenRound\":1,\"blindRound\":1,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T15:39:41.000Z\"},{\"index\":2,\"src\":\"/9220832362.png\",\"name\":\"Jumol Ali\",\"email\":\"dearvayu3@gmail.com\",\"phone\":\"01303501463\",\"userId\":\"9220832362\",\"referralCode\":\"999999999999\",\"id\":1,\"card\":[{\"name\":\"Diamonds\",\"img__src\":\"/cards/l4.png\",\"card__index\":16,\"card__symble\":\"4\",\"card__point\":4,\"card__symble__point\":40},{\"name\":\"Diamonds\",\"img__src\":\"/cards/l7.png\",\"card__index\":19,\"card__symble\":\"7\",\"card__point\":7,\"card__symble__point\":70},{\"name\":\"Clubs\",\"img__src\":\"/cards/k9.png\",\"card__index\":8,\"card__symble\":\"9\",\"card__point\":9,\"card__symble__point\":90}],\"seen\":true,\"packed\":true,\"packedReasonMess\":[{\"bengali\":\"তুমি নিজেই তোমার কার্ড প্যাক করেছো\",\"english\":\"You packed your card yourself\"}],\"seenRound\":0,\"blindRound\":1,\"side\":false,\"isTurn\":false,\"timeUp\":\"2023-12-25T15:38:53.569Z\"}]', '2023-12-25 15:39:04', '2023-12-25 15:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `rootassets`
--

CREATE TABLE `rootassets` (
  `id` int(11) NOT NULL,
  `realBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `realCurrentBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `realTotalCouponDeposit` decimal(20,4) DEFAULT 0.0000,
  `realTotalWalletDeposit` decimal(20,4) DEFAULT 0.0000,
  `realTotalWalletWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `realTotalCommission` decimal(20,4) DEFAULT 0.0000,
  `realTotalAppCommission` decimal(20,4) DEFAULT 0.0000,
  `realTotalPartnerCommission` decimal(20,4) DEFAULT 0.0000,
  `realTotalCouponWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `realTotalCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `realTotalAppCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `realTotalPartnerCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `demoBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `demoCurrentBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `demoTotalCouponDeposit` decimal(20,4) DEFAULT 0.0000,
  `demoTotalWalletDeposit` decimal(20,4) DEFAULT 0.0000,
  `demoTotalWalletWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `demoTotalCommission` decimal(20,4) DEFAULT 0.0000,
  `demoTotalAppCommission` decimal(20,4) DEFAULT 0.0000,
  `demoTotalPartnerCommission` decimal(20,4) DEFAULT 0.0000,
  `demoTotalCouponWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `demoTotalCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `demoTotalAppCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `demoTotalPartnerCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `offlineBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `offlineCurrentBalance` decimal(20,4) DEFAULT 100000000000.0000,
  `offlineTotalCouponDeposit` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalWalletDeposit` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalWalletWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalCommission` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalAppCommission` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalPartnerCommission` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalCouponWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalAppCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `offlineTotalPartnerCommissionWithdrawal` decimal(20,4) DEFAULT 0.0000,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rootassets`
--

INSERT INTO `rootassets` (`id`, `realBalance`, `realCurrentBalance`, `realTotalCouponDeposit`, `realTotalWalletDeposit`, `realTotalWalletWithdrawal`, `realTotalCommission`, `realTotalAppCommission`, `realTotalPartnerCommission`, `realTotalCouponWithdrawal`, `realTotalCommissionWithdrawal`, `realTotalAppCommissionWithdrawal`, `realTotalPartnerCommissionWithdrawal`, `demoBalance`, `demoCurrentBalance`, `demoTotalCouponDeposit`, `demoTotalWalletDeposit`, `demoTotalWalletWithdrawal`, `demoTotalCommission`, `demoTotalAppCommission`, `demoTotalPartnerCommission`, `demoTotalCouponWithdrawal`, `demoTotalCommissionWithdrawal`, `demoTotalAppCommissionWithdrawal`, `demoTotalPartnerCommissionWithdrawal`, `offlineBalance`, `offlineCurrentBalance`, `offlineTotalCouponDeposit`, `offlineTotalWalletDeposit`, `offlineTotalWalletWithdrawal`, `offlineTotalCommission`, `offlineTotalAppCommission`, `offlineTotalPartnerCommission`, `offlineTotalCouponWithdrawal`, `offlineTotalCommissionWithdrawal`, `offlineTotalAppCommissionWithdrawal`, `offlineTotalPartnerCommissionWithdrawal`, `created_at`, `updated_at`) VALUES
(1, 100000000000.0000, 100000000013.0000, 0.0000, 13.0000, 0.0000, 25.9340, 12.9652, 12.9652, 0.0000, 0.0000, 0.0000, 0.0000, 100000000000.0000, 99999990000.0000, 0.0000, 0.0000, 10000.0000, 0.2039, 0.1016, 0.1016, 0.0000, 0.0000, 0.0000, 0.0000, 100000000000.0000, 100000000000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2023-11-29 14:33:57', '2023-12-25 15:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `roottransactions`
--

CREATE TABLE `roottransactions` (
  `id` int(11) NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `transactionType` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `balanceType` varchar(255) DEFAULT NULL,
  `isIn` varchar(255) DEFAULT 'false',
  `status` varchar(255) DEFAULT 'pending',
  `message` varchar(255) DEFAULT 'empty',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roottransactions`
--

INSERT INTO `roottransactions` (`id`, `amount`, `transactionType`, `userId`, `balanceType`, `isIn`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 10000.0000, 'demoWalletWithdrawal', '9220832362', 'DEMO', 'false', 'pending', 'empty', '2023-11-29 12:45:34', '2023-11-29 12:45:34'),
(2, 10000.0000, 'demoWalletWithdrawal', '8242892575', 'DEMO', 'false', 'pending', 'empty', '2023-11-29 12:45:37', '2023-11-29 12:45:37'),
(3, 10000.0000, 'demoWalletWithdrawal', '9178098945', 'DEMO', 'false', 'pending', 'empty', '2023-11-29 12:45:39', '2023-11-29 12:45:39'),
(4, 211.8644, 'realWalletDeposit', '9178098945', 'REAL', 'true', 'pending', 'empty', '2023-11-29 12:58:41', '2023-11-29 12:58:41'),
(5, 211.8644, 'realWalletDeposit', '8242892575', 'REAL', 'true', 'pending', 'empty', '2023-11-29 12:59:15', '2023-11-29 12:59:15'),
(6, 211.8644, 'realWalletDeposit', '9220832362', 'REAL', 'true', 'pending', 'empty', '2023-11-29 12:59:46', '2023-11-29 12:59:46'),
(7, 10000.0000, 'demoWalletWithdrawal', '9206215447', 'DEMO', 'false', 'pending', 'empty', '2023-12-03 11:43:39', '2023-12-03 11:43:39'),
(8, 4.5254, 'realWalletWithdrawal', '8242892575', 'REAL', 'false', 'pending', 'empty', '2023-12-03 14:19:38', '2023-12-03 14:19:38'),
(9, 8.4746, 'realWalletWithdrawal', '8242892575', 'REAL', 'false', 'pending', 'empty', '2023-12-04 11:52:50', '2023-12-04 11:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `isIn` varchar(255) DEFAULT 'out',
  `txrId` varchar(255) NOT NULL,
  `typeName` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `sourceId` varchar(255) DEFAULT 'empty',
  `balanceType` varchar(255) DEFAULT 'DEMO',
  `used` varchar(255) NOT NULL DEFAULT 'false',
  `amount` decimal(20,4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `isIn`, `txrId`, `typeName`, `userId`, `sourceId`, `balanceType`, `used`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'IN', '8550B8CF', 'WALLET DEPOSIT', '9220832362', '999999999999', 'DEMO', 'false', 10000.0000, '2023-11-29 12:45:34', '2023-11-29 12:45:34'),
(2, 'IN', '550B8CF0', 'WALLET DEPOSIT', '8242892575', '999999999999', 'DEMO', 'false', 10000.0000, '2023-11-29 12:45:37', '2023-11-29 12:45:37'),
(3, 'IN', '50B8CF05', 'WALLET DEPOSIT', '9178098945', '999999999999', 'DEMO', 'false', 10000.0000, '2023-11-29 12:45:39', '2023-11-29 12:45:39'),
(4, 'IN', '0B8CF05C', 'WALLET DEPOSIT', '9178098945', '999999999999', 'REAL', 'false', 211.8644, '2023-11-29 12:58:41', '2023-11-29 12:58:41'),
(5, 'IN', 'B8CF05CD', 'WALLET DEPOSIT', '8242892575', '999999999999', 'REAL', 'false', 211.8644, '2023-11-29 12:59:15', '2023-11-29 12:59:15'),
(6, 'IN', '8CF05CDC', 'WALLET DEPOSIT', '9220832362', '999999999999', 'REAL', 'false', 211.8644, '2023-11-29 12:59:46', '2023-11-29 12:59:46'),
(7, 'OUT', '3142d054', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-29 14:16:53', '2023-11-29 14:16:53'),
(8, 'OUT', '3142d054', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-29 14:16:53', '2023-11-29 14:16:53'),
(9, 'IN', '3142d054', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:16:53', '2023-12-04 12:17:26'),
(10, 'IN', '3142d054', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:16:53', '2023-12-04 12:17:26'),
(11, 'OUT', '142d0543', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-29 14:16:53', '2023-11-29 14:16:53'),
(12, 'OUT', '142d0543', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-29 14:16:53', '2023-11-29 14:16:53'),
(13, 'IN', '142d0543', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-29 14:16:53', '2023-12-04 12:17:26'),
(14, 'IN', '142d0543', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-29 14:16:53', '2023-12-04 12:17:26'),
(15, 'OUT', '42d0543a', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-29 14:17:06', '2023-11-29 14:17:06'),
(16, 'OUT', '42d0543a', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-29 14:17:06', '2023-11-29 14:17:06'),
(17, 'IN', '42d0543a', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:17:06', '2023-12-04 12:17:26'),
(18, 'IN', '42d0543a', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:17:06', '2023-12-04 12:17:26'),
(19, 'OUT', '2d0543a7', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-29 14:17:10', '2023-11-29 14:17:10'),
(20, 'OUT', '2d0543a7', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-29 14:17:10', '2023-11-29 14:17:10'),
(21, 'IN', '2d0543a7', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-29 14:17:10', '2023-12-04 12:17:26'),
(22, 'IN', '2d0543a7', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-29 14:17:10', '2023-12-04 12:17:26'),
(23, 'OUT', 'd0543a79', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-11-29 14:17:17', '2023-11-29 14:17:17'),
(24, 'OUT', 'd0543a79', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-11-29 14:17:17', '2023-11-29 14:17:17'),
(25, 'IN', 'd0543a79', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-29 14:17:17', '2023-12-04 12:17:26'),
(26, 'IN', 'd0543a79', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-29 14:17:17', '2023-12-04 12:17:26'),
(27, 'OUT', '0543a792', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-11-29 14:17:24', '2023-11-29 14:17:24'),
(28, 'OUT', '0543a792', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-11-29 14:17:24', '2023-11-29 14:17:24'),
(29, 'IN', '0543a792', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-29 14:17:24', '2023-12-04 12:17:26'),
(30, 'IN', '0543a792', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-29 14:17:24', '2023-12-04 12:17:26'),
(31, 'OUT', '543a792a', 'CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-29 14:17:27', '2023-11-29 14:17:27'),
(32, 'OUT', '543a792a', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-29 14:17:27', '2023-11-29 14:17:27'),
(33, 'IN', '543a792a', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:17:27', '2023-12-04 12:17:26'),
(34, 'IN', '543a792a', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-29 14:17:27', '2023-12-04 12:17:26'),
(35, 'IN', '43a792a5', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 8.1000, '2023-11-29 14:17:27', '2023-11-29 14:17:27'),
(36, 'OUT', '02ec25f4', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(37, 'OUT', '02ec25f4', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(38, 'IN', '02ec25f4', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(39, 'IN', '02ec25f4', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(40, 'OUT', '2ec25f4a', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(41, 'OUT', '2ec25f4a', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(42, 'IN', '2ec25f4a', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(43, 'IN', '2ec25f4a', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(44, 'OUT', 'ec25f4ad', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(45, 'OUT', 'ec25f4ad', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:30', '2023-11-30 05:57:30'),
(46, 'IN', 'ec25f4ad', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(47, 'IN', 'ec25f4ad', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:30', '2023-12-04 12:17:26'),
(48, 'OUT', 'c25f4ad7', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:38', '2023-11-30 05:57:38'),
(49, 'OUT', 'c25f4ad7', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:38', '2023-11-30 05:57:38'),
(50, 'IN', 'c25f4ad7', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:38', '2023-12-04 12:17:26'),
(51, 'IN', 'c25f4ad7', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:38', '2023-12-04 12:17:26'),
(52, 'OUT', '25f4ad74', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:45', '2023-11-30 05:57:45'),
(53, 'OUT', '25f4ad74', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:45', '2023-11-30 05:57:45'),
(54, 'IN', '25f4ad74', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:45', '2023-12-04 12:17:26'),
(55, 'IN', '25f4ad74', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:45', '2023-12-04 12:17:26'),
(56, 'OUT', '5f4ad745', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:46', '2023-11-30 05:57:46'),
(57, 'OUT', '5f4ad745', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:46', '2023-11-30 05:57:46'),
(58, 'IN', '5f4ad745', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:46', '2023-12-04 12:17:26'),
(59, 'IN', '5f4ad745', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:46', '2023-12-04 12:17:26'),
(60, 'OUT', 'f4ad745e', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:47', '2023-11-30 05:57:47'),
(61, 'OUT', 'f4ad745e', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:47', '2023-11-30 05:57:47'),
(62, 'IN', 'f4ad745e', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:47', '2023-12-04 12:17:26'),
(63, 'IN', 'f4ad745e', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:57:47', '2023-12-04 12:17:26'),
(64, 'OUT', '4ad745e1', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:49', '2023-11-30 05:57:49'),
(65, 'OUT', '4ad745e1', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:49', '2023-11-30 05:57:49'),
(66, 'IN', '4ad745e1', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:49', '2023-12-04 12:17:26'),
(67, 'IN', '4ad745e1', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:57:49', '2023-12-04 12:17:26'),
(68, 'OUT', 'ad745e1d', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:57:50', '2023-11-30 05:57:50'),
(69, 'OUT', 'ad745e1d', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:57:50', '2023-11-30 05:57:50'),
(70, 'IN', 'ad745e1d', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:50', '2023-12-04 12:17:26'),
(71, 'IN', 'ad745e1d', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:57:50', '2023-12-04 12:17:26'),
(72, 'OUT', 'd745e1dd', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 05:57:58', '2023-11-30 05:57:58'),
(73, 'OUT', 'd745e1dd', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 05:57:58', '2023-11-30 05:57:58'),
(74, 'IN', 'd745e1dd', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 05:57:58', '2023-12-04 12:17:26'),
(75, 'IN', 'd745e1dd', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 05:57:58', '2023-12-04 12:17:26'),
(76, 'OUT', '745e1dd4', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 05:58:04', '2023-11-30 05:58:04'),
(77, 'OUT', '745e1dd4', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 05:58:04', '2023-11-30 05:58:04'),
(78, 'IN', '745e1dd4', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 05:58:04', '2023-12-04 12:17:26'),
(79, 'IN', '745e1dd4', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 05:58:04', '2023-12-04 12:17:26'),
(80, 'OUT', '45e1dd41', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 05:58:09', '2023-11-30 05:58:09'),
(81, 'OUT', '45e1dd41', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 05:58:09', '2023-11-30 05:58:09'),
(82, 'IN', '45e1dd41', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 05:58:09', '2023-12-04 12:17:26'),
(83, 'IN', '45e1dd41', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 05:58:09', '2023-12-04 12:17:26'),
(84, 'OUT', '5e1dd412', 'SIDE CARD', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:11', '2023-11-30 05:58:11'),
(85, 'OUT', '5e1dd412', 'SIDE CARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:11', '2023-11-30 05:58:11'),
(86, 'IN', '5e1dd412', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:58:11', '2023-12-04 12:17:26'),
(87, 'IN', '5e1dd412', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:58:11', '2023-12-04 12:17:26'),
(88, 'OUT', 'e1dd412f', 'CARD SHOW', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:13', '2023-11-30 05:58:13'),
(89, 'OUT', 'e1dd412f', 'CARD SHOW COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:13', '2023-11-30 05:58:13'),
(90, 'IN', 'e1dd412f', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:58:13', '2023-12-04 12:17:26'),
(91, 'IN', 'e1dd412f', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:58:13', '2023-12-04 12:17:26'),
(92, 'IN', '1dd412f4', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 15.3000, '2023-11-30 05:58:13', '2023-11-30 05:58:13'),
(93, 'OUT', 'dd412f47', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(94, 'OUT', 'dd412f47', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(95, 'IN', 'dd412f47', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(96, 'IN', 'dd412f47', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(97, 'OUT', 'd412f473', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(98, 'OUT', 'd412f473', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(99, 'IN', 'd412f473', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(100, 'IN', 'd412f473', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(101, 'OUT', '412f473c', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(102, 'OUT', '412f473c', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:53', '2023-11-30 05:58:53'),
(103, 'IN', '412f473c', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(104, 'IN', '412f473c', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:58:53', '2023-12-04 12:17:26'),
(105, 'OUT', '12f473c5', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:58:59', '2023-11-30 05:58:59'),
(106, 'OUT', '12f473c5', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:58:59', '2023-11-30 05:58:59'),
(107, 'IN', '12f473c5', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:58:59', '2023-12-04 12:17:26'),
(108, 'IN', '12f473c5', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:58:59', '2023-12-04 12:17:26'),
(109, 'OUT', '2f473c53', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:00', '2023-11-30 05:59:00'),
(110, 'OUT', '2f473c53', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:00', '2023-11-30 05:59:00'),
(111, 'IN', '2f473c53', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:00', '2023-12-04 12:17:26'),
(112, 'IN', '2f473c53', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:00', '2023-12-04 12:17:26'),
(113, 'OUT', 'f473c534', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:02', '2023-11-30 05:59:02'),
(114, 'OUT', 'f473c534', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:02', '2023-11-30 05:59:02'),
(115, 'IN', 'f473c534', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:02', '2023-12-04 12:17:26'),
(116, 'IN', 'f473c534', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:02', '2023-12-04 12:17:26'),
(117, 'OUT', '473c5348', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:03', '2023-11-30 05:59:03'),
(118, 'OUT', '473c5348', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:03', '2023-11-30 05:59:03'),
(119, 'IN', '473c5348', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:03', '2023-12-04 12:17:26'),
(120, 'IN', '473c5348', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:03', '2023-12-04 12:17:26'),
(121, 'OUT', '73c53482', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:04', '2023-11-30 05:59:04'),
(122, 'OUT', '73c53482', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:04', '2023-11-30 05:59:04'),
(123, 'IN', '73c53482', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:04', '2023-12-04 12:17:26'),
(124, 'IN', '73c53482', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:04', '2023-12-04 12:17:26'),
(125, 'OUT', '3c534826', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:05', '2023-11-30 05:59:05'),
(126, 'OUT', '3c534826', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:05', '2023-11-30 05:59:05'),
(127, 'IN', '3c534826', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:05', '2023-12-04 12:17:26'),
(128, 'IN', '3c534826', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:05', '2023-12-04 12:17:26'),
(129, 'OUT', 'c534826b', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:06', '2023-11-30 05:59:06'),
(130, 'OUT', 'c534826b', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:06', '2023-11-30 05:59:06'),
(131, 'IN', 'c534826b', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:06', '2023-12-04 12:17:26'),
(132, 'IN', 'c534826b', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:06', '2023-12-04 12:17:26'),
(133, 'OUT', '534826b8', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:07', '2023-11-30 05:59:07'),
(134, 'OUT', '534826b8', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:07', '2023-11-30 05:59:07'),
(135, 'IN', '534826b8', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:07', '2023-12-04 12:17:26'),
(136, 'IN', '534826b8', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:07', '2023-12-04 12:17:26'),
(137, 'OUT', '34826b83', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:08', '2023-11-30 05:59:08'),
(138, 'OUT', '34826b83', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:08', '2023-11-30 05:59:08'),
(139, 'IN', '34826b83', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:08', '2023-12-04 12:17:26'),
(140, 'IN', '34826b83', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 05:59:08', '2023-12-04 12:17:26'),
(141, 'OUT', '4826b831', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:09', '2023-11-30 05:59:09'),
(142, 'OUT', '4826b831', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:09', '2023-11-30 05:59:09'),
(143, 'IN', '4826b831', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:09', '2023-12-04 12:17:26'),
(144, 'IN', '4826b831', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 05:59:09', '2023-12-04 12:17:26'),
(145, 'OUT', '826b8315', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 05:59:11', '2023-11-30 05:59:11'),
(146, 'OUT', '826b8315', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 05:59:11', '2023-11-30 05:59:11'),
(147, 'IN', '826b8315', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:11', '2023-12-04 12:17:26'),
(148, 'IN', '826b8315', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 05:59:11', '2023-12-04 12:17:26'),
(149, 'OUT', '26b83150', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 06:00:11', '2023-11-30 06:00:11'),
(150, 'OUT', '26b83150', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 06:00:11', '2023-11-30 06:00:11'),
(151, 'IN', '26b83150', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 06:00:11', '2023-12-04 12:17:26'),
(152, 'IN', '26b83150', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 06:00:11', '2023-12-04 12:17:26'),
(153, 'OUT', '6b831508', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 06:00:20', '2023-11-30 06:00:20'),
(154, 'OUT', '6b831508', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 06:00:20', '2023-11-30 06:00:20'),
(155, 'IN', '6b831508', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 06:00:20', '2023-12-04 12:17:26'),
(156, 'IN', '6b831508', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 06:00:20', '2023-12-04 12:17:26'),
(157, 'OUT', 'b8315082', 'CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:00:22', '2023-11-30 06:00:22'),
(158, 'OUT', 'b8315082', 'CARD SHOW COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:00:22', '2023-11-30 06:00:22'),
(159, 'IN', 'b8315082', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:00:22', '2023-12-04 12:17:26'),
(160, 'IN', 'b8315082', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:00:22', '2023-12-04 12:17:26'),
(161, 'IN', '83150824', 'GAME WIN BY CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 17.1000, '2023-11-30 06:00:22', '2023-11-30 06:00:22'),
(162, 'OUT', '31508246', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(163, 'OUT', '31508246', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(164, 'IN', '31508246', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(165, 'IN', '31508246', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(166, 'OUT', '15082467', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(167, 'OUT', '15082467', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(168, 'IN', '15082467', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(169, 'IN', '15082467', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(170, 'OUT', '50824675', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(171, 'OUT', '50824675', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:06:42', '2023-11-30 06:06:42'),
(172, 'IN', '50824675', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(173, 'IN', '50824675', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 06:06:42', '2023-12-04 12:17:26'),
(174, 'OUT', '08246754', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:08:14', '2023-11-30 06:08:14'),
(175, 'OUT', '08246754', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:08:14', '2023-11-30 06:08:14'),
(176, 'IN', '08246754', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:08:14', '2023-12-04 12:17:26'),
(177, 'IN', '08246754', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:08:14', '2023-12-04 12:17:26'),
(178, 'OUT', '82467549', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:08:16', '2023-11-30 06:08:16'),
(179, 'OUT', '82467549', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:08:16', '2023-11-30 06:08:16'),
(180, 'IN', '82467549', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 06:08:16', '2023-12-04 12:17:26'),
(181, 'IN', '82467549', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 06:08:16', '2023-12-04 12:17:26'),
(182, 'OUT', '24675491', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 06:08:20', '2023-11-30 06:08:20'),
(183, 'OUT', '24675491', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 06:08:20', '2023-11-30 06:08:20'),
(184, 'IN', '24675491', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 06:08:20', '2023-12-04 12:17:26'),
(185, 'IN', '24675491', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 06:08:20', '2023-12-04 12:17:26'),
(186, 'OUT', '46754915', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 06:08:26', '2023-11-30 06:08:26'),
(187, 'OUT', '46754915', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 06:08:26', '2023-11-30 06:08:26'),
(188, 'IN', '46754915', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 06:08:26', '2023-12-04 12:17:26'),
(189, 'IN', '46754915', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 06:08:26', '2023-12-04 12:17:26'),
(190, 'OUT', '67549157', 'CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 06:08:28', '2023-11-30 06:08:28'),
(191, 'OUT', '67549157', 'CARD SHOW COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 06:08:28', '2023-11-30 06:08:28'),
(192, 'IN', '67549157', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:08:28', '2023-12-04 12:17:26'),
(193, 'IN', '67549157', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 06:08:28', '2023-12-04 12:17:26'),
(194, 'IN', '75491574', 'GAME WIN BY CARD SHOW', '9178098945', '999999999999', 'REAL', 'false', 9.0000, '2023-11-30 06:08:28', '2023-11-30 06:08:28'),
(195, 'OUT', '54915742', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(196, 'OUT', '54915742', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(197, 'IN', '54915742', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(198, 'IN', '54915742', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(199, 'OUT', '49157423', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(200, 'OUT', '49157423', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(201, 'IN', '49157423', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(202, 'IN', '49157423', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(203, 'OUT', '91574235', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(204, 'OUT', '91574235', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:02', '2023-11-30 07:03:02'),
(205, 'IN', '91574235', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(206, 'IN', '91574235', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:02', '2023-12-04 12:17:26'),
(207, 'OUT', '15742357', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:05', '2023-11-30 07:03:05'),
(208, 'OUT', '15742357', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:05', '2023-11-30 07:03:05'),
(209, 'IN', '15742357', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:05', '2023-12-04 12:17:26'),
(210, 'IN', '15742357', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:05', '2023-12-04 12:17:26'),
(211, 'OUT', '5742357c', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:08', '2023-11-30 07:03:08'),
(212, 'OUT', '5742357c', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:08', '2023-11-30 07:03:08'),
(213, 'IN', '5742357c', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:08', '2023-12-04 12:17:26'),
(214, 'IN', '5742357c', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:08', '2023-12-04 12:17:26'),
(215, 'OUT', '742357c5', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:10', '2023-11-30 07:03:10'),
(216, 'OUT', '742357c5', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:10', '2023-11-30 07:03:10'),
(217, 'IN', '742357c5', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:10', '2023-12-04 12:17:26'),
(218, 'IN', '742357c5', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:10', '2023-12-04 12:17:26'),
(219, 'OUT', '42357c5d', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:12', '2023-11-30 07:03:12'),
(220, 'OUT', '42357c5d', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:12', '2023-11-30 07:03:12'),
(221, 'IN', '42357c5d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:12', '2023-12-04 12:17:26'),
(222, 'IN', '42357c5d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:12', '2023-12-04 12:17:26'),
(223, 'OUT', '2357c5db', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:15', '2023-11-30 07:03:15'),
(224, 'OUT', '2357c5db', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:15', '2023-11-30 07:03:15'),
(225, 'IN', '2357c5db', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:15', '2023-12-04 12:17:26'),
(226, 'IN', '2357c5db', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:15', '2023-12-04 12:17:26'),
(227, 'OUT', '357c5dbb', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:17', '2023-11-30 07:03:17'),
(228, 'OUT', '357c5dbb', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:17', '2023-11-30 07:03:17'),
(229, 'IN', '357c5dbb', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:17', '2023-12-04 12:17:26'),
(230, 'IN', '357c5dbb', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:17', '2023-12-04 12:17:26'),
(231, 'OUT', '57c5dbb9', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:19', '2023-11-30 07:03:19'),
(232, 'OUT', '57c5dbb9', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:19', '2023-11-30 07:03:19'),
(233, 'IN', '57c5dbb9', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:19', '2023-12-04 12:17:26'),
(234, 'IN', '57c5dbb9', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:19', '2023-12-04 12:17:26'),
(235, 'OUT', '7c5dbb92', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:22', '2023-11-30 07:03:22'),
(236, 'OUT', '7c5dbb92', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:22', '2023-11-30 07:03:22'),
(237, 'IN', '7c5dbb92', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:22', '2023-12-04 12:17:26'),
(238, 'IN', '7c5dbb92', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:22', '2023-12-04 12:17:26'),
(239, 'OUT', 'c5dbb923', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:24', '2023-11-30 07:03:24'),
(240, 'OUT', 'c5dbb923', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:24', '2023-11-30 07:03:24'),
(241, 'IN', 'c5dbb923', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:24', '2023-12-04 12:17:26'),
(242, 'IN', 'c5dbb923', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:24', '2023-12-04 12:17:26'),
(243, 'OUT', '5dbb923a', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:26', '2023-11-30 07:03:26'),
(244, 'OUT', '5dbb923a', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:26', '2023-11-30 07:03:26'),
(245, 'IN', '5dbb923a', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:26', '2023-12-04 12:17:26'),
(246, 'IN', '5dbb923a', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:26', '2023-12-04 12:17:26'),
(247, 'OUT', 'dbb923a1', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:28', '2023-11-30 07:03:28'),
(248, 'OUT', 'dbb923a1', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:28', '2023-11-30 07:03:28'),
(249, 'IN', 'dbb923a1', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:28', '2023-12-04 12:17:26'),
(250, 'IN', 'dbb923a1', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-11-30 07:03:28', '2023-12-04 12:17:26'),
(251, 'OUT', 'bb923a17', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:30', '2023-11-30 07:03:30'),
(252, 'OUT', 'bb923a17', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:30', '2023-11-30 07:03:30'),
(253, 'IN', 'bb923a17', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:30', '2023-12-04 12:17:26'),
(254, 'IN', 'bb923a17', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-11-30 07:03:30', '2023-12-04 12:17:26'),
(255, 'OUT', 'b923a174', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-11-30 07:03:32', '2023-11-30 07:03:32'),
(256, 'OUT', 'b923a174', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-11-30 07:03:32', '2023-11-30 07:03:32'),
(257, 'IN', 'b923a174', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:32', '2023-12-04 12:17:26'),
(258, 'IN', 'b923a174', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-11-30 07:03:32', '2023-12-04 12:17:26'),
(259, 'OUT', '923a174f', 'BLIND 2X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 07:03:34', '2023-11-30 07:03:34'),
(260, 'OUT', '923a174f', 'BLIND 2X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 07:03:34', '2023-11-30 07:03:34'),
(261, 'IN', '923a174f', 'BLIND 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 07:03:34', '2023-12-04 12:17:26'),
(262, 'IN', '923a174f', 'BLIND 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-11-30 07:03:34', '2023-12-04 12:17:26'),
(263, 'OUT', '23a174fa', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 3.6000, '2023-11-30 07:03:44', '2023-11-30 07:03:44'),
(264, 'OUT', '23a174fa', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.4000, '2023-11-30 07:03:44', '2023-11-30 07:03:44'),
(265, 'IN', '23a174fa', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-11-30 07:03:44', '2023-12-04 12:17:26'),
(266, 'IN', '23a174fa', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-11-30 07:03:44', '2023-12-04 12:17:26'),
(267, 'OUT', '3a174fa6', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 3.6000, '2023-11-30 07:03:56', '2023-11-30 07:03:56'),
(268, 'OUT', '3a174fa6', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.4000, '2023-11-30 07:03:56', '2023-11-30 07:03:56'),
(269, 'IN', '3a174fa6', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-11-30 07:03:56', '2023-12-04 12:17:26'),
(270, 'IN', '3a174fa6', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-11-30 07:03:56', '2023-12-04 12:17:26'),
(271, 'OUT', 'a174fa61', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 3.6000, '2023-11-30 07:04:04', '2023-11-30 07:04:04'),
(272, 'OUT', 'a174fa61', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.4000, '2023-11-30 07:04:04', '2023-11-30 07:04:04'),
(273, 'IN', 'a174fa61', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.2000, '2023-11-30 07:04:04', '2023-12-04 12:17:26'),
(274, 'IN', 'a174fa61', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.2000, '2023-11-30 07:04:04', '2023-12-04 12:17:26'),
(275, 'OUT', '174fa612', 'SIDE CARD', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 07:04:06', '2023-11-30 07:04:06'),
(276, 'OUT', '174fa612', 'SIDE CARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 07:04:06', '2023-11-30 07:04:06'),
(277, 'IN', '174fa612', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 07:04:06', '2023-12-04 12:17:26'),
(278, 'IN', '174fa612', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-11-30 07:04:06', '2023-12-04 12:17:26'),
(279, 'OUT', '74fa6125', 'CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-11-30 07:04:09', '2023-11-30 07:04:09'),
(280, 'OUT', '74fa6125', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-11-30 07:04:09', '2023-11-30 07:04:09'),
(281, 'IN', '74fa6125', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 07:04:09', '2023-12-04 12:17:26'),
(282, 'IN', '74fa6125', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-11-30 07:04:09', '2023-12-04 12:17:26'),
(283, 'IN', '4fa61252', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 30.6000, '2023-11-30 07:04:09', '2023-11-30 07:04:09'),
(284, 'OUT', '3df7cec8', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(285, 'OUT', '3df7cec8', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(286, 'IN', '3df7cec8', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(287, 'IN', '3df7cec8', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(288, 'OUT', 'df7cec81', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(289, 'OUT', 'df7cec81', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(290, 'IN', 'df7cec81', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(291, 'IN', 'df7cec81', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(292, 'OUT', 'f7cec815', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(293, 'OUT', 'f7cec815', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:02', '2023-12-01 14:40:02'),
(294, 'IN', 'f7cec815', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(295, 'IN', 'f7cec815', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:40:02', '2023-12-04 12:17:26'),
(296, 'OUT', '7cec8153', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:06', '2023-12-01 14:40:06'),
(297, 'OUT', '7cec8153', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:06', '2023-12-01 14:40:06'),
(298, 'IN', '7cec8153', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:40:06', '2023-12-04 12:17:26'),
(299, 'IN', '7cec8153', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:40:06', '2023-12-04 12:17:26'),
(300, 'OUT', 'cec81532', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:10', '2023-12-01 14:40:10'),
(301, 'OUT', 'cec81532', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:10', '2023-12-01 14:40:10'),
(302, 'IN', 'cec81532', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:40:10', '2023-12-04 12:17:26'),
(303, 'IN', 'cec81532', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:40:10', '2023-12-04 12:17:26'),
(304, 'OUT', 'ec815328', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:40:11', '2023-12-01 14:40:11'),
(305, 'OUT', 'ec815328', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:40:11', '2023-12-01 14:40:11'),
(306, 'IN', 'ec815328', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:40:11', '2023-12-04 12:17:26'),
(307, 'IN', 'ec815328', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:40:11', '2023-12-04 12:17:26'),
(308, 'OUT', 'c815328e', 'BLIND 2X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-12-01 14:40:15', '2023-12-01 14:40:15'),
(309, 'OUT', 'c815328e', 'BLIND 2X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-12-01 14:40:15', '2023-12-01 14:40:15'),
(310, 'IN', 'c815328e', 'BLIND 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-01 14:40:15', '2023-12-04 12:17:26'),
(311, 'IN', 'c815328e', 'BLIND 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-01 14:40:15', '2023-12-04 12:17:26'),
(312, 'OUT', '815328e0', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 3.6000, '2023-12-01 14:40:23', '2023-12-01 14:40:23'),
(313, 'OUT', '815328e0', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.4000, '2023-12-01 14:40:23', '2023-12-01 14:40:23'),
(314, 'IN', '815328e0', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-01 14:40:23', '2023-12-04 12:17:26'),
(315, 'IN', '815328e0', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-01 14:40:23', '2023-12-04 12:17:26'),
(316, 'OUT', '15328e0c', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-01 14:40:27', '2023-12-01 14:40:27'),
(317, 'OUT', '15328e0c', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-01 14:40:27', '2023-12-01 14:40:27'),
(318, 'IN', '15328e0c', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 14:40:27', '2023-12-04 12:17:26'),
(319, 'IN', '15328e0c', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 14:40:27', '2023-12-04 12:17:26'),
(320, 'OUT', '5328e0c9', 'CHAAL 2X', '8242892575', '999999999999', 'REAL', 'false', 3.6000, '2023-12-01 14:40:36', '2023-12-01 14:40:36'),
(321, 'OUT', '5328e0c9', 'CHAAL 2X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.8000, '2023-12-01 14:40:36', '2023-12-01 14:40:36'),
(322, 'IN', '5328e0c9', 'CHAAL 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.4000, '2023-12-01 14:40:36', '2023-12-04 12:17:26'),
(323, 'IN', '5328e0c9', 'CHAAL 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.4000, '2023-12-01 14:40:36', '2023-12-04 12:17:26'),
(324, 'IN', '328e0c97', 'GAME WIN', '8242892575', '999999999999', 'REAL', 'false', 19.8000, '2023-12-01 14:40:53', '2023-12-01 14:40:53'),
(325, 'OUT', 'fa4abff0', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(326, 'OUT', 'fa4abff0', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(327, 'IN', 'fa4abff0', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(328, 'IN', 'fa4abff0', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(329, 'OUT', 'a4abff06', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(330, 'OUT', 'a4abff06', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(331, 'IN', 'a4abff06', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(332, 'IN', 'a4abff06', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(333, 'OUT', '4abff06c', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(334, 'OUT', '4abff06c', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 14:58:28', '2023-12-01 14:58:28'),
(335, 'IN', '4abff06c', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(336, 'IN', '4abff06c', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 14:58:28', '2023-12-04 12:17:26'),
(337, 'OUT', '0b752340', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 15:16:52', '2023-12-01 15:16:52'),
(338, 'OUT', '0b752340', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 15:16:52', '2023-12-01 15:16:52'),
(339, 'IN', '0b752340', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:16:52', '2023-12-04 12:17:26'),
(340, 'IN', '0b752340', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:16:52', '2023-12-04 12:17:26'),
(341, 'OUT', 'b7523408', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 15:16:56', '2023-12-01 15:16:56'),
(342, 'OUT', 'b7523408', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 15:16:56', '2023-12-01 15:16:56'),
(343, 'IN', 'b7523408', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 15:16:56', '2023-12-04 12:17:26'),
(344, 'IN', 'b7523408', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-01 15:16:56', '2023-12-04 12:17:26'),
(345, 'OUT', '8b4ac9f3', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 15:19:35', '2023-12-01 15:19:35'),
(346, 'OUT', '8b4ac9f3', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 15:19:35', '2023-12-01 15:19:35'),
(347, 'IN', '8b4ac9f3', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:19:35', '2023-12-04 12:17:26');
INSERT INTO `transactions` (`id`, `isIn`, `txrId`, `typeName`, `userId`, `sourceId`, `balanceType`, `used`, `amount`, `created_at`, `updated_at`) VALUES
(348, 'IN', '8b4ac9f3', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:19:35', '2023-12-04 12:17:26'),
(349, 'OUT', '042ce32d', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-01 15:21:33', '2023-12-01 15:21:33'),
(350, 'OUT', '042ce32d', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-01 15:21:33', '2023-12-01 15:21:33'),
(351, 'IN', '042ce32d', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 15:21:33', '2023-12-04 12:17:26'),
(352, 'IN', '042ce32d', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 15:21:33', '2023-12-04 12:17:26'),
(353, 'OUT', '42ce32dc', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-12-01 15:21:43', '2023-12-01 15:21:43'),
(354, 'OUT', '42ce32dc', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-12-01 15:21:43', '2023-12-01 15:21:43'),
(355, 'IN', '42ce32dc', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-01 15:21:43', '2023-12-04 12:17:26'),
(356, 'IN', '42ce32dc', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-01 15:21:43', '2023-12-04 12:17:26'),
(357, 'OUT', '2ce32dc3', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-01 15:21:46', '2023-12-01 15:21:46'),
(358, 'OUT', '2ce32dc3', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-01 15:21:46', '2023-12-01 15:21:46'),
(359, 'IN', '2ce32dc3', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 15:21:46', '2023-12-04 12:17:26'),
(360, 'IN', '2ce32dc3', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-01 15:21:46', '2023-12-04 12:17:26'),
(361, 'OUT', '7a34a04d', 'CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-01 15:26:37', '2023-12-01 15:26:37'),
(362, 'OUT', '7a34a04d', 'CARD SHOW COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-01 15:26:37', '2023-12-01 15:26:37'),
(363, 'IN', '7a34a04d', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:26:37', '2023-12-04 12:17:26'),
(364, 'IN', '7a34a04d', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-01 15:26:37', '2023-12-04 12:17:26'),
(365, 'IN', 'a34a04d3', 'GAME WIN BY CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 11.7000, '2023-12-01 15:26:37', '2023-12-01 15:26:37'),
(366, 'OUT', '5744194c', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(367, 'OUT', '5744194c', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(368, 'IN', '5744194c', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(369, 'IN', '5744194c', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(370, 'OUT', '744194ca', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(371, 'OUT', '744194ca', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(372, 'IN', '744194ca', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(373, 'IN', '744194ca', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(374, 'OUT', '44194ca4', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(375, 'OUT', '44194ca4', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:37', '2023-12-02 05:20:37'),
(376, 'IN', '44194ca4', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(377, 'IN', '44194ca4', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:20:37', '2023-12-04 12:17:26'),
(378, 'OUT', '4194ca42', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:44', '2023-12-02 05:20:44'),
(379, 'OUT', '4194ca42', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:44', '2023-12-02 05:20:44'),
(380, 'IN', '4194ca42', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:44', '2023-12-04 12:17:26'),
(381, 'IN', '4194ca42', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:44', '2023-12-04 12:17:26'),
(382, 'OUT', '194ca427', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:47', '2023-12-02 05:20:47'),
(383, 'OUT', '194ca427', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:47', '2023-12-02 05:20:47'),
(384, 'IN', '194ca427', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-02 05:20:47', '2023-12-04 12:17:26'),
(385, 'IN', '194ca427', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-02 05:20:47', '2023-12-04 12:17:26'),
(386, 'OUT', '94ca427f', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:48', '2023-12-02 05:20:48'),
(387, 'OUT', '94ca427f', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:48', '2023-12-02 05:20:48'),
(388, 'IN', '94ca427f', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:20:48', '2023-12-04 12:17:26'),
(389, 'IN', '94ca427f', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:20:48', '2023-12-04 12:17:26'),
(390, 'OUT', '4ca427fd', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:20:51', '2023-12-02 05:20:51'),
(391, 'OUT', '4ca427fd', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:20:51', '2023-12-02 05:20:51'),
(392, 'IN', '4ca427fd', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:51', '2023-12-04 12:17:26'),
(393, 'IN', '4ca427fd', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-02 05:20:51', '2023-12-04 12:17:26'),
(394, 'OUT', 'ca427fd8', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-02 05:21:07', '2023-12-02 05:21:07'),
(395, 'OUT', 'ca427fd8', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-02 05:21:07', '2023-12-02 05:21:07'),
(396, 'IN', 'ca427fd8', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-02 05:21:07', '2023-12-04 12:17:26'),
(397, 'IN', 'ca427fd8', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-02 05:21:07', '2023-12-04 12:17:26'),
(398, 'OUT', 'a427fd8c', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-02 05:21:09', '2023-12-02 05:21:09'),
(399, 'OUT', 'a427fd8c', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-02 05:21:09', '2023-12-02 05:21:09'),
(400, 'IN', 'a427fd8c', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:21:09', '2023-12-04 12:17:26'),
(401, 'IN', 'a427fd8c', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-02 05:21:09', '2023-12-04 12:17:26'),
(402, 'IN', '427fd8cc', 'GAME WIN', '8242892575', '999999999999', 'REAL', 'false', 9.0000, '2023-12-02 05:21:17', '2023-12-02 05:21:17'),
(403, 'IN', '71805339', 'WALLET DEPOSIT', '9206215447', '999999999999', 'DEMO', 'false', 10000.0000, '2023-12-03 11:43:39', '2023-12-03 11:43:39'),
(404, 'OUT', '1805339e', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(405, 'OUT', '1805339e', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(406, 'IN', '1805339e', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(407, 'IN', '1805339e', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(408, 'OUT', '805339ee', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(409, 'OUT', '805339ee', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(410, 'IN', '805339ee', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(411, 'IN', '805339ee', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(412, 'OUT', '05339ee3', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(413, 'OUT', '05339ee3', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:56:47', '2023-12-03 11:56:47'),
(414, 'IN', '05339ee3', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(415, 'IN', '05339ee3', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:56:47', '2023-12-04 12:17:26'),
(416, 'OUT', '5339ee36', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:56:56', '2023-12-03 11:56:56'),
(417, 'OUT', '5339ee36', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:56:56', '2023-12-03 11:56:56'),
(418, 'IN', '5339ee36', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:56:56', '2023-12-04 12:17:26'),
(419, 'IN', '5339ee36', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:56:56', '2023-12-04 12:17:26'),
(420, 'OUT', '339ee36e', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:56:58', '2023-12-03 11:56:58'),
(421, 'OUT', '339ee36e', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:56:58', '2023-12-03 11:56:58'),
(422, 'IN', '339ee36e', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:56:58', '2023-12-04 12:17:26'),
(423, 'IN', '339ee36e', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:56:58', '2023-12-04 12:17:26'),
(424, 'OUT', '39ee36e3', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:57:00', '2023-12-03 11:57:00'),
(425, 'OUT', '39ee36e3', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:57:00', '2023-12-03 11:57:00'),
(426, 'IN', '39ee36e3', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:57:00', '2023-12-04 12:17:26'),
(427, 'IN', '39ee36e3', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:57:00', '2023-12-04 12:17:26'),
(428, 'OUT', '9ee36e3c', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:57:03', '2023-12-03 11:57:03'),
(429, 'OUT', '9ee36e3c', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:57:03', '2023-12-03 11:57:03'),
(430, 'IN', '9ee36e3c', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:57:03', '2023-12-04 12:17:26'),
(431, 'IN', '9ee36e3c', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:57:03', '2023-12-04 12:17:26'),
(432, 'OUT', 'ee36e3c4', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:57:06', '2023-12-03 11:57:06'),
(433, 'OUT', 'ee36e3c4', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:57:06', '2023-12-03 11:57:06'),
(434, 'IN', 'ee36e3c4', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:57:06', '2023-12-04 12:17:26'),
(435, 'IN', 'ee36e3c4', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:57:06', '2023-12-04 12:17:26'),
(436, 'OUT', 'e36e3c45', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 11:57:19', '2023-12-03 11:57:19'),
(437, 'OUT', 'e36e3c45', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 11:57:19', '2023-12-03 11:57:19'),
(438, 'IN', 'e36e3c45', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 11:57:19', '2023-12-04 12:17:26'),
(439, 'IN', 'e36e3c45', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 11:57:19', '2023-12-04 12:17:26'),
(440, 'OUT', '36e3c456', 'BLIND 2X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 11:57:22', '2023-12-03 11:57:22'),
(441, 'OUT', '36e3c456', 'BLIND 2X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 11:57:22', '2023-12-03 11:57:22'),
(442, 'IN', '36e3c456', 'BLIND 2X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 11:57:22', '2023-12-04 12:17:26'),
(443, 'IN', '36e3c456', 'BLIND 2X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 11:57:22', '2023-12-04 12:17:26'),
(444, 'OUT', '6e3c4568', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 11:57:32', '2023-12-03 11:57:32'),
(445, 'OUT', '6e3c4568', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 11:57:32', '2023-12-03 11:57:32'),
(446, 'IN', '6e3c4568', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-12-03 11:57:32', '2023-12-04 12:17:26'),
(447, 'IN', '6e3c4568', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-12-03 11:57:32', '2023-12-04 12:17:26'),
(448, 'OUT', 'e3c45683', 'CHAAL 2X', '9178098945', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 11:57:35', '2023-12-03 11:57:35'),
(449, 'OUT', 'e3c45683', 'CHAAL 2X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.8000, '2023-12-03 11:57:35', '2023-12-03 11:57:35'),
(450, 'IN', 'e3c45683', 'CHAAL 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.4000, '2023-12-03 11:57:35', '2023-12-04 12:17:26'),
(451, 'IN', 'e3c45683', 'CHAAL 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.4000, '2023-12-03 11:57:35', '2023-12-04 12:17:26'),
(452, 'OUT', '3c45683e', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 7.2000, '2023-12-03 11:57:43', '2023-12-03 11:57:43'),
(453, 'OUT', '3c45683e', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.8000, '2023-12-03 11:57:43', '2023-12-03 11:57:43'),
(454, 'IN', '3c45683e', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.4000, '2023-12-03 11:57:43', '2023-12-04 12:17:26'),
(455, 'IN', '3c45683e', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.4000, '2023-12-03 11:57:43', '2023-12-04 12:17:26'),
(456, 'OUT', 'c45683ed', 'SIDE CARD', '8242892575', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 11:57:47', '2023-12-03 11:57:47'),
(457, 'OUT', 'c45683ed', 'SIDE CARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 11:57:47', '2023-12-03 11:57:47'),
(458, 'IN', 'c45683ed', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-12-03 11:57:47', '2023-12-04 12:17:26'),
(459, 'IN', 'c45683ed', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.2000, '2023-12-03 11:57:47', '2023-12-04 12:17:26'),
(460, 'OUT', '45683ed3', 'CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 11:57:55', '2023-12-03 11:57:55'),
(461, 'OUT', '45683ed3', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 11:57:55', '2023-12-03 11:57:55'),
(462, 'IN', '45683ed3', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 11:57:55', '2023-12-04 12:17:26'),
(463, 'IN', '45683ed3', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 11:57:55', '2023-12-04 12:17:26'),
(464, 'IN', '5683ed3a', 'GAME WIN BY CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 36.0000, '2023-12-03 11:57:55', '2023-12-03 11:57:55'),
(465, 'OUT', '683ed3a0', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(466, 'OUT', '683ed3a0', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(467, 'IN', '683ed3a0', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(468, 'IN', '683ed3a0', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(469, 'OUT', '83ed3a06', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(470, 'OUT', '83ed3a06', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(471, 'IN', '83ed3a06', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(472, 'IN', '83ed3a06', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(473, 'OUT', '3ed3a06b', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(474, 'OUT', '3ed3a06b', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 11:58:35', '2023-12-03 11:58:35'),
(475, 'IN', '3ed3a06b', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(476, 'IN', '3ed3a06b', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 11:58:35', '2023-12-04 12:17:26'),
(477, 'OUT', 'ed3a06b1', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:01:22', '2023-12-03 12:01:22'),
(478, 'OUT', 'ed3a06b1', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:01:22', '2023-12-03 12:01:22'),
(479, 'IN', 'ed3a06b1', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:01:22', '2023-12-04 12:17:26'),
(480, 'IN', 'ed3a06b1', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:01:22', '2023-12-04 12:17:26'),
(481, 'OUT', 'd3a06b18', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:10:58', '2023-12-03 12:10:58'),
(482, 'OUT', 'd3a06b18', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:10:58', '2023-12-03 12:10:58'),
(483, 'IN', 'd3a06b18', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:10:58', '2023-12-04 12:17:26'),
(484, 'IN', 'd3a06b18', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:10:58', '2023-12-04 12:17:26'),
(485, 'OUT', '3a06b182', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:18:39', '2023-12-03 12:18:39'),
(486, 'OUT', '3a06b182', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:18:39', '2023-12-03 12:18:39'),
(487, 'IN', '3a06b182', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:18:39', '2023-12-04 12:17:26'),
(488, 'IN', '3a06b182', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:18:39', '2023-12-04 12:17:26'),
(489, 'OUT', 'a06b1828', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:18:41', '2023-12-03 12:18:41'),
(490, 'OUT', 'a06b1828', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:18:41', '2023-12-03 12:18:41'),
(491, 'IN', 'a06b1828', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:18:41', '2023-12-04 12:17:26'),
(492, 'IN', 'a06b1828', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:18:41', '2023-12-04 12:17:26'),
(493, 'OUT', '06b18281', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:18:43', '2023-12-03 12:18:43'),
(494, 'OUT', '06b18281', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:18:43', '2023-12-03 12:18:43'),
(495, 'IN', '06b18281', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:18:43', '2023-12-04 12:17:26'),
(496, 'IN', '06b18281', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:18:43', '2023-12-04 12:17:26'),
(497, 'OUT', '6b182814', 'BLIND 2X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:18:46', '2023-12-03 12:18:46'),
(498, 'OUT', '6b182814', 'BLIND 2X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:18:46', '2023-12-03 12:18:46'),
(499, 'IN', '6b182814', 'BLIND 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:18:46', '2023-12-04 12:17:26'),
(500, 'IN', '6b182814', 'BLIND 2X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:18:46', '2023-12-04 12:17:26'),
(501, 'OUT', 'b1828147', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 12:19:02', '2023-12-03 12:19:02'),
(502, 'OUT', 'b1828147', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 12:19:02', '2023-12-03 12:19:02'),
(503, 'IN', 'b1828147', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 12:19:02', '2023-12-04 12:17:26'),
(504, 'IN', 'b1828147', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 12:19:02', '2023-12-04 12:17:26'),
(505, 'OUT', '18281473', 'CHAAL 2X', '8242892575', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 12:19:14', '2023-12-03 12:19:14'),
(506, 'OUT', '18281473', 'CHAAL 2X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.8000, '2023-12-03 12:19:14', '2023-12-03 12:19:14'),
(507, 'IN', '18281473', 'CHAAL 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.4000, '2023-12-03 12:19:14', '2023-12-04 12:17:26'),
(508, 'IN', '18281473', 'CHAAL 2X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.4000, '2023-12-03 12:19:14', '2023-12-04 12:17:26'),
(509, 'OUT', '8281473b', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 7.2000, '2023-12-03 12:19:26', '2023-12-03 12:19:26'),
(510, 'OUT', '8281473b', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.8000, '2023-12-03 12:19:26', '2023-12-03 12:19:26'),
(511, 'IN', '8281473b', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.4000, '2023-12-03 12:19:26', '2023-12-04 12:17:26'),
(512, 'IN', '8281473b', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.4000, '2023-12-03 12:19:26', '2023-12-04 12:17:26'),
(513, 'OUT', '281473b9', 'SIDE CARD', '9220832362', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 12:19:43', '2023-12-03 12:19:43'),
(514, 'OUT', '281473b9', 'SIDE CARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 12:19:43', '2023-12-03 12:19:43'),
(515, 'IN', '281473b9', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 12:19:43', '2023-12-04 12:17:26'),
(516, 'IN', '281473b9', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.2000, '2023-12-03 12:19:43', '2023-12-04 12:17:26'),
(517, 'OUT', '81473b90', 'CARD SHOW', '9178098945', '999999999999', 'REAL', 'false', 3.6000, '2023-12-03 12:19:52', '2023-12-03 12:19:52'),
(518, 'OUT', '81473b90', 'CARD SHOW COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.4000, '2023-12-03 12:19:52', '2023-12-03 12:19:52'),
(519, 'IN', '81473b90', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.2000, '2023-12-03 12:19:52', '2023-12-04 12:17:26'),
(520, 'IN', '81473b90', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.2000, '2023-12-03 12:19:52', '2023-12-04 12:17:26'),
(521, 'IN', '1473b902', 'GAME WIN BY CARD SHOW', '9178098945', '999999999999', 'REAL', 'false', 34.2000, '2023-12-03 12:19:52', '2023-12-03 12:19:52'),
(522, 'OUT', '473b9025', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(523, 'OUT', '473b9025', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(524, 'IN', '473b9025', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(525, 'IN', '473b9025', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(526, 'OUT', '73b9025e', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(527, 'OUT', '73b9025e', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(528, 'IN', '73b9025e', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(529, 'IN', '73b9025e', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(530, 'OUT', '3b9025ec', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(531, 'OUT', '3b9025ec', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:15', '2023-12-03 12:24:15'),
(532, 'IN', '3b9025ec', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(533, 'IN', '3b9025ec', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:24:15', '2023-12-04 12:17:26'),
(534, 'OUT', 'b9025ec2', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:27', '2023-12-03 12:24:27'),
(535, 'OUT', 'b9025ec2', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:27', '2023-12-03 12:24:27'),
(536, 'IN', 'b9025ec2', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:27', '2023-12-04 12:17:26'),
(537, 'IN', 'b9025ec2', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:27', '2023-12-04 12:17:26'),
(538, 'OUT', '9025ec27', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:30', '2023-12-03 12:24:30'),
(539, 'OUT', '9025ec27', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:30', '2023-12-03 12:24:30'),
(540, 'IN', '9025ec27', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:24:30', '2023-12-04 12:17:26'),
(541, 'IN', '9025ec27', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:24:30', '2023-12-04 12:17:26'),
(542, 'OUT', '025ec270', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:32', '2023-12-03 12:24:32'),
(543, 'OUT', '025ec270', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:32', '2023-12-03 12:24:32'),
(544, 'IN', '025ec270', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:24:32', '2023-12-04 12:17:26'),
(545, 'IN', '025ec270', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:24:32', '2023-12-04 12:17:26'),
(546, 'OUT', '25ec270e', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:24:39', '2023-12-03 12:24:39'),
(547, 'OUT', '25ec270e', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:24:39', '2023-12-03 12:24:39'),
(548, 'IN', '25ec270e', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 12:24:39', '2023-12-04 12:17:26'),
(549, 'IN', '25ec270e', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 12:24:39', '2023-12-04 12:17:26'),
(550, 'OUT', '5ec270ed', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:24:48', '2023-12-03 12:24:48'),
(551, 'OUT', '5ec270ed', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:24:48', '2023-12-03 12:24:48'),
(552, 'IN', '5ec270ed', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-03 12:24:48', '2023-12-04 12:17:26'),
(553, 'IN', '5ec270ed', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.1000, '2023-12-03 12:24:48', '2023-12-04 12:17:26'),
(554, 'OUT', 'ec270ed3', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:24:56', '2023-12-03 12:24:56'),
(555, 'OUT', 'ec270ed3', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:24:56', '2023-12-03 12:24:56'),
(556, 'IN', 'ec270ed3', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:24:56', '2023-12-04 12:17:26'),
(557, 'IN', 'ec270ed3', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:24:56', '2023-12-04 12:17:26'),
(558, 'OUT', 'c270ed3d', 'SIDE CARD', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:24:59', '2023-12-03 12:24:59'),
(559, 'OUT', 'c270ed3d', 'SIDE CARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:24:59', '2023-12-03 12:24:59'),
(560, 'IN', 'c270ed3d', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:59', '2023-12-04 12:17:26'),
(561, 'IN', 'c270ed3d', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:24:59', '2023-12-04 12:17:26'),
(562, 'OUT', '270ed3d3', 'CARD SHOW', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:26:53', '2023-12-03 12:26:53'),
(563, 'OUT', '270ed3d3', 'CARD SHOW COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:26:53', '2023-12-03 12:26:53'),
(564, 'IN', '270ed3d3', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:26:53', '2023-12-04 12:17:26'),
(565, 'IN', '270ed3d3', 'CARD SHOW COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:26:53', '2023-12-04 12:17:26'),
(566, 'IN', '70ed3d36', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 12.6000, '2023-12-03 12:26:53', '2023-12-03 12:26:53'),
(567, 'OUT', '0ed3d366', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(568, 'OUT', '0ed3d366', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(569, 'IN', '0ed3d366', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(570, 'IN', '0ed3d366', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(571, 'OUT', 'ed3d3669', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(572, 'OUT', 'ed3d3669', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(573, 'IN', 'ed3d3669', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(574, 'IN', 'ed3d3669', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(575, 'OUT', 'd3d36698', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(576, 'OUT', 'd3d36698', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:17', '2023-12-03 12:28:17'),
(577, 'IN', 'd3d36698', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(578, 'IN', 'd3d36698', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:28:17', '2023-12-04 12:17:26'),
(579, 'OUT', '3d366983', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:20', '2023-12-03 12:28:20'),
(580, 'OUT', '3d366983', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:20', '2023-12-03 12:28:20'),
(581, 'IN', '3d366983', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:28:20', '2023-12-04 12:17:26'),
(582, 'IN', '3d366983', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:28:20', '2023-12-04 12:17:26'),
(583, 'OUT', 'd366983e', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:21', '2023-12-03 12:28:21'),
(584, 'OUT', 'd366983e', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:21', '2023-12-03 12:28:21'),
(585, 'IN', 'd366983e', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:28:21', '2023-12-04 12:17:26'),
(586, 'IN', 'd366983e', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:28:21', '2023-12-04 12:17:26'),
(587, 'OUT', '366983e6', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:28:23', '2023-12-03 12:28:23'),
(588, 'OUT', '366983e6', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:28:23', '2023-12-03 12:28:23'),
(589, 'IN', '366983e6', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:28:23', '2023-12-04 12:17:26'),
(590, 'IN', '366983e6', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:28:23', '2023-12-04 12:17:26'),
(591, 'OUT', '66983e64', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:28:35', '2023-12-03 12:28:35'),
(592, 'OUT', '66983e64', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:28:35', '2023-12-03 12:28:35'),
(593, 'IN', '66983e64', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 12:28:35', '2023-12-04 12:17:26'),
(594, 'IN', '66983e64', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.1000, '2023-12-03 12:28:35', '2023-12-04 12:17:26'),
(595, 'OUT', '6983e647', 'CHAAL 1X', '9178098945', '999999999999', 'REAL', 'false', 1.8000, '2023-12-03 12:28:49', '2023-12-03 12:28:49'),
(596, 'OUT', '6983e647', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.2000, '2023-12-03 12:28:49', '2023-12-03 12:28:49'),
(597, 'IN', '6983e647', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:28:49', '2023-12-04 12:17:26'),
(598, 'IN', '6983e647', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.1000, '2023-12-03 12:28:49', '2023-12-04 12:17:26'),
(599, 'OUT', '983e647f', 'CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:29:09', '2023-12-03 12:29:09'),
(600, 'OUT', '983e647f', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:29:09', '2023-12-03 12:29:09'),
(601, 'IN', '983e647f', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:29:09', '2023-12-04 12:17:26'),
(602, 'IN', '983e647f', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:29:09', '2023-12-04 12:17:26'),
(603, 'IN', '83e647fb', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 9.9000, '2023-12-03 12:29:09', '2023-12-03 12:29:09'),
(604, 'OUT', '3e647fb3', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(605, 'OUT', '3e647fb3', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(606, 'IN', '3e647fb3', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(607, 'IN', '3e647fb3', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(608, 'OUT', 'e647fb31', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(609, 'OUT', 'e647fb31', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(610, 'IN', 'e647fb31', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(611, 'IN', 'e647fb31', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(612, 'OUT', '647fb314', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(613, 'OUT', '647fb314', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:05', '2023-12-03 12:33:05'),
(614, 'IN', '647fb314', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(615, 'IN', '647fb314', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:33:05', '2023-12-04 12:17:26'),
(616, 'OUT', '47fb3142', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:09', '2023-12-03 12:33:09'),
(617, 'OUT', '47fb3142', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:09', '2023-12-03 12:33:09'),
(618, 'IN', '47fb3142', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:33:09', '2023-12-04 12:17:26'),
(619, 'IN', '47fb3142', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 12:33:09', '2023-12-04 12:17:26'),
(620, 'OUT', '7fb31427', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:11', '2023-12-03 12:33:11'),
(621, 'OUT', '7fb31427', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:11', '2023-12-03 12:33:11'),
(622, 'IN', '7fb31427', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:33:11', '2023-12-04 12:17:26'),
(623, 'IN', '7fb31427', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 12:33:11', '2023-12-04 12:17:26'),
(624, 'OUT', 'fb31427f', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 12:33:13', '2023-12-03 12:33:13'),
(625, 'OUT', 'fb31427f', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 12:33:13', '2023-12-03 12:33:13'),
(626, 'IN', 'fb31427f', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:33:13', '2023-12-04 12:17:26'),
(627, 'IN', 'fb31427f', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 12:33:13', '2023-12-04 12:17:26'),
(628, 'IN', 'b31427fc', 'GAME WIN', '8242892575', '999999999999', 'REAL', 'false', 5.4000, '2023-12-03 12:33:36', '2023-12-03 12:33:36'),
(629, 'OUT', '10d8acac', 'BOARD FEE', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(630, 'OUT', '10d8acac', 'BOARD COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(631, 'IN', '10d8acac', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(632, 'IN', '10d8acac', 'BOARD COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(633, 'OUT', '0d8acac8', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(634, 'OUT', '0d8acac8', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(635, 'IN', '0d8acac8', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(636, 'IN', '0d8acac8', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(637, 'OUT', 'd8acac86', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(638, 'OUT', 'd8acac86', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:29', '2023-12-03 13:03:29'),
(639, 'IN', 'd8acac86', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(640, 'IN', 'd8acac86', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 13:03:29', '2023-12-04 12:17:26'),
(641, 'OUT', '8acac862', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:34', '2023-12-03 13:03:34'),
(642, 'OUT', '8acac862', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:34', '2023-12-03 13:03:34'),
(643, 'IN', '8acac862', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:34', '2023-12-04 12:17:26'),
(644, 'IN', '8acac862', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:34', '2023-12-04 12:17:26'),
(645, 'OUT', 'acac862d', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:36', '2023-12-03 13:03:36'),
(646, 'OUT', 'acac862d', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:36', '2023-12-03 13:03:36'),
(647, 'IN', 'acac862d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 13:03:36', '2023-12-04 12:17:26'),
(648, 'IN', 'acac862d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'true', 0.0500, '2023-12-03 13:03:36', '2023-12-04 12:17:26'),
(649, 'OUT', 'cac862d4', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:38', '2023-12-03 13:03:38'),
(650, 'OUT', 'cac862d4', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:38', '2023-12-03 13:03:38'),
(651, 'IN', 'cac862d4', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 13:03:38', '2023-12-04 12:17:26'),
(652, 'IN', 'cac862d4', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'true', 0.0500, '2023-12-03 13:03:38', '2023-12-04 12:17:26'),
(653, 'OUT', 'ac862d4d', 'BLIND 1X', '9178098945', '999999999999', 'REAL', 'false', 0.9000, '2023-12-03 13:03:43', '2023-12-03 13:03:43'),
(654, 'OUT', 'ac862d4d', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'REAL', 'false', 0.1000, '2023-12-03 13:03:43', '2023-12-03 13:03:43'),
(655, 'IN', 'ac862d4d', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:43', '2023-12-04 12:17:26'),
(656, 'IN', 'ac862d4d', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'REAL', 'true', 0.0500, '2023-12-03 13:03:43', '2023-12-04 12:17:26'),
(657, 'IN', 'c862d4d3', 'GAME WIN', '9178098945', '999999999999', 'REAL', 'false', 6.3000, '2023-12-03 13:03:47', '2023-12-03 13:03:47'),
(658, 'OUT', '03570ed0', 'BOARD FEE', '9178098945', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(659, 'OUT', '03570ed0', 'BOARD COMMISSION', '9178098945', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(660, 'IN', '03570ed0', 'BOARD COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(661, 'IN', '03570ed0', 'BOARD COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(662, 'OUT', '3570ed04', 'BOARD FEE', '8242892575', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(663, 'OUT', '3570ed04', 'BOARD COMMISSION', '8242892575', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(664, 'IN', '3570ed04', 'BOARD COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(665, 'IN', '3570ed04', 'BOARD COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(666, 'OUT', '570ed047', 'BOARD FEE', '9220832362', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(667, 'OUT', '570ed047', 'BOARD COMMISSION', '9220832362', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:42:16', '2023-12-03 13:42:16'),
(668, 'IN', '570ed047', 'BOARD COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(669, 'IN', '570ed047', 'BOARD COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:16', '2023-12-04 12:18:30'),
(670, 'OUT', '70ed0473', 'BLIND 1X', '9178098945', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:42:29', '2023-12-03 13:42:29'),
(671, 'OUT', '70ed0473', 'BLIND 1X COMMISSION', '9178098945', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:42:29', '2023-12-03 13:42:29'),
(672, 'IN', '70ed0473', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:29', '2023-12-04 12:18:30'),
(673, 'IN', '70ed0473', 'BLIND 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:29', '2023-12-04 12:18:30'),
(674, 'OUT', '0ed04735', 'BLIND 1X', '8242892575', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:42:33', '2023-12-03 13:42:33'),
(675, 'OUT', '0ed04735', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:42:33', '2023-12-03 13:42:33'),
(676, 'IN', '0ed04735', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:33', '2023-12-04 12:18:30'),
(677, 'IN', '0ed04735', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:33', '2023-12-04 12:18:30'),
(678, 'OUT', 'ed047356', 'BLIND 1X', '9220832362', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:42:35', '2023-12-03 13:42:35'),
(679, 'OUT', 'ed047356', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:42:35', '2023-12-03 13:42:35'),
(680, 'IN', 'ed047356', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:35', '2023-12-04 12:18:30'),
(681, 'IN', 'ed047356', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:35', '2023-12-04 12:18:30'),
(682, 'OUT', 'd047356c', 'CHAAL 1X', '9178098945', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:42:46', '2023-12-03 13:42:46'),
(683, 'OUT', 'd047356c', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:42:46', '2023-12-03 13:42:46'),
(684, 'IN', 'd047356c', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:46', '2023-12-04 12:18:30'),
(685, 'IN', 'd047356c', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:42:46', '2023-12-04 12:18:30'),
(686, 'OUT', '047356ce', 'BLIND 1X', '8242892575', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:42:52', '2023-12-03 13:42:52'),
(687, 'OUT', '047356ce', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:42:52', '2023-12-03 13:42:52'),
(688, 'IN', '047356ce', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:52', '2023-12-04 12:18:30'),
(689, 'IN', '047356ce', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:42:52', '2023-12-04 12:18:30'),
(690, 'OUT', '47356cee', 'CHAAL 1X', '9220832362', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:43:00', '2023-12-03 13:43:00'),
(691, 'OUT', '47356cee', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:43:00', '2023-12-03 13:43:00'),
(692, 'IN', '47356cee', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:00', '2023-12-04 12:18:30'),
(693, 'IN', '47356cee', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:00', '2023-12-04 12:18:30');
INSERT INTO `transactions` (`id`, `isIn`, `txrId`, `typeName`, `userId`, `sourceId`, `balanceType`, `used`, `amount`, `created_at`, `updated_at`) VALUES
(694, 'OUT', '7356ceed', 'CHAAL 1X', '9178098945', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:43:07', '2023-12-03 13:43:07'),
(695, 'OUT', '7356ceed', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:43:07', '2023-12-03 13:43:07'),
(696, 'IN', '7356ceed', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:07', '2023-12-04 12:18:30'),
(697, 'IN', '7356ceed', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:07', '2023-12-04 12:18:30'),
(698, 'OUT', '356ceed3', 'CHAAL 1X', '8242892575', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:43:14', '2023-12-03 13:43:14'),
(699, 'OUT', '356ceed3', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:43:14', '2023-12-03 13:43:14'),
(700, 'IN', '356ceed3', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:14', '2023-12-04 12:18:30'),
(701, 'IN', '356ceed3', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:14', '2023-12-04 12:18:30'),
(702, 'OUT', '56ceed31', 'CHAAL 1X', '9220832362', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:43:22', '2023-12-03 13:43:22'),
(703, 'OUT', '56ceed31', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:43:22', '2023-12-03 13:43:22'),
(704, 'IN', '56ceed31', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:22', '2023-12-04 12:18:30'),
(705, 'IN', '56ceed31', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:22', '2023-12-04 12:18:30'),
(706, 'OUT', '6ceed312', 'CHAAL 1X', '9178098945', '999999999999', 'DEMO', 'false', 0.1526, '2023-12-03 13:43:30', '2023-12-03 13:43:30'),
(707, 'OUT', '6ceed312', 'CHAAL 1X COMMISSION', '9178098945', '999999999999', 'DEMO', 'false', 0.0170, '2023-12-03 13:43:30', '2023-12-03 13:43:30'),
(708, 'IN', '6ceed312', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:30', '2023-12-04 12:18:30'),
(709, 'IN', '6ceed312', 'CHAAL 1X COMMISSION', '999999999999', '9178098945', 'DEMO', 'true', 0.0085, '2023-12-03 13:43:30', '2023-12-04 12:18:30'),
(710, 'OUT', 'ceed312c', 'SIDE CARD', '8242892575', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:43:34', '2023-12-03 13:43:34'),
(711, 'OUT', 'ceed312c', 'SIDE CARD COMMISSION', '8242892575', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:43:34', '2023-12-03 13:43:34'),
(712, 'IN', 'ceed312c', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:43:34', '2023-12-04 12:18:30'),
(713, 'IN', 'ceed312c', 'SIDE CARD COMMISSION', '999999999999', '8242892575', 'DEMO', 'true', 0.0042, '2023-12-03 13:43:34', '2023-12-04 12:18:30'),
(714, 'OUT', 'eed312c5', 'CARD SHOW', '9220832362', '999999999999', 'DEMO', 'false', 0.0762, '2023-12-03 13:43:40', '2023-12-03 13:43:40'),
(715, 'OUT', 'eed312c5', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'DEMO', 'false', 0.0085, '2023-12-03 13:43:40', '2023-12-03 13:43:40'),
(716, 'IN', 'eed312c5', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0042, '2023-12-03 13:43:40', '2023-12-04 12:18:30'),
(717, 'IN', 'eed312c5', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'DEMO', 'true', 0.0042, '2023-12-03 13:43:40', '2023-12-04 12:18:30'),
(718, 'IN', 'ed312c52', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'DEMO', 'false', 1.8305, '2023-12-03 13:43:40', '2023-12-03 13:43:40'),
(719, 'OUT', 'B58E62E5', 'WALLET WITHDRAWAL', '8242892575', '999999999999', 'REAL', 'false', 4.5254, '2023-12-03 14:19:38', '2023-12-03 14:19:38'),
(720, 'OUT', 'B8E8F028', 'WALLET WITHDRAWAL', '8242892575', '999999999999', 'REAL', 'false', 8.4746, '2023-12-04 11:52:50', '2023-12-04 11:52:50'),
(721, 'OUT', 'CF6591CD', 'BALANCE TRANSFER', '8242892575', '9220832362', 'REAL', 'false', 42.3729, '2023-12-04 12:09:06', '2023-12-04 12:09:06'),
(722, 'IN', 'CF6591CD', 'BALANCE TRANSFER', '9220832362', '8242892575', 'REAL', 'false', 42.3729, '2023-12-04 12:09:06', '2023-12-04 12:09:06'),
(723, 'OUT', 'F6591CDC', 'BALANCE TRANSFER', '999999999999', '8242892575', 'REAL', 'false', 10.8729, '2023-12-04 12:16:45', '2023-12-04 12:16:45'),
(724, 'IN', 'F6591CDC', 'BALANCE TRANSFER', '8242892575', '999999999999', 'REAL', 'false', 10.8729, '2023-12-04 12:16:45', '2023-12-04 12:16:45'),
(725, 'OUT', 'C13E80E8', 'BALANCE TRANSFER', '8242892575', '999999999999', 'REAL', 'false', 10.8729, '2023-12-25 13:50:36', '2023-12-25 13:50:36'),
(726, 'IN', 'C13E80E8', 'BALANCE TRANSFER', '999999999999', '8242892575', 'REAL', 'false', 10.8729, '2023-12-25 13:50:36', '2023-12-25 13:50:36'),
(727, 'OUT', '13e80e80', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(728, 'OUT', '13e80e80', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(729, 'IN', '13e80e80', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(730, 'IN', '13e80e80', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(731, 'OUT', '3e80e801', 'BOARD FEE', '999999999999', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(732, 'OUT', '3e80e801', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(733, 'IN', '3e80e801', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(734, 'IN', '3e80e801', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(735, 'OUT', 'e80e801e', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(736, 'OUT', 'e80e801e', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(737, 'IN', 'e80e801e', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(738, 'IN', 'e80e801e', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 13:53:58', '2023-12-25 13:53:58'),
(739, 'OUT', '80e801ea', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:14', '2023-12-25 13:54:14'),
(740, 'OUT', '80e801ea', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:14', '2023-12-25 13:54:14'),
(741, 'IN', '80e801ea', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:54:14', '2023-12-25 13:54:14'),
(742, 'IN', '80e801ea', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:54:14', '2023-12-25 13:54:14'),
(743, 'OUT', '0e801ea7', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:17', '2023-12-25 13:54:17'),
(744, 'OUT', '0e801ea7', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:17', '2023-12-25 13:54:17'),
(745, 'IN', '0e801ea7', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 13:54:17', '2023-12-25 13:54:17'),
(746, 'IN', '0e801ea7', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 13:54:17', '2023-12-25 13:54:17'),
(747, 'OUT', 'e801ea7e', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:19', '2023-12-25 13:54:19'),
(748, 'OUT', 'e801ea7e', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:19', '2023-12-25 13:54:19'),
(749, 'IN', 'e801ea7e', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:19', '2023-12-25 13:54:19'),
(750, 'IN', 'e801ea7e', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:19', '2023-12-25 13:54:19'),
(751, 'OUT', '801ea7ee', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:25', '2023-12-25 13:54:25'),
(752, 'OUT', '801ea7ee', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:25', '2023-12-25 13:54:25'),
(753, 'IN', '801ea7ee', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:54:25', '2023-12-25 13:54:25'),
(754, 'IN', '801ea7ee', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:54:25', '2023-12-25 13:54:25'),
(755, 'OUT', '01ea7ee0', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:27', '2023-12-25 13:54:27'),
(756, 'OUT', '01ea7ee0', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:27', '2023-12-25 13:54:27'),
(757, 'IN', '01ea7ee0', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 13:54:27', '2023-12-25 13:54:27'),
(758, 'IN', '01ea7ee0', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 13:54:27', '2023-12-25 13:54:27'),
(759, 'OUT', '1ea7ee0d', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:30', '2023-12-25 13:54:30'),
(760, 'OUT', '1ea7ee0d', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:30', '2023-12-25 13:54:30'),
(761, 'IN', '1ea7ee0d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:30', '2023-12-25 13:54:30'),
(762, 'IN', '1ea7ee0d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:30', '2023-12-25 13:54:30'),
(763, 'OUT', 'ea7ee0d0', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:54:38', '2023-12-25 13:54:38'),
(764, 'OUT', 'ea7ee0d0', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:54:38', '2023-12-25 13:54:38'),
(765, 'IN', 'ea7ee0d0', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:54:38', '2023-12-25 13:54:38'),
(766, 'IN', 'ea7ee0d0', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:54:38', '2023-12-25 13:54:38'),
(767, 'OUT', 'a7ee0d04', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:54:46', '2023-12-25 13:54:46'),
(768, 'OUT', 'a7ee0d04', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:54:46', '2023-12-25 13:54:46'),
(769, 'IN', 'a7ee0d04', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:46', '2023-12-25 13:54:46'),
(770, 'IN', 'a7ee0d04', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:46', '2023-12-25 13:54:46'),
(771, 'OUT', '7ee0d040', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:49', '2023-12-25 13:54:49'),
(772, 'OUT', '7ee0d040', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:49', '2023-12-25 13:54:49'),
(773, 'IN', '7ee0d040', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:49', '2023-12-25 13:54:49'),
(774, 'IN', '7ee0d040', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:49', '2023-12-25 13:54:49'),
(775, 'OUT', 'ee0d040c', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:54:51', '2023-12-25 13:54:51'),
(776, 'OUT', 'ee0d040c', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:54:51', '2023-12-25 13:54:51'),
(777, 'IN', 'ee0d040c', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:54:51', '2023-12-25 13:54:51'),
(778, 'IN', 'ee0d040c', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:54:51', '2023-12-25 13:54:51'),
(779, 'OUT', 'e0d040c6', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:54:53', '2023-12-25 13:54:53'),
(780, 'OUT', 'e0d040c6', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:54:53', '2023-12-25 13:54:53'),
(781, 'IN', 'e0d040c6', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:53', '2023-12-25 13:54:53'),
(782, 'IN', 'e0d040c6', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:53', '2023-12-25 13:54:53'),
(783, 'OUT', '0d040c63', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:54:57', '2023-12-25 13:54:57'),
(784, 'OUT', '0d040c63', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:54:57', '2023-12-25 13:54:57'),
(785, 'IN', '0d040c63', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:57', '2023-12-25 13:54:57'),
(786, 'IN', '0d040c63', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 13:54:57', '2023-12-25 13:54:57'),
(787, 'OUT', 'd040c631', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:55:00', '2023-12-25 13:55:00'),
(788, 'OUT', 'd040c631', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:55:00', '2023-12-25 13:55:00'),
(789, 'IN', 'd040c631', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:55:00', '2023-12-25 13:55:00'),
(790, 'IN', 'd040c631', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 13:55:00', '2023-12-25 13:55:00'),
(791, 'OUT', '040c6318', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 13:55:02', '2023-12-25 13:55:02'),
(792, 'OUT', '040c6318', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 13:55:02', '2023-12-25 13:55:02'),
(793, 'IN', '040c6318', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:55:02', '2023-12-25 13:55:02'),
(794, 'IN', '040c6318', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:55:02', '2023-12-25 13:55:02'),
(795, 'OUT', '40c63188', 'CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 13:56:12', '2023-12-25 13:56:12'),
(796, 'OUT', '40c63188', 'CARD SHOW COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 13:56:12', '2023-12-25 13:56:12'),
(797, 'IN', '40c63188', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:56:12', '2023-12-25 13:56:12'),
(798, 'IN', '40c63188', 'CARD SHOW COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 13:56:12', '2023-12-25 13:56:12'),
(799, 'IN', '0c63188e', 'GAME WIN BY CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 2.2877, '2023-12-25 13:56:12', '2023-12-25 13:56:12'),
(800, 'OUT', 'bed3941c', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(801, 'OUT', 'bed3941c', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(802, 'IN', 'bed3941c', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(803, 'IN', 'bed3941c', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(804, 'OUT', 'ed3941c0', 'BOARD FEE', '999999999999', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(805, 'OUT', 'ed3941c0', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(806, 'IN', 'ed3941c0', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(807, 'IN', 'ed3941c0', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(808, 'OUT', 'd3941c02', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(809, 'OUT', 'd3941c02', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(810, 'IN', 'd3941c02', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(811, 'IN', 'd3941c02', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:03:16', '2023-12-25 14:03:16'),
(812, 'OUT', '3941c029', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:03:22', '2023-12-25 14:03:22'),
(813, 'OUT', '3941c029', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:03:22', '2023-12-25 14:03:22'),
(814, 'IN', '3941c029', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:03:22', '2023-12-25 14:03:22'),
(815, 'IN', '3941c029', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:03:22', '2023-12-25 14:03:22'),
(816, 'OUT', '941c029f', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:03:24', '2023-12-25 14:03:24'),
(817, 'OUT', '941c029f', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:03:24', '2023-12-25 14:03:24'),
(818, 'IN', '941c029f', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:03:24', '2023-12-25 14:03:24'),
(819, 'IN', '941c029f', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:03:24', '2023-12-25 14:03:24'),
(820, 'OUT', '41c029f9', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:03:26', '2023-12-25 14:03:26'),
(821, 'OUT', '41c029f9', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:03:26', '2023-12-25 14:03:26'),
(822, 'IN', '41c029f9', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:03:26', '2023-12-25 14:03:26'),
(823, 'IN', '41c029f9', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:03:26', '2023-12-25 14:03:26'),
(824, 'OUT', '1c029f9b', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:03:35', '2023-12-25 14:03:35'),
(825, 'OUT', '1c029f9b', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:03:35', '2023-12-25 14:03:35'),
(826, 'IN', '1c029f9b', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:03:35', '2023-12-25 14:03:35'),
(827, 'IN', '1c029f9b', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:03:35', '2023-12-25 14:03:35'),
(828, 'OUT', 'c029f9b4', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:03:37', '2023-12-25 14:03:37'),
(829, 'OUT', 'c029f9b4', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:03:37', '2023-12-25 14:03:37'),
(830, 'IN', 'c029f9b4', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:03:37', '2023-12-25 14:03:37'),
(831, 'IN', 'c029f9b4', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:03:37', '2023-12-25 14:03:37'),
(832, 'OUT', '029f9b4a', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:03:46', '2023-12-25 14:03:46'),
(833, 'OUT', '029f9b4a', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:03:46', '2023-12-25 14:03:46'),
(834, 'IN', '029f9b4a', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:03:46', '2023-12-25 14:03:46'),
(835, 'IN', '029f9b4a', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:03:46', '2023-12-25 14:03:46'),
(836, 'OUT', '29f9b4a8', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:03:57', '2023-12-25 14:03:57'),
(837, 'OUT', '29f9b4a8', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:03:57', '2023-12-25 14:03:57'),
(838, 'IN', '29f9b4a8', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:03:57', '2023-12-25 14:03:57'),
(839, 'IN', '29f9b4a8', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:03:57', '2023-12-25 14:03:57'),
(840, 'OUT', '9f9b4a89', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:04:04', '2023-12-25 14:04:04'),
(841, 'OUT', '9f9b4a89', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:04:04', '2023-12-25 14:04:04'),
(842, 'IN', '9f9b4a89', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:04', '2023-12-25 14:04:04'),
(843, 'IN', '9f9b4a89', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:04', '2023-12-25 14:04:04'),
(844, 'OUT', 'f9b4a891', 'SIDE CARD', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:04:07', '2023-12-25 14:04:07'),
(845, 'OUT', 'f9b4a891', 'SIDE CARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:07', '2023-12-25 14:04:07'),
(846, 'IN', 'f9b4a891', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:04:07', '2023-12-25 14:04:07'),
(847, 'IN', 'f9b4a891', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:04:07', '2023-12-25 14:04:07'),
(848, 'OUT', '9b4a8919', 'CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:04:10', '2023-12-25 14:04:10'),
(849, 'OUT', '9b4a8919', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:10', '2023-12-25 14:04:10'),
(850, 'IN', '9b4a8919', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:04:10', '2023-12-25 14:04:10'),
(851, 'IN', '9b4a8919', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:04:10', '2023-12-25 14:04:10'),
(852, 'IN', 'b4a8919c', 'GAME WIN BY CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 1.7539, '2023-12-25 14:04:10', '2023-12-25 14:04:10'),
(853, 'OUT', '4a8919ce', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(854, 'OUT', '4a8919ce', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(855, 'IN', '4a8919ce', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(856, 'IN', '4a8919ce', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(857, 'OUT', 'a8919ce8', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(858, 'OUT', 'a8919ce8', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(859, 'IN', 'a8919ce8', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(860, 'IN', 'a8919ce8', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:04:52', '2023-12-25 14:04:52'),
(861, 'OUT', '8919ce87', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:04:57', '2023-12-25 14:04:57'),
(862, 'OUT', '8919ce87', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:57', '2023-12-25 14:04:57'),
(863, 'IN', '8919ce87', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:04:57', '2023-12-25 14:04:57'),
(864, 'IN', '8919ce87', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:04:57', '2023-12-25 14:04:57'),
(865, 'OUT', '919ce877', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:04:59', '2023-12-25 14:04:59'),
(866, 'OUT', '919ce877', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:04:59', '2023-12-25 14:04:59'),
(867, 'IN', '919ce877', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:04:59', '2023-12-25 14:04:59'),
(868, 'IN', '919ce877', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:04:59', '2023-12-25 14:04:59'),
(869, 'OUT', '19ce8779', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:05:07', '2023-12-25 14:05:07'),
(870, 'OUT', '19ce8779', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:05:07', '2023-12-25 14:05:07'),
(871, 'IN', '19ce8779', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:05:07', '2023-12-25 14:05:07'),
(872, 'IN', '19ce8779', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:05:07', '2023-12-25 14:05:07'),
(873, 'OUT', '9ce87793', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:05:09', '2023-12-25 14:05:09'),
(874, 'OUT', '9ce87793', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:05:09', '2023-12-25 14:05:09'),
(875, 'IN', '9ce87793', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:05:09', '2023-12-25 14:05:09'),
(876, 'IN', '9ce87793', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:05:09', '2023-12-25 14:05:09'),
(877, 'OUT', 'ce877930', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:05:11', '2023-12-25 14:05:11'),
(878, 'OUT', 'ce877930', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:05:11', '2023-12-25 14:05:11'),
(879, 'IN', 'ce877930', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:05:11', '2023-12-25 14:05:11'),
(880, 'IN', 'ce877930', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:05:11', '2023-12-25 14:05:11'),
(881, 'OUT', 'e877930b', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:05:19', '2023-12-25 14:05:19'),
(882, 'OUT', 'e877930b', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:05:19', '2023-12-25 14:05:19'),
(883, 'IN', 'e877930b', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:05:19', '2023-12-25 14:05:19'),
(884, 'IN', 'e877930b', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:05:19', '2023-12-25 14:05:19'),
(885, 'OUT', '877930b4', 'CARD SHOW', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:05:21', '2023-12-25 14:05:21'),
(886, 'OUT', '877930b4', 'CARD SHOW COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:05:21', '2023-12-25 14:05:21'),
(887, 'IN', '877930b4', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:05:21', '2023-12-25 14:05:21'),
(888, 'IN', '877930b4', 'CARD SHOW COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:05:21', '2023-12-25 14:05:21'),
(889, 'IN', '77930b49', 'GAME WIN BY CARD SHOW', '8242892575', '999999999999', 'REAL', 'false', 1.2202, '2023-12-25 14:05:21', '2023-12-25 14:05:21'),
(890, 'OUT', '050f121d', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(891, 'OUT', '050f121d', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(892, 'IN', '050f121d', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(893, 'IN', '050f121d', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(894, 'OUT', '50f121d9', 'BOARD FEE', '999999999999', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(895, 'OUT', '50f121d9', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(896, 'IN', '50f121d9', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(897, 'IN', '50f121d9', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(898, 'OUT', '0f121d9b', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(899, 'OUT', '0f121d9b', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(900, 'IN', '0f121d9b', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(901, 'IN', '0f121d9b', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 14:35:16', '2023-12-25 14:35:16'),
(902, 'OUT', 'f121d9bf', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:29', '2023-12-25 14:35:29'),
(903, 'OUT', 'f121d9bf', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:29', '2023-12-25 14:35:29'),
(904, 'IN', 'f121d9bf', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:35:29', '2023-12-25 14:35:29'),
(905, 'IN', 'f121d9bf', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:35:29', '2023-12-25 14:35:29'),
(906, 'OUT', '121d9bfd', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:32', '2023-12-25 14:35:32'),
(907, 'OUT', '121d9bfd', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:32', '2023-12-25 14:35:32'),
(908, 'IN', '121d9bfd', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:35:32', '2023-12-25 14:35:32'),
(909, 'IN', '121d9bfd', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:35:32', '2023-12-25 14:35:32'),
(910, 'OUT', '21d9bfd9', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:35', '2023-12-25 14:35:35'),
(911, 'OUT', '21d9bfd9', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:35', '2023-12-25 14:35:35'),
(912, 'IN', '21d9bfd9', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:35:35', '2023-12-25 14:35:35'),
(913, 'IN', '21d9bfd9', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:35:35', '2023-12-25 14:35:35'),
(914, 'OUT', '1d9bfd96', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:38', '2023-12-25 14:35:38'),
(915, 'OUT', '1d9bfd96', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:38', '2023-12-25 14:35:38'),
(916, 'IN', '1d9bfd96', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:35:38', '2023-12-25 14:35:38'),
(917, 'IN', '1d9bfd96', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:35:38', '2023-12-25 14:35:38'),
(918, 'OUT', 'd9bfd96e', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:41', '2023-12-25 14:35:41'),
(919, 'OUT', 'd9bfd96e', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:41', '2023-12-25 14:35:41'),
(920, 'IN', 'd9bfd96e', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:35:41', '2023-12-25 14:35:41'),
(921, 'IN', 'd9bfd96e', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:35:41', '2023-12-25 14:35:41'),
(922, 'OUT', '9bfd96ef', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:35:43', '2023-12-25 14:35:43'),
(923, 'OUT', '9bfd96ef', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:43', '2023-12-25 14:35:43'),
(924, 'IN', '9bfd96ef', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:35:43', '2023-12-25 14:35:43'),
(925, 'IN', '9bfd96ef', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 14:35:43', '2023-12-25 14:35:43'),
(926, 'OUT', 'bfd96ef6', 'CHAAL 1X', '9220832362', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:35:51', '2023-12-25 14:35:51'),
(927, 'OUT', 'bfd96ef6', 'CHAAL 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:35:51', '2023-12-25 14:35:51'),
(928, 'IN', 'bfd96ef6', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:35:51', '2023-12-25 14:35:51'),
(929, 'IN', 'bfd96ef6', 'CHAAL 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0085, '2023-12-25 14:35:51', '2023-12-25 14:35:51'),
(930, 'OUT', 'fd96ef6e', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:35:58', '2023-12-25 14:35:58'),
(931, 'OUT', 'fd96ef6e', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:35:58', '2023-12-25 14:35:58'),
(932, 'IN', 'fd96ef6e', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:58', '2023-12-25 14:35:58'),
(933, 'IN', 'fd96ef6e', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:35:58', '2023-12-25 14:35:58'),
(934, 'OUT', 'd96ef6eb', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 14:36:05', '2023-12-25 14:36:05'),
(935, 'OUT', 'd96ef6eb', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 14:36:05', '2023-12-25 14:36:05'),
(936, 'IN', 'd96ef6eb', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:36:05', '2023-12-25 14:36:05'),
(937, 'IN', 'd96ef6eb', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 14:36:05', '2023-12-25 14:36:05'),
(938, 'OUT', '96ef6ebb', 'SIDE CARD', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:36:07', '2023-12-25 14:36:07'),
(939, 'OUT', '96ef6ebb', 'SIDE CARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:36:07', '2023-12-25 14:36:07'),
(940, 'IN', '96ef6ebb', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:36:07', '2023-12-25 14:36:07'),
(941, 'IN', '96ef6ebb', 'SIDE CARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 14:36:07', '2023-12-25 14:36:07'),
(942, 'OUT', '6ef6ebb5', 'CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(943, 'OUT', '6ef6ebb5', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(944, 'IN', '6ef6ebb5', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(945, 'IN', '6ef6ebb5', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(946, 'IN', 'ef6ebb58', 'GAME WIN BY CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 1.7537, '2023-12-25 14:36:10', '2023-12-25 14:36:10'),
(947, 'OUT', 'b9a07b3f', 'BOARD FEE', '8242892575', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(948, 'OUT', 'b9a07b3f', 'BOARD COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(949, 'IN', 'b9a07b3f', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(950, 'IN', 'b9a07b3f', 'BOARD COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(951, 'OUT', '9a07b3f1', 'BOARD FEE', '999999999999', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(952, 'OUT', '9a07b3f1', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(953, 'IN', '9a07b3f1', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(954, 'IN', '9a07b3f1', 'BOARD COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(955, 'OUT', 'a07b3f16', 'BOARD FEE', '9220832362', '999999999999', 'REAL', 'false', 0.2288, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(956, 'OUT', 'a07b3f16', 'BOARD COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0254, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(957, 'IN', 'a07b3f16', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(958, 'IN', 'a07b3f16', 'BOARD COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0127, '2023-12-25 15:38:26', '2023-12-25 15:38:26'),
(959, 'OUT', '07b3f163', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 15:38:30', '2023-12-25 15:38:30'),
(960, 'OUT', '07b3f163', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:30', '2023-12-25 15:38:30'),
(961, 'IN', '07b3f163', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 15:38:30', '2023-12-25 15:38:30'),
(962, 'IN', '07b3f163', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 15:38:30', '2023-12-25 15:38:30'),
(963, 'OUT', '7b3f1631', 'BLIND 1X', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 15:38:32', '2023-12-25 15:38:32'),
(964, 'OUT', '7b3f1631', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:32', '2023-12-25 15:38:32'),
(965, 'IN', '7b3f1631', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 15:38:32', '2023-12-25 15:38:32'),
(966, 'IN', '7b3f1631', 'BLIND 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 15:38:32', '2023-12-25 15:38:32'),
(967, 'OUT', 'b3f1631d', 'BLIND 1X', '9220832362', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 15:38:34', '2023-12-25 15:38:34'),
(968, 'OUT', 'b3f1631d', 'BLIND 1X COMMISSION', '9220832362', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:34', '2023-12-25 15:38:34'),
(969, 'IN', 'b3f1631d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 15:38:34', '2023-12-25 15:38:34'),
(970, 'IN', 'b3f1631d', 'BLIND 1X COMMISSION', '999999999999', '9220832362', 'REAL', 'false', 0.0042, '2023-12-25 15:38:34', '2023-12-25 15:38:34'),
(971, 'OUT', '3f1631dc', 'BLIND 1X', '8242892575', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 15:38:37', '2023-12-25 15:38:37'),
(972, 'OUT', '3f1631dc', 'BLIND 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:37', '2023-12-25 15:38:37'),
(973, 'IN', '3f1631dc', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 15:38:37', '2023-12-25 15:38:37'),
(974, 'IN', '3f1631dc', 'BLIND 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0042, '2023-12-25 15:38:37', '2023-12-25 15:38:37'),
(975, 'OUT', 'f1631dc8', 'CHAAL 1X', '999999999999', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 15:38:45', '2023-12-25 15:38:45'),
(976, 'OUT', 'f1631dc8', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 15:38:45', '2023-12-25 15:38:45'),
(977, 'IN', 'f1631dc8', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:45', '2023-12-25 15:38:45'),
(978, 'IN', 'f1631dc8', 'CHAAL 1X COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:38:45', '2023-12-25 15:38:45'),
(979, 'OUT', '1631dc83', 'CHAAL 1X', '8242892575', '999999999999', 'REAL', 'false', 0.1526, '2023-12-25 15:39:01', '2023-12-25 15:39:01'),
(980, 'OUT', '1631dc83', 'CHAAL 1X COMMISSION', '8242892575', '999999999999', 'REAL', 'false', 0.0170, '2023-12-25 15:39:01', '2023-12-25 15:39:01'),
(981, 'IN', '1631dc83', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 15:39:01', '2023-12-25 15:39:01'),
(982, 'IN', '1631dc83', 'CHAAL 1X COMMISSION', '999999999999', '8242892575', 'REAL', 'false', 0.0085, '2023-12-25 15:39:01', '2023-12-25 15:39:01'),
(983, 'OUT', '631dc836', 'CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 0.0762, '2023-12-25 15:39:03', '2023-12-25 15:39:03'),
(984, 'OUT', '631dc836', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0085, '2023-12-25 15:39:03', '2023-12-25 15:39:03'),
(985, 'IN', '631dc836', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 15:39:03', '2023-12-25 15:39:03'),
(986, 'IN', '631dc836', 'CARD SHOW COMMISSION', '999999999999', '999999999999', 'REAL', 'false', 0.0042, '2023-12-25 15:39:03', '2023-12-25 15:39:03'),
(987, 'IN', '31dc8365', 'GAME WIN BY CARD SHOW', '999999999999', '999999999999', 'REAL', 'false', 1.3725, '2023-12-25 15:39:04', '2023-12-25 15:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'empty',
  `email` varchar(255) NOT NULL DEFAULT 'empty',
  `phone` varchar(255) NOT NULL DEFAULT 'empty',
  `password` varchar(255) NOT NULL DEFAULT 'empty',
  `src` varchar(255) DEFAULT 'empty',
  `inRoom` varchar(255) DEFAULT 'false',
  `roomId` varchar(255) DEFAULT 'false',
  `isDisabled` varchar(255) DEFAULT 'false',
  `isJail` varchar(255) DEFAULT 'false',
  `disabledTill` varchar(255) DEFAULT 'false',
  `verify` varchar(255) DEFAULT 'false',
  `role` varchar(255) DEFAULT '6',
  `accessCode` varchar(255) DEFAULT 'empty',
  `designation` varchar(255) DEFAULT 'user',
  `invitation` varchar(255) DEFAULT 'Enable',
  `country` varchar(255) DEFAULT 'empty',
  `currency` varchar(255) DEFAULT 'empty',
  `referralCode` varchar(255) DEFAULT 'empty',
  `promoCode` varchar(255) DEFAULT 'empty',
  `realBalance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `demoBalance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `offlineBalance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `userId` varchar(255) NOT NULL,
  `myRef` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `src`, `inRoom`, `roomId`, `isDisabled`, `isJail`, `disabledTill`, `verify`, `role`, `accessCode`, `designation`, `invitation`, `country`, `currency`, `referralCode`, `promoCode`, `realBalance`, `demoBalance`, `offlineBalance`, `userId`, `myRef`, `created_at`, `updated_at`) VALUES
(1, 'Jumol Ali', 'dearvayu3@gmail.com', '01303501463', '$2a$10$StrqDBasOTQEb4AlHbVtQ.stmgzqy/e38SE/ZizZuc/9JQgckuXXq', '/9220832362.png', 'false', 'false', 'false', 'false', 'false', 'false', '6', 'empty', 'user', 'Enable', 'empty', 'empty', '999999999999', 'enter', 246.5258, 10001.1526, 0.0000, '9220832362', '4082617585', '2023-11-29 12:45:34', '2023-12-25 15:38:34'),
(2, 'Saniul Islam', 'dearvayu2@gmail.com', '01303501462', '$2a$10$Aygsyb7X5AAcBmh03fthQeZUv85luPBMw5U9tbMIy2JmDPyaW2WPS', '/8242892575.png', 'false', 'false', 'false', 'false', 'false', 'false', '6', 'empty', 'user', 'Enable', 'empty', 'empty', '999999999999', 'enter', 167.2377, 9999.4069, 0.0000, '8242892575', '3017492001', '2023-11-29 12:45:37', '2023-12-25 15:39:01'),
(3, 'Sohidul Islam', 'dearvayu1@gmail.com', '01303501461', '$2a$10$xbTzPNeqaZXLS8l247GuxezwfqA8THTAMcNHg2X6Ut5hvDLVmIsQ6', '/9178098945.png', 'false', 'false', 'false', 'false', 'false', 'false', '1', 'empty', 'admin', 'Disable', 'empty', 'empty', '999999999999', 'enter', 207.8975, 9999.4407, 0.0000, '999999999999', '3971893828', '2023-11-29 12:45:38', '2023-12-25 15:39:04'),
(4, 'Mahim', 'dearvayu4@gmail.com', '01303501464', '$2a$10$gMyeDQnXkiyu2yMVpIz.feRgaDmgPOIPQsr0nJc0bg3Ob/jY9Uiz2', 'empty', 'false', 'false', 'false', 'false', 'false', 'false', '6', 'empty', 'user', 'Enable', 'empty', 'empty', '999999999999', 'ev', 0.0000, 10000.0000, 0.0000, '9206215447', '6119825552', '2023-12-03 11:43:39', '2023-12-03 11:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ides` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ides`)),
  `idesType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`idesType`)),
  `currency` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `ides`, `idesType`, `currency`, `created_at`, `updated_at`) VALUES
(1, 'Nagad', '[\"01303501469\"]', '[\"Personal Number\",\"Agent Number\"]', 'Taka', '2023-11-29 12:58:03', '2023-11-29 12:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawalrequests`
--

CREATE TABLE `withdrawalrequests` (
  `id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `idType` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT 'Usdt',
  `amount` decimal(20,4) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `message` varchar(255) DEFAULT 'empty',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawalrequests`
--

INSERT INTO `withdrawalrequests` (`id`, `wallet`, `idType`, `account`, `currency`, `amount`, `reference`, `userId`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nagad', 'Personal Number', '01303501468', 'Usd', 4.5254, 'enter', '8242892575', 'complete', 'empty', '2023-12-03 14:19:18', '2023-12-03 14:19:38'),
(2, 'Nagad', 'Personal Number', '01303501469', 'Usd', 8.4746, 'enter', '8242892575', 'complete', 'empty', '2023-12-04 11:52:07', '2023-12-04 11:52:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backuppasswords`
--
ALTER TABLE `backuppasswords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roomId` (`roomId`);

--
-- Indexes for table `connectedlists`
--
ALTER TABLE `connectedlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socketId` (`socketId`),
  ADD UNIQUE KEY `userId` (`userId`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon` (`coupon`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depositrequests`
--
ALTER TABLE `depositrequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inrooms`
--
ALTER TABLE `inrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playinghistories`
--
ALTER TABLE `playinghistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rootassets`
--
ALTER TABLE `rootassets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roottransactions`
--
ALTER TABLE `roottransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `userId` (`userId`),
  ADD UNIQUE KEY `myRef` (`myRef`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `withdrawalrequests`
--
ALTER TABLE `withdrawalrequests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backuppasswords`
--
ALTER TABLE `backuppasswords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `connectedlists`
--
ALTER TABLE `connectedlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `depositrequests`
--
ALTER TABLE `depositrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inrooms`
--
ALTER TABLE `inrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playinghistories`
--
ALTER TABLE `playinghistories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rootassets`
--
ALTER TABLE `rootassets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roottransactions`
--
ALTER TABLE `roottransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawalrequests`
--
ALTER TABLE `withdrawalrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
