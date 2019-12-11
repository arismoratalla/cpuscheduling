-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2019 at 04:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpuscheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_assignment`
--

CREATE TABLE `tbl_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_assignment`
--

INSERT INTO `tbl_auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('access-budget', '1', 1571015863),
('access-gii', '1', 1548207831),
('access-his-profile', '5', 1514427468),
('access-procurement', '1', 1554881010),
('access-procurementplan', '1', 1571015857),
('access-registration', '4', 1536717617),
('bac-secretary', '13', 1537775207),
('basic-role', '10', 1555385911),
('basic-role', '11', 1555385971),
('basic-role', '14', 1555398084),
('basic-role', '15', 1555386269),
('basic-role', '16', 1555386307),
('basic-role', '17', 1555386448),
('basic-role', '18', 1517984550),
('basic-role', '19', 1555386483),
('basic-role', '20', 1555386505),
('basic-role', '21', 1555386526),
('basic-role', '22', 1555386549),
('basic-role', '23', 1555386620),
('basic-role', '24', 1555386653),
('basic-role', '25', 1555386756),
('basic-role', '26', 1555386779),
('basic-role', '27', 1555386798),
('basic-role', '28', 1555386835),
('basic-role', '29', 1555386867),
('basic-role', '30', 1555386970),
('basic-role', '31', 1555315235),
('basic-role', '32', 1552020787),
('basic-role', '33', 1555387171),
('basic-role', '34', 1555387188),
('basic-role', '35', 1555387213),
('basic-role', '36', 1555387256),
('basic-role', '38', 1555387273),
('basic-role', '39', 1555394394),
('basic-role', '40', 1555387310),
('basic-role', '41', 1555387389),
('basic-role', '42', 1555387400),
('basic-role', '43', 1555387417),
('basic-role', '44', 1555387428),
('basic-role', '45', 1555387446),
('basic-role', '46', 1555387458),
('basic-role', '47', 1555387483),
('basic-role', '48', 1555387527),
('basic-role', '49', 1555387539),
('basic-role', '5', 1555384953),
('basic-role', '50', 1555387562),
('basic-role', '52', 1555387579),
('basic-role', '53', 1555387590),
('basic-role', '54', 1548138833),
('basic-role', '55', 1555387682),
('basic-role', '56', 1555387699),
('basic-role', '57', 1555387710),
('basic-role', '58', 1555387722),
('basic-role', '59', 1555387747),
('basic-role', '6', 1555384978),
('basic-role', '60', 1555387758),
('basic-role', '61', 1555387796),
('basic-role', '62', 1555387806),
('basic-role', '63', 1555387816),
('basic-role', '64', 1555387833),
('basic-role', '65', 1555387862),
('basic-role', '66', 1555387936),
('basic-role', '67', 1555387949),
('basic-role', '68', 1555387972),
('basic-role', '69', 1555388101),
('basic-role', '7', 1555385841),
('basic-role', '70', 1555403186),
('basic-role', '8', 1555385858),
('basic-role', '82', 1555380351),
('basic-role', '84', 1555397257),
('basic-role', '9', 1555385883),
('super-administrator', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_item`
--

CREATE TABLE `tbl_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_item`
--

INSERT INTO `tbl_auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/accounting/*', 2, NULL, NULL, NULL, 1515371555, 1515371555),
('/admin/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/default/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/default/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/*', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/create', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/index', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/update', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/menu/view', 2, NULL, NULL, NULL, 1512924430, 1512924430),
('/admin/permission/*', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/update', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/permission/view', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/*', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/delete', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/update', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/role/view', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/route/assign', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/create', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/index', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/route/remove', 2, NULL, NULL, NULL, 1512924431, 1512924431),
('/admin/rule/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/create', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/index', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/update', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/rule/view', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/*', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/activate', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/deactivate', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/admin/user/delete', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/index', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/listunit', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/admin/user/login', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/logout', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/signup', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/admin/user/update', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/admin/user/view', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/ajax/*', 2, NULL, NULL, NULL, 1520920929, 1520920929),
('/ajax/departments', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/ajax/getaccount', 2, NULL, NULL, NULL, 1520920931, 1520920931),
('/ajax/lineitembudget', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/mymethod', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/purchaseorderandobligation', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/ajax/purchaserequest', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/ajax/quotationbidsandawards', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/ajax/supplierlist', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/api/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/create', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/delete', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/options', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/update', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/api/view', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/budget/ppmp/*', 2, NULL, NULL, NULL, 1571015033, 1571015033),
('/budget/ppmp/index', 2, NULL, NULL, NULL, 1571015055, 1571015055),
('/cashiering/*', 2, NULL, NULL, NULL, 1515379311, 1515379311),
('/cpu/*', 2, NULL, NULL, NULL, 1576032234, 1576032234),
('/debug/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1512924432, 1512924432),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/default/view', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/*', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/action', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/diff', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/preview', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gii/default/view', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/gridview/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/gridview/export/*', 2, NULL, NULL, NULL, 1516673161, 1516673161),
('/gridview/export/download', 2, NULL, NULL, NULL, 1516673160, 1516673160),
('/imagemanager/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/crop', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/delete', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/get-original-image', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/upload', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/imagemanager/manager/view', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/*', 2, NULL, NULL, NULL, 1515133710, 1515133710),
('/inventory/categorytype/*', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/create', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/delete', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/index', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/update', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/categorytype/view', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/inventory/products/*', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/add-inventory-entries', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/add-inventory-withdrawaldetails', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/create', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/delete', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/index', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/pdf', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/update', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/inventory/products/view', 2, NULL, NULL, NULL, 1517209185, 1517209185),
('/lab/*', 2, NULL, NULL, NULL, 1514814971, 1514814971),
('/lab/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/lab/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/maintenance/*', 2, NULL, NULL, NULL, 1514539173, 1514539173),
('/maintenance/index', 2, NULL, NULL, NULL, 1514539139, 1514539139),
('/message/*', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/*', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/check-for-new-messages', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/compose', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/delete', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/ignorelist', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/inbox', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/mark-all-as-read', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/message/message/sent', 2, NULL, NULL, NULL, 1515721341, 1515721341),
('/message/message/view', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/paai/registration', 2, NULL, NULL, NULL, 1536829778, 1536829778),
('/paai/registration/*', 2, NULL, NULL, NULL, 1536829843, 1536829843),
('/package/*', 2, NULL, NULL, NULL, 1514431824, 1514431824),
('/package/createmodule', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/export', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/extract', 2, NULL, NULL, NULL, 1515054294, 1515054294),
('/package/getcss', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/index', 2, NULL, NULL, NULL, 1514431824, 1514431824),
('/package/manager', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/removemodule', 2, NULL, NULL, NULL, 1515390508, 1515390508),
('/package/update', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/upload', 2, NULL, NULL, NULL, 1515390507, 1515390507),
('/package/view', 2, NULL, NULL, NULL, 1515721342, 1515721342),
('/package/writeini', 2, NULL, NULL, NULL, 1515054294, 1515054294),
('/procurement/*', 2, NULL, NULL, NULL, 1519976243, 1519976243),
('/procurement/bids/*', 2, NULL, NULL, NULL, 1527646454, 1527646454),
('/procurement/bids/checkbidstatus', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/checkselected', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/checksupplier', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/createpo', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/createpurchase', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/editPrice', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/editRemarks', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/index', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/mtest', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/regeneratesupplier', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/report', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/bids/reportabstract', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/bids/view', 2, NULL, NULL, NULL, 1527646464, 1527646464),
('/procurement/default/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/default/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/department/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/index', 2, NULL, NULL, NULL, 1537770032, 1537770032),
('/procurement/department/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/department/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/disbursement/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/disbursement/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/division/*', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/create', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/delete', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/index', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/update', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/division/view', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/procurement/employee/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/employee/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/*', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/addexpenditure', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/addobjectdetails', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/delete', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/editLibObject', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/update', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/updateobjects', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/line-item-budget/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudget/*', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/addexpenditure', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/addobjectdetails', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/create', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/delete', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/editamount', 2, NULL, NULL, NULL, 1548299590, 1548299590),
('/procurement/lineitembudget/editLibObject', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/editLibObjects', 2, NULL, NULL, NULL, 1548299593, 1548299593),
('/procurement/lineitembudget/index', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/update', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/updateobjects', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudget/view', 2, NULL, NULL, NULL, 1528941182, 1528941182),
('/procurement/lineitembudgetobjectdetails/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/create', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudgetobjectdetails/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/index', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/lineitembudgetobjectdetails/listobjectdetails', 2, NULL, NULL, NULL, 1548992199, 1548992199),
('/procurement/lineitembudgetobjectdetails/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/lineitembudgetobjectdetails/view', 2, NULL, NULL, NULL, 1537770033, 1537770033),
('/procurement/obligationrequest/*', 2, NULL, NULL, NULL, 1555394867, 1555394867),
('/procurement/obligationrequest/create', 2, NULL, NULL, NULL, 0, 0),
('/procurement/obligationrequest/index', 2, NULL, NULL, NULL, 1537770036, 1537770036),
('/procurement/ppmp/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/ppmp/create', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/delete', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/index', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/update', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/ppmp/view', 2, NULL, NULL, NULL, 1528941743, 1528941743),
('/procurement/project-request/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project-request/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/project/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/*', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/purchase-order', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaseorder/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/*', 2, NULL, NULL, NULL, 1520904403, 1520904403),
('/procurement/purchaserequest/create', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/delete', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/index', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/reportpr', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/testajax', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequest/update', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequest/view', 2, NULL, NULL, NULL, 1537770034, 1537770034),
('/procurement/purchaserequestdetails/*', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/create', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/delete', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/index', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/update', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/purchaserequestdetails/view', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/*', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/checkin', 2, NULL, NULL, NULL, 1536723061, 1536723061),
('/procurement/registration/clearnames', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/create', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/delete', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/drawnames', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/gender', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/index', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/raffle', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/replacename', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/summary', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurement/registration/update', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/view', 2, NULL, NULL, NULL, 1536717529, 1536717529),
('/procurement/registration/votes', 2, NULL, NULL, NULL, 1537770035, 1537770035),
('/procurementplan/ppmp/*', 2, NULL, NULL, NULL, 1558433380, 1558433380),
('/procurementplan/ppmp/create', 2, NULL, NULL, NULL, 1558433388, 1558433388),
('/procurementplan/ppmp/delete', 2, NULL, NULL, NULL, 1558433393, 1558433393),
('/procurementplan/ppmp/index', 2, NULL, NULL, NULL, 1558433399, 1558433399),
('/procurementplan/ppmp/update', 2, NULL, NULL, NULL, 1558433406, 1558433406),
('/procurementplan/ppmp/view', 2, NULL, NULL, NULL, 1558433410, 1558433410),
('/procurementplan/ppmpitem/*', 2, NULL, NULL, NULL, 1563982485, 1563982485),
('/procurementplan/ppmpitem/create', 2, NULL, NULL, NULL, 1563982516, 1563982516),
('/procurementplan/ppmpitem/delete', 2, NULL, NULL, NULL, 1563982521, 1563982521),
('/procurementplan/ppmpitem/index', 2, NULL, NULL, NULL, 1563982526, 1563982526),
('/procurementplan/ppmpitem/update', 2, NULL, NULL, NULL, 1563982533, 1563982533),
('/procurementplan/ppmpitem/view', 2, NULL, NULL, NULL, 1563982541, 1563982541),
('/profile/*', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/create', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/delete', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/deleteimage', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/profile/index', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/update', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/profile/uploadPhoto', 2, NULL, NULL, NULL, 1513930949, 1513930949),
('/profile/view', 2, NULL, NULL, NULL, 1513914178, 1513914178),
('/sample/*', 2, NULL, NULL, NULL, 1515141962, 1515141962),
('/settings/*', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/disable', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/enable', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/settings/index', 2, NULL, NULL, NULL, 1514536468, 1514536468),
('/site/*', 2, NULL, NULL, NULL, 1512923763, 1512923763),
('/site/about', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/captcha', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/contact', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/error', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/index', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/login', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/logout', 2, NULL, NULL, NULL, 1512924433, 1512924433),
('/site/query', 2, NULL, NULL, NULL, 1520296331, 1520296331),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/requestpasswordreset', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/site/reset-password', 2, NULL, NULL, NULL, 1514249865, 1514249865),
('/site/sendmail', 2, NULL, NULL, NULL, 1516091490, 1516091490),
('/site/signup', 2, NULL, NULL, NULL, 1513840641, 1513840641),
('/site/success', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/site/upload', 2, NULL, NULL, NULL, 1513930949, 1513930949),
('/site/verify', 2, NULL, NULL, NULL, 1516091491, 1516091491),
('/tagging/*', 2, NULL, NULL, NULL, 1515130615, 1515130615),
('/tagging/default/*', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/tagging/default/index', 2, NULL, NULL, NULL, 1516673162, 1516673162),
('/test/*', 2, NULL, NULL, NULL, 1516084595, 1516084595),
('/test2/*', 2, NULL, NULL, NULL, 1516085459, 1516085459),
('/test3/*', 2, NULL, NULL, NULL, 1516085788, 1516085788),
('/tt/*', 2, NULL, NULL, NULL, 1516086131, 1516086131),
('/uploads/*', 2, NULL, NULL, NULL, 1514350073, 1514350073),
('/user/*', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/create', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/delete', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/index', 2, NULL, NULL, NULL, 1513843344, 1513843344),
('/user/update', 2, NULL, NULL, NULL, 1513843345, 1513843345),
('/user/view', 2, NULL, NULL, NULL, 1513843344, 1513843344),
('access-accounting', 2, 'This permission allow user to access accounting module', NULL, NULL, 1515371555, 1515371555),
('access-ajax', 2, 'Access Ajax', NULL, NULL, 1520920954, 1520920954),
('access-assignment', 2, 'Permission will allow user to access assignment', NULL, NULL, 1514425828, 1514425828),
('access-bidsquotation', 2, NULL, NULL, NULL, 1537774882, 1537774882),
('access-budget', 2, NULL, NULL, NULL, 1571015134, 1571015134),
('access-cashiering', 2, 'This permission allow user to access cashiering module', NULL, NULL, 1515379311, 1515379311),
('access-debug', 2, 'This Permission allow user to access debug module', NULL, NULL, 1513840103, 1513840103),
('access-disbursement', 2, NULL, NULL, NULL, 1552215599, 1552215599),
('access-division', 2, 'Permission that will access Division Page.', NULL, NULL, 1520296458, 1520296458),
('access-finance', 2, NULL, NULL, NULL, 1571015985, 1571015985),
('access-gii', 2, 'This permission allow user to access GII Tool', NULL, NULL, 1513839929, 1513839929),
('access-his-profile', 2, 'This permission will only allow user access on his own profile', NULL, NULL, 1513925187, 1513925187),
('access-inspection', 2, NULL, NULL, NULL, 1552031646, 1552031646),
('access-inventory', 2, 'This permission allow user to access inventory module', NULL, NULL, 1515133710, 1515133710),
('access-lab', 2, 'This permission allow user to access Laboratory module', NULL, NULL, 1514815010, 1514815010),
('access-lineitembudget', 2, 'access-lineitembudget', NULL, NULL, 1528941680, 1528941680),
('access-lineitembudgetobjectdetails', 2, NULL, NULL, NULL, 1548307347, 1548307347),
('access-menu', 2, 'Permission to allow access menu ', NULL, NULL, 1514426762, 1514426762),
('access-message', 2, 'This permssion allow user to access message module', NULL, NULL, 1515721386, 1515721386),
('access-obligation', 2, NULL, NULL, NULL, 1552212257, 1552212257),
('access-paai', 2, 'access-paai', NULL, NULL, 1536829719, 1536829719),
('access-package', 2, 'This permission allow user to access package manager', NULL, NULL, 1514431815, 1514431815),
('access-package-list', 2, 'Allow Users to access package list', NULL, NULL, 1515486771, 1515486771),
('access-permission', 2, 'Permission to access permission', NULL, NULL, 1514426671, 1514426671),
('access-ppmp', 2, 'access-ppmp', NULL, NULL, 1528941719, 1528941719),
('access-ppmpitem', 2, 'access-ppmpitem', NULL, NULL, 1563982366, 1563982414),
('access-pre-procurement', 2, 'access-pre-procurement', NULL, NULL, 1548140036, 1548140036),
('access-procurement', 2, 'This permission allow user to access procurement module', NULL, NULL, 1519976243, 1519976243),
('access-procurementplan', 2, NULL, NULL, NULL, 1558433425, 1558433425),
('access-profile', 2, 'This permission allow users access on Profile', NULL, NULL, 1513924948, 1513924948),
('access-purchaseorder', 2, NULL, NULL, NULL, 1537774912, 1537774958),
('access-purchaserequest', 2, 'Access Purchase Request', NULL, NULL, 1520904551, 1520904551),
('access-rbac', 2, 'This permission allow users to access RBAC but depends on other permissions to access other features of RBAC.', NULL, NULL, 1514364821, 1514364821),
('access-registration', 2, 'access-registration', NULL, NULL, 1536717562, 1536717562),
('access-role', 2, 'Permission to allow access role', NULL, NULL, 1514426382, 1514426382),
('access-route', 2, 'Permission to allow access route', NULL, NULL, 1514425999, 1514425999),
('access-rule', 2, 'Permission to access Rule', NULL, NULL, 1514426816, 1514426896),
('access-sample', 2, 'This permission allow user to access sample module', NULL, NULL, 1515141962, 1515141962),
('access-settings', 2, 'This permission allows user to access settings', NULL, NULL, 1514536456, 1514536456),
('access-signup', 2, 'This permission allow user to signup', NULL, NULL, 1513840579, 1513840579),
('access-system-tools', 2, 'Access System Tools for Admin', NULL, NULL, 1529301931, 1529301931),
('access-tagging', 2, 'This permission allow user to access tagging module', NULL, NULL, 1515130615, 1515130615),
('access-test', 2, 'This permission allow user to access test module', NULL, NULL, 1516084596, 1516084596),
('access-test2', 2, 'This permission allow user to access test2 module', NULL, NULL, 1516085459, 1516085459),
('access-test3', 2, 'This permission allow user to access test3 module', NULL, NULL, 1516085788, 1516085788),
('access-tt', 2, 'This permission allow user to access tt module', NULL, NULL, 1516086131, 1516086131),
('access-user', 2, 'This permission allow user to access User Account', NULL, NULL, 1514425679, 1514425679),
('allow-access-backend', 2, 'This Permission allow users to access backend', NULL, NULL, 1513908976, 1513908976),
('allow-gridview-export', 2, 'this permissions will allow access export/download', NULL, NULL, 1517209167, 1517209167),
('bac-member', 1, 'bac-member', NULL, NULL, 1528940411, 1528940411),
('bac-secretary', 1, 'bac-secretary', NULL, NULL, 1528940380, 1528940380),
('basic-role', 1, 'Basic role for newly created user', NULL, NULL, 1517967802, 1517967802),
('can-delete-profile', 2, 'This permission allow user to delete profile', NULL, NULL, 1514428789, 1514428789),
('Guest', 1, 'This the default Role', NULL, NULL, 1517381088, 1517381088),
('profile-full-access', 2, 'This permission allow users to access profile with full access', NULL, NULL, 1513914161, 1513914161),
('rbac-assign-permission', 2, 'This permission allows user to assign roles', NULL, NULL, 1512924223, 1513840446),
('rbac-full-access', 2, 'This permission has all the rights to access rbac', NULL, NULL, 1513840364, 1513840364),
('super-administrator', 1, 'This role reserve all the rights and permissions', NULL, NULL, 1513838897, 1513840008),
('Unit Head', 1, 'Head of a Unit', NULL, NULL, 1519955844, 1519955844),
('User', 1, 'User', NULL, NULL, 1519955864, 1519955864),
('user-full-access', 2, 'This Permission allows user to access User module', NULL, NULL, 1513843398, 1513843398);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_item_child`
--

CREATE TABLE `tbl_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_auth_item_child`
--

INSERT INTO `tbl_auth_item_child` (`parent`, `child`) VALUES
('access-accounting', '/accounting/*'),
('access-ajax', '/ajax/*'),
('access-assignment', '/admin/assignment/index'),
('access-assignment', '/admin/assignment/view'),
('access-bidsquotation', '/ajax/quotationbidsandawards'),
('access-bidsquotation', '/procurement/bids/*'),
('access-bidsquotation', '/procurement/bids/checkbidstatus'),
('access-bidsquotation', '/procurement/bids/checkselected'),
('access-bidsquotation', '/procurement/bids/checksupplier'),
('access-bidsquotation', '/procurement/bids/createpo'),
('access-bidsquotation', '/procurement/bids/createpurchase'),
('access-bidsquotation', '/procurement/bids/editPrice'),
('access-bidsquotation', '/procurement/bids/editRemarks'),
('access-bidsquotation', '/procurement/bids/index'),
('access-bidsquotation', '/procurement/bids/mtest'),
('access-bidsquotation', '/procurement/bids/regeneratesupplier'),
('access-bidsquotation', '/procurement/bids/report'),
('access-bidsquotation', '/procurement/bids/reportabstract'),
('access-bidsquotation', '/procurement/bids/view'),
('access-budget', '/budget/ppmp/*'),
('access-budget', '/budget/ppmp/index'),
('access-cashiering', '/cashiering/*'),
('access-debug', '/debug/*'),
('access-disbursement', '/procurement/disbursement/*'),
('access-disbursement', '/procurement/disbursement/index'),
('access-division', '/procurement/division/*'),
('access-gii', '/gii/*'),
('access-his-profile', '/profile/create'),
('access-his-profile', '/profile/index'),
('access-his-profile', '/profile/update'),
('access-his-profile', '/profile/uploadPhoto'),
('access-his-profile', '/profile/view'),
('access-inventory', '/inventory/*'),
('access-lab', '/lab/*'),
('access-lineitembudget', '/procurement/lineitembudget/addexpenditure'),
('access-lineitembudget', '/procurement/lineitembudget/addobjectdetails'),
('access-lineitembudget', '/procurement/lineitembudget/create'),
('access-lineitembudget', '/procurement/lineitembudget/editamount'),
('access-lineitembudget', '/procurement/lineitembudget/editLibObjects'),
('access-lineitembudget', '/procurement/lineitembudget/index'),
('access-lineitembudget', '/procurement/lineitembudget/update'),
('access-lineitembudget', '/procurement/lineitembudget/updateobjects'),
('access-lineitembudget', '/procurement/lineitembudget/view'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/create'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/delete'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/index'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/listobjectdetails'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/update'),
('access-lineitembudgetobjectdetails', '/procurement/lineitembudgetobjectdetails/view'),
('access-menu', '/admin/menu/index'),
('access-menu', '/admin/menu/view'),
('access-message', '/message/*'),
('access-obligation', '/ajax/purchaseorderandobligation'),
('access-obligation', '/procurement/obligationrequest/create'),
('access-obligation', '/procurement/obligationrequest/index'),
('access-package', '/package/*'),
('access-package', '/package/createmodule'),
('access-package', '/package/export'),
('access-package', '/package/extract'),
('access-package', '/package/index'),
('access-package', '/package/removemodule'),
('access-package', '/package/upload'),
('access-package', '/package/writeini'),
('access-permission', '/admin/permission/index'),
('access-permission', '/admin/permission/view'),
('access-ppmp', '/procurement/ppmp/create'),
('access-ppmp', '/procurement/ppmp/delete'),
('access-ppmp', '/procurement/ppmp/index'),
('access-ppmp', '/procurement/ppmp/update'),
('access-ppmp', '/procurement/ppmp/view'),
('access-ppmpitem', '/procurementplan/ppmpitem/*'),
('access-ppmpitem', '/procurementplan/ppmpitem/create'),
('access-ppmpitem', '/procurementplan/ppmpitem/delete'),
('access-ppmpitem', '/procurementplan/ppmpitem/index'),
('access-ppmpitem', '/procurementplan/ppmpitem/update'),
('access-ppmpitem', '/procurementplan/ppmpitem/view'),
('access-pre-procurement', 'access-lineitembudget'),
('access-pre-procurement', 'access-lineitembudgetobjectdetails'),
('access-pre-procurement', 'access-ppmp'),
('access-procurement', 'access-purchaserequest'),
('access-procurementplan', '/procurementplan/ppmp/*'),
('access-procurementplan', '/procurementplan/ppmp/create'),
('access-procurementplan', '/procurementplan/ppmp/delete'),
('access-procurementplan', '/procurementplan/ppmp/index'),
('access-procurementplan', '/procurementplan/ppmp/update'),
('access-procurementplan', '/procurementplan/ppmp/view'),
('access-profile', '/profile/index'),
('access-profile', '/profile/view'),
('access-purchaseorder', '/ajax/purchaseorderandobligation'),
('access-purchaseorder', '/procurement/purchaseorder/*'),
('access-purchaseorder', '/procurement/purchaseorder/index'),
('access-purchaseorder', '/procurement/purchaseorder/purchase-order'),
('access-purchaseorder', '/procurement/purchaseorder/view'),
('access-purchaserequest', '/ajax/purchaseorderandobligation'),
('access-purchaserequest', '/ajax/purchaserequest'),
('access-purchaserequest', '/ajax/quotationbidsandawards'),
('access-purchaserequest', '/procurement/purchaserequest/*'),
('access-rbac', '/admin/assignment/view'),
('access-registration', '/procurement/registration/*'),
('access-registration', '/procurement/registration/checkin'),
('access-registration', '/procurement/registration/create'),
('access-registration', '/procurement/registration/delete'),
('access-registration', '/procurement/registration/index'),
('access-registration', '/procurement/registration/update'),
('access-registration', '/procurement/registration/view'),
('access-role', '/admin/role/index'),
('access-role', '/admin/role/view'),
('access-route', '/admin/route/assign'),
('access-route', '/admin/route/index'),
('access-rule', '/admin/rule/index'),
('access-rule', '/admin/rule/view'),
('access-sample', '/sample/*'),
('access-settings', '/settings/*'),
('access-signup', '/site/signup'),
('access-tagging', '/tagging/*'),
('access-test', '/test/*'),
('access-test2', '/test2/*'),
('access-test3', '/test3/*'),
('access-tt', '/tt/*'),
('access-user', '/admin/user/*'),
('allow-gridview-export', '/gridview/*'),
('bac-member', 'access-lineitembudget'),
('bac-member', 'access-ppmp'),
('bac-member', 'access-ppmpitem'),
('bac-member', 'access-procurement'),
('bac-member', 'access-purchaserequest'),
('bac-secretary', '/procurement/*'),
('bac-secretary', 'access-ajax'),
('bac-secretary', 'access-bidsquotation'),
('bac-secretary', 'access-budget'),
('bac-secretary', 'access-inspection'),
('bac-secretary', 'access-lineitembudget'),
('bac-secretary', 'access-ppmp'),
('bac-secretary', 'access-ppmpitem'),
('bac-secretary', 'access-procurement'),
('bac-secretary', 'access-procurementplan'),
('bac-secretary', 'access-purchaseorder'),
('bac-secretary', 'access-purchaserequest'),
('basic-role', '/procurement/obligationrequest/*'),
('basic-role', 'access-ajax'),
('basic-role', 'access-disbursement'),
('basic-role', 'access-his-profile'),
('basic-role', 'access-lineitembudgetobjectdetails'),
('basic-role', 'access-message'),
('basic-role', 'access-obligation'),
('basic-role', 'access-ppmpitem'),
('basic-role', 'access-procurement'),
('basic-role', 'access-procurementplan'),
('basic-role', 'access-purchaserequest'),
('basic-role', 'access-settings'),
('Guest', '/maintenance/*'),
('Guest', '/site/*'),
('Guest', 'access-signup'),
('profile-full-access', '/profile/*'),
('profile-full-access', '/profile/uploadPhoto'),
('profile-full-access', '/site/upload'),
('profile-full-access', 'access-profile'),
('rbac-assign-permission', '/admin/assignment/*'),
('rbac-full-access', '/admin/*'),
('rbac-full-access', 'rbac-assign-permission'),
('super-administrator', '/*'),
('super-administrator', '/accounting/*'),
('super-administrator', '/admin/*'),
('super-administrator', '/admin/assignment/*'),
('super-administrator', '/admin/assignment/assign'),
('super-administrator', '/admin/assignment/index'),
('super-administrator', '/admin/assignment/revoke'),
('super-administrator', '/admin/assignment/view'),
('super-administrator', '/admin/default/*'),
('super-administrator', '/admin/default/index'),
('super-administrator', '/admin/menu/*'),
('super-administrator', '/admin/menu/create'),
('super-administrator', '/admin/menu/delete'),
('super-administrator', '/admin/menu/index'),
('super-administrator', '/admin/menu/update'),
('super-administrator', '/admin/menu/view'),
('super-administrator', '/admin/permission/*'),
('super-administrator', '/admin/permission/assign'),
('super-administrator', '/admin/permission/create'),
('super-administrator', '/admin/permission/delete'),
('super-administrator', '/admin/permission/index'),
('super-administrator', '/admin/permission/remove'),
('super-administrator', '/admin/permission/update'),
('super-administrator', '/admin/permission/view'),
('super-administrator', '/admin/role/*'),
('super-administrator', '/admin/role/assign'),
('super-administrator', '/admin/role/create'),
('super-administrator', '/admin/role/delete'),
('super-administrator', '/admin/role/index'),
('super-administrator', '/admin/role/remove'),
('super-administrator', '/admin/role/update'),
('super-administrator', '/admin/role/view'),
('super-administrator', '/admin/route/*'),
('super-administrator', '/admin/route/assign'),
('super-administrator', '/admin/route/create'),
('super-administrator', '/admin/route/index'),
('super-administrator', '/admin/route/refresh'),
('super-administrator', '/admin/route/remove'),
('super-administrator', '/admin/rule/*'),
('super-administrator', '/admin/rule/create'),
('super-administrator', '/admin/rule/delete'),
('super-administrator', '/admin/rule/index'),
('super-administrator', '/admin/rule/update'),
('super-administrator', '/admin/rule/view'),
('super-administrator', '/admin/user/*'),
('super-administrator', '/admin/user/activate'),
('super-administrator', '/admin/user/change-password'),
('super-administrator', '/admin/user/deactivate'),
('super-administrator', '/admin/user/delete'),
('super-administrator', '/admin/user/index'),
('super-administrator', '/admin/user/listunit'),
('super-administrator', '/admin/user/login'),
('super-administrator', '/admin/user/logout'),
('super-administrator', '/admin/user/request-password-reset'),
('super-administrator', '/admin/user/reset-password'),
('super-administrator', '/admin/user/signup'),
('super-administrator', '/admin/user/update'),
('super-administrator', '/admin/user/view'),
('super-administrator', '/ajax/*'),
('super-administrator', '/ajax/departments'),
('super-administrator', '/ajax/getaccount'),
('super-administrator', '/ajax/lineitembudget'),
('super-administrator', '/ajax/mymethod'),
('super-administrator', '/ajax/purchaseorderandobligation'),
('super-administrator', '/ajax/purchaserequest'),
('super-administrator', '/ajax/quotationbidsandawards'),
('super-administrator', '/ajax/supplierlist'),
('super-administrator', '/api/*'),
('super-administrator', '/api/create'),
('super-administrator', '/api/delete'),
('super-administrator', '/api/index'),
('super-administrator', '/api/options'),
('super-administrator', '/api/update'),
('super-administrator', '/api/view'),
('super-administrator', '/cashiering/*'),
('super-administrator', '/debug/*'),
('super-administrator', '/debug/default/*'),
('super-administrator', '/debug/default/db-explain'),
('super-administrator', '/debug/default/download-mail'),
('super-administrator', '/debug/default/index'),
('super-administrator', '/debug/default/toolbar'),
('super-administrator', '/debug/default/view'),
('super-administrator', '/debug/user/*'),
('super-administrator', '/debug/user/reset-identity'),
('super-administrator', '/debug/user/set-identity'),
('super-administrator', '/gii/*'),
('super-administrator', '/gii/default/*'),
('super-administrator', '/gii/default/action'),
('super-administrator', '/gii/default/diff'),
('super-administrator', '/gii/default/index'),
('super-administrator', '/gii/default/preview'),
('super-administrator', '/gii/default/view'),
('super-administrator', '/gridview/*'),
('super-administrator', '/gridview/export/*'),
('super-administrator', '/gridview/export/download'),
('super-administrator', '/imagemanager/*'),
('super-administrator', '/imagemanager/default/*'),
('super-administrator', '/imagemanager/default/index'),
('super-administrator', '/imagemanager/manager/*'),
('super-administrator', '/imagemanager/manager/crop'),
('super-administrator', '/imagemanager/manager/delete'),
('super-administrator', '/imagemanager/manager/get-original-image'),
('super-administrator', '/imagemanager/manager/index'),
('super-administrator', '/imagemanager/manager/upload'),
('super-administrator', '/imagemanager/manager/view'),
('super-administrator', '/inventory/*'),
('super-administrator', '/inventory/categorytype/*'),
('super-administrator', '/inventory/categorytype/create'),
('super-administrator', '/inventory/categorytype/delete'),
('super-administrator', '/inventory/categorytype/index'),
('super-administrator', '/inventory/categorytype/update'),
('super-administrator', '/inventory/categorytype/view'),
('super-administrator', '/inventory/default/*'),
('super-administrator', '/inventory/default/index'),
('super-administrator', '/inventory/products/*'),
('super-administrator', '/inventory/products/add-inventory-entries'),
('super-administrator', '/inventory/products/add-inventory-withdrawaldetails'),
('super-administrator', '/inventory/products/create'),
('super-administrator', '/inventory/products/delete'),
('super-administrator', '/inventory/products/index'),
('super-administrator', '/inventory/products/pdf'),
('super-administrator', '/inventory/products/update'),
('super-administrator', '/inventory/products/view'),
('super-administrator', '/lab/*'),
('super-administrator', '/lab/default/*'),
('super-administrator', '/lab/default/index'),
('super-administrator', '/maintenance/*'),
('super-administrator', '/maintenance/index'),
('super-administrator', '/message/*'),
('super-administrator', '/message/message/*'),
('super-administrator', '/message/message/check-for-new-messages'),
('super-administrator', '/message/message/compose'),
('super-administrator', '/message/message/delete'),
('super-administrator', '/message/message/ignorelist'),
('super-administrator', '/message/message/inbox'),
('super-administrator', '/message/message/mark-all-as-read'),
('super-administrator', '/message/message/sent'),
('super-administrator', '/message/message/view'),
('super-administrator', '/paai/registration'),
('super-administrator', '/paai/registration/*'),
('super-administrator', '/package/*'),
('super-administrator', '/package/createmodule'),
('super-administrator', '/package/export'),
('super-administrator', '/package/extract'),
('super-administrator', '/package/getcss'),
('super-administrator', '/package/index'),
('super-administrator', '/package/manager'),
('super-administrator', '/package/removemodule'),
('super-administrator', '/package/update'),
('super-administrator', '/package/upload'),
('super-administrator', '/package/view'),
('super-administrator', '/package/writeini'),
('super-administrator', '/procurement/*'),
('super-administrator', '/procurement/bids/*'),
('super-administrator', '/procurement/bids/checkbidstatus'),
('super-administrator', '/procurement/bids/checkselected'),
('super-administrator', '/procurement/bids/checksupplier'),
('super-administrator', '/procurement/bids/createpo'),
('super-administrator', '/procurement/bids/createpurchase'),
('super-administrator', '/procurement/bids/editPrice'),
('super-administrator', '/procurement/bids/editRemarks'),
('super-administrator', '/procurement/bids/index'),
('super-administrator', '/procurement/bids/mtest'),
('super-administrator', '/procurement/bids/regeneratesupplier'),
('super-administrator', '/procurement/bids/report'),
('super-administrator', '/procurement/bids/reportabstract'),
('super-administrator', '/procurement/bids/view'),
('super-administrator', '/procurement/default/*'),
('super-administrator', '/procurement/default/index'),
('super-administrator', '/procurement/department/*'),
('super-administrator', '/procurement/department/create'),
('super-administrator', '/procurement/department/delete'),
('super-administrator', '/procurement/department/index'),
('super-administrator', '/procurement/department/update'),
('super-administrator', '/procurement/department/view'),
('super-administrator', '/procurement/disbursement/*'),
('super-administrator', '/procurement/disbursement/index'),
('super-administrator', '/procurement/division/*'),
('super-administrator', '/procurement/division/create'),
('super-administrator', '/procurement/division/delete'),
('super-administrator', '/procurement/division/index'),
('super-administrator', '/procurement/division/update'),
('super-administrator', '/procurement/division/view'),
('super-administrator', '/procurement/employee/*'),
('super-administrator', '/procurement/employee/create'),
('super-administrator', '/procurement/employee/delete'),
('super-administrator', '/procurement/employee/index'),
('super-administrator', '/procurement/employee/update'),
('super-administrator', '/procurement/employee/view'),
('super-administrator', '/procurement/line-item-budget/*'),
('super-administrator', '/procurement/line-item-budget/addexpenditure'),
('super-administrator', '/procurement/line-item-budget/addobjectdetails'),
('super-administrator', '/procurement/line-item-budget/create'),
('super-administrator', '/procurement/line-item-budget/delete'),
('super-administrator', '/procurement/line-item-budget/editLibObject'),
('super-administrator', '/procurement/line-item-budget/index'),
('super-administrator', '/procurement/line-item-budget/update'),
('super-administrator', '/procurement/line-item-budget/updateobjects'),
('super-administrator', '/procurement/line-item-budget/view'),
('super-administrator', '/procurement/lineitembudget/*'),
('super-administrator', '/procurement/lineitembudget/addexpenditure'),
('super-administrator', '/procurement/lineitembudget/addobjectdetails'),
('super-administrator', '/procurement/lineitembudget/create'),
('super-administrator', '/procurement/lineitembudget/delete'),
('super-administrator', '/procurement/lineitembudget/editLibObject'),
('super-administrator', '/procurement/lineitembudget/index'),
('super-administrator', '/procurement/lineitembudget/update'),
('super-administrator', '/procurement/lineitembudget/updateobjects'),
('super-administrator', '/procurement/lineitembudget/view'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/*'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/create'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/delete'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/index'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/update'),
('super-administrator', '/procurement/lineitembudgetobjectdetails/view'),
('super-administrator', '/procurement/ppmp/*'),
('super-administrator', '/procurement/ppmp/create'),
('super-administrator', '/procurement/ppmp/delete'),
('super-administrator', '/procurement/ppmp/index'),
('super-administrator', '/procurement/ppmp/update'),
('super-administrator', '/procurement/ppmp/view'),
('super-administrator', '/procurement/project-request/*'),
('super-administrator', '/procurement/project-request/create'),
('super-administrator', '/procurement/project-request/delete'),
('super-administrator', '/procurement/project-request/index'),
('super-administrator', '/procurement/project-request/update'),
('super-administrator', '/procurement/project-request/view'),
('super-administrator', '/procurement/project/*'),
('super-administrator', '/procurement/project/create'),
('super-administrator', '/procurement/project/delete'),
('super-administrator', '/procurement/project/index'),
('super-administrator', '/procurement/project/update'),
('super-administrator', '/procurement/project/view'),
('super-administrator', '/procurement/purchaseorder/*'),
('super-administrator', '/procurement/purchaseorder/index'),
('super-administrator', '/procurement/purchaseorder/purchase-order'),
('super-administrator', '/procurement/purchaseorder/view'),
('super-administrator', '/procurement/purchaserequest/*'),
('super-administrator', '/procurement/purchaserequest/create'),
('super-administrator', '/procurement/purchaserequest/delete'),
('super-administrator', '/procurement/purchaserequest/index'),
('super-administrator', '/procurement/purchaserequest/reportpr'),
('super-administrator', '/procurement/purchaserequest/testajax'),
('super-administrator', '/procurement/purchaserequest/update'),
('super-administrator', '/procurement/purchaserequest/view'),
('super-administrator', '/procurement/purchaserequestdetails/*'),
('super-administrator', '/procurement/purchaserequestdetails/create'),
('super-administrator', '/procurement/purchaserequestdetails/delete'),
('super-administrator', '/procurement/purchaserequestdetails/index'),
('super-administrator', '/procurement/purchaserequestdetails/update'),
('super-administrator', '/procurement/purchaserequestdetails/view'),
('super-administrator', '/procurement/registration/*'),
('super-administrator', '/procurement/registration/checkin'),
('super-administrator', '/procurement/registration/clearnames'),
('super-administrator', '/procurement/registration/create'),
('super-administrator', '/procurement/registration/delete'),
('super-administrator', '/procurement/registration/drawnames'),
('super-administrator', '/procurement/registration/gender'),
('super-administrator', '/procurement/registration/index'),
('super-administrator', '/procurement/registration/raffle'),
('super-administrator', '/procurement/registration/replacename'),
('super-administrator', '/procurement/registration/summary'),
('super-administrator', '/procurement/registration/update'),
('super-administrator', '/procurement/registration/view'),
('super-administrator', '/procurement/registration/votes'),
('super-administrator', '/profile/*'),
('super-administrator', '/profile/create'),
('super-administrator', '/profile/delete'),
('super-administrator', '/profile/deleteimage'),
('super-administrator', '/profile/index'),
('super-administrator', '/profile/update'),
('super-administrator', '/profile/uploadPhoto'),
('super-administrator', '/profile/view'),
('super-administrator', '/sample/*'),
('super-administrator', '/settings/*'),
('super-administrator', '/settings/disable'),
('super-administrator', '/settings/enable'),
('super-administrator', '/settings/index'),
('super-administrator', '/site/*'),
('super-administrator', '/site/about'),
('super-administrator', '/site/captcha'),
('super-administrator', '/site/contact'),
('super-administrator', '/site/error'),
('super-administrator', '/site/index'),
('super-administrator', '/site/login'),
('super-administrator', '/site/logout'),
('super-administrator', '/site/query'),
('super-administrator', '/site/request-password-reset'),
('super-administrator', '/site/requestpasswordreset'),
('super-administrator', '/site/reset-password'),
('super-administrator', '/site/sendmail'),
('super-administrator', '/site/signup'),
('super-administrator', '/site/success'),
('super-administrator', '/site/upload'),
('super-administrator', '/site/verify'),
('super-administrator', '/tagging/*'),
('super-administrator', '/tagging/default/*'),
('super-administrator', '/tagging/default/index'),
('super-administrator', '/test/*'),
('super-administrator', '/test2/*'),
('super-administrator', '/test3/*'),
('super-administrator', '/tt/*'),
('super-administrator', '/uploads/*'),
('super-administrator', '/user/*'),
('super-administrator', '/user/create'),
('super-administrator', '/user/delete'),
('super-administrator', '/user/index'),
('super-administrator', '/user/update'),
('super-administrator', '/user/view'),
('super-administrator', 'access-accounting'),
('super-administrator', 'access-ajax'),
('super-administrator', 'access-assignment'),
('super-administrator', 'access-bidsquotation'),
('super-administrator', 'access-cashiering'),
('super-administrator', 'access-debug'),
('super-administrator', 'access-division'),
('super-administrator', 'access-gii'),
('super-administrator', 'access-his-profile'),
('super-administrator', 'access-inventory'),
('super-administrator', 'access-lab'),
('super-administrator', 'access-lineitembudget'),
('super-administrator', 'access-menu'),
('super-administrator', 'access-message'),
('super-administrator', 'access-paai'),
('super-administrator', 'access-package'),
('super-administrator', 'access-package-list'),
('super-administrator', 'access-permission'),
('super-administrator', 'access-ppmp'),
('super-administrator', 'access-procurement'),
('super-administrator', 'access-profile'),
('super-administrator', 'access-purchaseorder'),
('super-administrator', 'access-purchaserequest'),
('super-administrator', 'access-rbac'),
('super-administrator', 'access-registration'),
('super-administrator', 'access-role'),
('super-administrator', 'access-route'),
('super-administrator', 'access-rule'),
('super-administrator', 'access-sample'),
('super-administrator', 'access-settings'),
('super-administrator', 'access-signup'),
('super-administrator', 'access-system-tools'),
('super-administrator', 'access-tagging'),
('super-administrator', 'access-test'),
('super-administrator', 'access-test2'),
('super-administrator', 'access-test3'),
('super-administrator', 'access-tt'),
('super-administrator', 'access-user'),
('super-administrator', 'allow-access-backend'),
('super-administrator', 'allow-gridview-export'),
('super-administrator', 'can-delete-profile'),
('super-administrator', 'profile-full-access'),
('super-administrator', 'rbac-assign-permission'),
('super-administrator', 'rbac-full-access'),
('super-administrator', 'user-full-access'),
('User', 'access-lineitembudget'),
('User', 'access-ppmp'),
('User', 'access-procurement'),
('User', 'access-purchaserequest'),
('User', 'access-settings'),
('User', 'access-user'),
('user-full-access', '/user/*');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth_rule`
--

CREATE TABLE `tbl_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division`
--

CREATE TABLE `tbl_division` (
  `division_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_division`
--

INSERT INTO `tbl_division` (`division_id`, `code`, `name`) VALUES
(1, 'ORD', 'Office of the Regional Director'),
(2, 'FASS', 'Finance and Administrative Support Services'),
(3, 'TS', 'Technical Services'),
(4, 'FOS', 'Field Operations Services');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division_head`
--

CREATE TABLE `tbl_division_head` (
  `division_head_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fund_source`
--

CREATE TABLE `tbl_fund_source` (
  `fund_source_id` int(11) NOT NULL,
  `code` varchar(25) NOT NULL,
  `name` text NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fund_source`
--

INSERT INTO `tbl_fund_source` (`fund_source_id`, `code`, `name`, `active`) VALUES
(1, 'Fund 101', 'Regular Fund', 1),
(2, 'GIA - TS', 'Grants in-Aid - Technical Services', 1),
(3, 'GIA - FOS', 'Grants in-Aid - Field Operation Services', 1),
(4, 'SETUP', 'Small Enterprise Technology Upgrading Program', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imagemanager`
--

CREATE TABLE `tbl_imagemanager` (
  `id` int(10) UNSIGNED NOT NULL,
  `fileName` varchar(128) NOT NULL,
  `fileHash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL,
  `modifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imagemanager`
--

INSERT INTO `tbl_imagemanager` (`id`, `fileName`, `fileHash`, `created`, `modified`, `createdBy`, `modifiedBy`) VALUES
(21, 'DOST-XI.jpg', '_6l0KmBXSf-N66ifLeIHLsCrv01Jj7jh', '2018-01-15 16:41:37', '2018-01-15 16:41:37', NULL, NULL),
(22, 'ab0551ea9fa84e128d4c483a04c86d99479e9408.jpg', 'fSP0soWS9gn3vcEB987TDc6IHIfClpLl', '2018-01-15 16:43:37', '2018-01-15 16:43:37', NULL, NULL),
(23, 'c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg', 'LFfWrKffJEgDqdOpxE0als3_E5_PorzR', '2018-01-15 16:44:03', '2018-01-15 16:44:03', NULL, NULL),
(25, 'ab0551ea9fa84e128d4c483a04c86d99479e9408_crop_486x507.jpg', 'cV16OuH8IjljOXQVx5SHh55zAERPT2nj', '2018-01-22 13:30:23', '2018-01-22 13:30:23', NULL, NULL),
(29, '26971913-1546772542043190-774125253-o.jpg', 'Jn3RHKW2voCPAI_5HJEeXvBDOdZDI35y', '2018-01-22 14:23:02', '2018-01-22 14:23:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Home', NULL, '/site/index', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `created_at` datetime NOT NULL,
  `context` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `hash`, `from`, `to`, `status`, `title`, `message`, `created_at`, `context`) VALUES
(1, '413de46eb1c6e970e0018752cc663b91', 1, 2, 1, 'Test', 'Testing emai;l', '2018-01-12 11:05:13', ''),
(2, 'c161f92cc41ea66b50f668da2f7cbe19', 1, 2, 1, 'Test', 'fggggfgfgfgf', '2018-01-12 11:05:47', ''),
(3, '1745c19267b5aeddcd062048d7ec4912', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:02:31', ''),
(4, 'b1f0d2b59640dbacb0e8b6710a9f2df8', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:04:38', ''),
(5, 'f33d46bb69f6104b58d1c926bd017f3a', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:05:12', ''),
(6, '3c086e0f7ebf689f790e84b6031b8ab2', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:05:34', ''),
(7, '68470d890b92b328e34ff6d00186c107', 2, 1, 1, 'Re: Test', 'OK admin...thanks', '2018-01-12 12:06:05', ''),
(8, '76314a7c2850538bc488854861b16493', 1, 2, 1, 'Re: Test', '', '2018-01-12 12:42:32', ''),
(9, '0d10174be52f4d448873193cde61128e', 2, 1, -1, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:12:06', ''),
(10, '6eea46ea65b69bdad5ac83df39b3c7c4', 2, 1, 1, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:13:43', ''),
(11, '5ab804eca05589b676281bcfb956c640', 2, 5, 0, 'Test Multiple messages', '<h1>Testing</h1>\r\nThis is a message...', '2018-01-12 14:13:49', ''),
(12, '3be914d9a89936a5e03d37317ba1f68f', 1, 2, 2, 'testing email', '<p>Hi <strong>Jane,</strong></p>\r\n\r\n<p>please click this link&nbsp;<a href=\"https://web.onelab.ph\">OneLab</a></p>\r\n', '2018-01-15 16:57:54', ''),
(13, '2f13dd38c25ca28b5f588af3fb2610c0', 2, 1, 1, 'Re: testing email', '<p>OK I will</p>\r\n', '2018-01-15 16:59:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message_allowed_contacts`
--

CREATE TABLE `tbl_message_allowed_contacts` (
  `user_id` int(11) NOT NULL,
  `is_allowed_to_write` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message_ignorelist`
--

CREATE TABLE `tbl_message_ignorelist` (
  `user_id` int(11) NOT NULL,
  `blocks_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE `tbl_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1515723504),
('m161028_084412_init', 1515723507),
('m161214_134749_create_table_tbl_message_ignorelist', 1515723508),
('m170116_094811_add_context_field_to_tbl_message_table', 1515723510),
('m170203_090001_create_table_tbl_message_allowed_contacts', 1515723511);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `position_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`position_id`, `code`, `name`) VALUES
(1, 'Clerk I', 'Clerk I'),
(2, 'Clerk II', 'Clerk II'),
(3, 'Clerk III', 'Clerk III'),
(4, 'Clerk IV', 'Clerk IV'),
(5, 'PA I', 'Project Assistant I'),
(6, 'PA II', 'Project Assistant II'),
(7, 'PA III', 'Project Assistant III'),
(8, 'PDO I', 'Project Development Officer I'),
(9, 'PDO II', 'Project Development Officer II'),
(10, 'PDO III', 'Project Development Officer III'),
(11, 'Lab Aide I', 'Laboratory Aide I'),
(12, 'Lab Aide II', 'Laboratory Aide II'),
(13, 'SRA', 'Science Research Analyst'),
(14, 'SRA', 'Science Research Assistant'),
(15, 'SRS I', 'Science Research Specialist I'),
(16, 'SRS II', 'Science Research Specialist II'),
(17, 'SrSRS', 'Senior Science Research Specialist'),
(18, 'SuSRS', 'Supervising Science Research Specialist'),
(19, 'AA I', 'Administrative Assistant I'),
(20, 'AA II', 'Administrative Assistant II'),
(21, 'AA III', 'Administrative Assistant III'),
(22, 'AA IV', 'Administrative Assistant IV'),
(23, 'AA I', 'Administrative Aide I'),
(24, 'AA II', 'Administrative Aide II'),
(25, 'AA III', 'Administrative Aide III'),
(26, 'AA IV', 'Administrative Aide IV'),
(27, 'AO I', 'Administrative Officer I'),
(28, 'AO II', 'Administrative Officer II'),
(29, 'AO III', 'Administrative Officer III'),
(30, 'AO IV', 'Administrative Officer IV'),
(31, 'AO V', 'Administrative Officer V'),
(32, 'ARD', 'Assistant Regional Director');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_process`
--

CREATE TABLE `tbl_process` (
  `process_id` int(11) NOT NULL,
  `name` varchar(3) NOT NULL,
  `arrival_time` int(11) NOT NULL DEFAULT '0',
  `burst_time` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_process`
--

INSERT INTO `tbl_process` (`process_id`, `name`, `arrival_time`, `burst_time`, `priority`, `session_id`) VALUES
(1, 'P1', 0, 8, 0, 'K-jf26O1fLDl'),
(2, 'P2', 1, 3, 0, 'K-jf26O1fLDl'),
(3, 'P3', 2, 4, 0, 'K-jf26O1fLDl');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_process_result`
--

CREATE TABLE `tbl_process_result` (
  `process_result_id` int(11) NOT NULL,
  `process_result_type` int(1) NOT NULL,
  `process_id` int(11) NOT NULL,
  `session_id` varchar(12) DEFAULT NULL,
  `arrival_time` int(11) NOT NULL,
  `begin` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `turn_around_time` int(11) NOT NULL,
  `waiting_time` int(11) NOT NULL,
  `cpu_utilization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_process_result`
--

INSERT INTO `tbl_process_result` (`process_result_id`, `process_result_type`, `process_id`, `session_id`, `arrival_time`, `begin`, `end`, `turn_around_time`, `waiting_time`, `cpu_utilization`) VALUES
(1, 1, 1, 'K-jf26O1fLDl', 0, 0, 8, 8, 0, 8),
(2, 1, 2, 'K-jf26O1fLDl', 1, 8, 11, 10, 7, 3),
(3, 1, 3, 'K-jf26O1fLDl', 2, 11, 15, 13, 9, 4),
(4, 2, 1, 'K-jf26O1fLDl', 0, 0, 15, 15, 7, 8),
(5, 2, 2, 'K-jf26O1fLDl', 1, 2, 9, 8, 5, 3),
(6, 2, 3, 'K-jf26O1fLDl', 2, 4, 11, 9, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `middleinitial` varchar(50) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `contact_numbers` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`profile_id`, `user_id`, `lastname`, `firstname`, `designation`, `middleinitial`, `division_id`, `unit_id`, `contact_numbers`, `image_url`, `avatar`) VALUES
(1, 1, '201', 'MIT', 'System Administrator', 'D', 11, 0, '+639274790425', 'adm.jpg', 'c1f44f4d32ce6b10fcb6ec71f292cfa43323ee6c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_type`
--

CREATE TABLE `tbl_unit_type` (
  `unit_type_id` int(11) NOT NULL,
  `name_short` varchar(10) NOT NULL,
  `name_long` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_unit_type`
--

INSERT INTO `tbl_unit_type` (`unit_type_id`, `name_short`, `name_long`) VALUES
(1, 'piece', 'pieces'),
(2, 'pax', 'pax'),
(3, 'unit', 'units'),
(4, 'bottle', 'bottles'),
(5, 'vial', 'vials'),
(6, 'tube', 'tubes'),
(7, 'test tub', 'test tub'),
(8, 'tank', 'tanks'),
(9, 'set', 'sets'),
(10, 'service', 'services'),
(11, 'sack', 'sacks'),
(12, 'room', 'rooms'),
(13, 'roll', 'rolls'),
(14, 'rms', 'rms'),
(15, 'ream', 'reams'),
(16, 'pcs', 'pcs'),
(17, 'pax', 'pax'),
(18, 'pair', 'pairs'),
(19, 'pad', 'pads'),
(20, 'pack', 'packs'),
(21, 'mtr', 'mtrs'),
(22, 'meter', 'meters'),
(23, 'lot', 'lots'),
(24, 'loave', 'loaves'),
(25, 'liter', 'liters'),
(26, 'lit', 'lit'),
(27, 'lenght', 'lenght'),
(28, 'L', 'L'),
(29, 'kl', 'kls'),
(30, 'kit', 'kit'),
(31, 'kgs', 'kgs'),
(32, 'jar', 'jars'),
(33, 'gram', 'grams');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upload_package`
--

CREATE TABLE `tbl_upload_package` (
  `upload_id` int(11) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upload_package`
--

INSERT INTO `tbl_upload_package` (`upload_id`, `package_name`, `module_name`, `created_at`, `updated_at`) VALUES
(1, 'lab.zip', 'Lab.zip', 1515397495, 1515397495);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'H06d598TowxCUB1bRLqPHNsPMtkp3MCK', '$2y$13$FZqPeW2UZnylgrGIQyToGekR9YhIMlpif2IAOZaLr7qm.ffJAqA02', '4CnX1D1IKs70gFic28bClG-vbQfzldAB_1517198782', 'dost9ict@gmail.com', 10, 1512923120, 1529287101);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_section`
--

CREATE TABLE `tbl_user_section` (
  `user_section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `access` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_section`
--

INSERT INTO `tbl_user_section` (`user_section_id`, `user_id`, `section_id`, `project_id`, `access`) VALUES
(1, 5, 1, 0, 1),
(2, 6, 1, 0, 2),
(3, 8, 2, 0, 1),
(4, 14, 2, 0, 2),
(5, 10, 3, 0, 1),
(6, 17, 3, 0, 2),
(7, 28, 8, 0, 1),
(8, 25, 8, 0, 2),
(9, 11, 5, 0, 1),
(10, 15, 5, 0, 2),
(11, 11, 10, 0, NULL),
(12, 32, 10, 0, NULL),
(13, 38, 10, 0, NULL),
(14, 20, 7, 0, NULL),
(15, 13, 5, 0, NULL),
(16, 32, 3, 0, NULL),
(17, 81, 3, 0, NULL),
(18, 13, 3, 0, NULL),
(19, 1, 1, 0, NULL),
(20, 1, 2, 0, NULL),
(21, 1, 3, 0, NULL),
(22, 1, 4, 0, NULL),
(23, 1, 10, 0, NULL),
(24, 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_votes`
--

CREATE TABLE `tbl_votes` (
  `id` int(11) NOT NULL,
  `class` varchar(15) NOT NULL,
  `entry` varchar(50) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_votes`
--

INSERT INTO `tbl_votes` (`id`, `class`, `entry`, `votes`) VALUES
(1, 'PA 201 A', 'Enchanted', 3489),
(2, 'PA 201 B', 'Regalia', 4724),
(3, 'PA 207 B', 'That\'s How You Know', 2127),
(4, 'PA 205 A', 'Disney Dudes', 522),
(5, 'PA 207 A', 'After Ever After', 4475),
(6, 'PA 205 B', 'Sultanate Muslim Wedding', 715),
(7, 'PA 206 A', 'Enchanted', 466),
(8, 'PA 299 B', 'The King and I', 3433),
(9, 'PA 297 B', 'Moana', 400);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_getuser`
-- (See below for the actual view)
--
CREATE TABLE `vw_getuser` (
`user_id` int(11)
,`username` varchar(32)
,`auth_key` varchar(32)
,`password_hash` varchar(255)
,`password_reset_token` varchar(255)
,`email` varchar(255)
,`status` smallint(6)
,`created_at` int(11)
,`updated_at` int(11)
,`lastname` varchar(50)
,`firstname` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_getuser`
--
DROP TABLE IF EXISTS `vw_getuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_getuser`  AS  (select `fais`.`tbl_user`.`user_id` AS `user_id`,`fais`.`tbl_user`.`username` AS `username`,`fais`.`tbl_user`.`auth_key` AS `auth_key`,`fais`.`tbl_user`.`password_hash` AS `password_hash`,`fais`.`tbl_user`.`password_reset_token` AS `password_reset_token`,`fais`.`tbl_user`.`email` AS `email`,`fais`.`tbl_user`.`status` AS `status`,`fais`.`tbl_user`.`created_at` AS `created_at`,`fais`.`tbl_user`.`updated_at` AS `updated_at`,`fais`.`tbl_profile`.`lastname` AS `lastname`,`fais`.`tbl_profile`.`firstname` AS `firstname` from (`fais`.`tbl_user` join `fais`.`tbl_profile` on((`fais`.`tbl_profile`.`user_id` = `fais`.`tbl_user`.`user_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_auth_assignment`
--
ALTER TABLE `tbl_auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `tbl_auth_item`
--
ALTER TABLE `tbl_auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `tbl_auth_item_child`
--
ALTER TABLE `tbl_auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `tbl_auth_rule`
--
ALTER TABLE `tbl_auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tbl_division`
--
ALTER TABLE `tbl_division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `tbl_division_head`
--
ALTER TABLE `tbl_division_head`
  ADD PRIMARY KEY (`division_head_id`),
  ADD KEY `division_id` (`division_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_fund_source`
--
ALTER TABLE `tbl_fund_source`
  ADD PRIMARY KEY (`fund_source_id`);

--
-- Indexes for table `tbl_imagemanager`
--
ALTER TABLE `tbl_imagemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message_allowed_contacts`
--
ALTER TABLE `tbl_message_allowed_contacts`
  ADD PRIMARY KEY (`user_id`,`is_allowed_to_write`);

--
-- Indexes for table `tbl_message_ignorelist`
--
ALTER TABLE `tbl_message_ignorelist`
  ADD PRIMARY KEY (`user_id`,`blocks_user_id`);

--
-- Indexes for table `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tbl_process`
--
ALTER TABLE `tbl_process`
  ADD PRIMARY KEY (`process_id`);

--
-- Indexes for table `tbl_process_result`
--
ALTER TABLE `tbl_process_result`
  ADD PRIMARY KEY (`process_result_id`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `division_id` (`division_id`) USING BTREE;

--
-- Indexes for table `tbl_unit_type`
--
ALTER TABLE `tbl_unit_type`
  ADD PRIMARY KEY (`unit_type_id`);

--
-- Indexes for table `tbl_upload_package`
--
ALTER TABLE `tbl_upload_package`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_section`
--
ALTER TABLE `tbl_user_section`
  ADD PRIMARY KEY (`user_section_id`);

--
-- Indexes for table `tbl_votes`
--
ALTER TABLE `tbl_votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_division`
--
ALTER TABLE `tbl_division`
  MODIFY `division_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_division_head`
--
ALTER TABLE `tbl_division_head`
  MODIFY `division_head_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_fund_source`
--
ALTER TABLE `tbl_fund_source`
  MODIFY `fund_source_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_imagemanager`
--
ALTER TABLE `tbl_imagemanager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_process`
--
ALTER TABLE `tbl_process`
  MODIFY `process_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_process_result`
--
ALTER TABLE `tbl_process_result`
  MODIFY `process_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_unit_type`
--
ALTER TABLE `tbl_unit_type`
  MODIFY `unit_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_upload_package`
--
ALTER TABLE `tbl_upload_package`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_user_section`
--
ALTER TABLE `tbl_user_section`
  MODIFY `user_section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_votes`
--
ALTER TABLE `tbl_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_auth_assignment`
--
ALTER TABLE `tbl_auth_assignment`
  ADD CONSTRAINT `tbl_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_auth_item`
--
ALTER TABLE `tbl_auth_item`
  ADD CONSTRAINT `tbl_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `tbl_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_auth_item_child`
--
ALTER TABLE `tbl_auth_item_child`
  ADD CONSTRAINT `tbl_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `tbl_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_division_head`
--
ALTER TABLE `tbl_division_head`
  ADD CONSTRAINT `tbl_division_head_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `tbl_division` (`division_id`),
  ADD CONSTRAINT `tbl_division_head_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD CONSTRAINT `tbl_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `tbl_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
