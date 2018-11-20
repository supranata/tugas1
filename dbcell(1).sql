-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 01:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcell`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) NOT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `name`, `address`, `phone`, `email`) VALUES
(2, 'admin', 'admin', 'Alexander Nicholas Salim', 'Medan', '081919994638', 'twinzeno21@gmail.com'),
(3, 'nova', 'naipospos', 'Nova Yanti Naipospos', 'Laguboti', '081234567890', 'nova@gmail.com'),
(4, 'andre', 'pandjaitan', 'Andre Samuel Pandjaitan', 'Siantar', '089876543210', 'andre@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL,
  `user_name` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_name`) VALUES
(1, 'Tester'),
(2, 'Alfred Chrisdianto Simanjuntak'),
(7, 'Anjas Joshua Simanungkalit'),
(8, 'Jhonson Samuel Tua Hutagaol');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'Hot Offer'),
(2, 'New Product'),
(3, 'Popular Product');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `password`, `name`, `address`, `phone`, `email`) VALUES
(1, 'test', 'test', 'Tester', 'Test Address', '0812-1111-1111', 'test@gmail.com'),
(2, 'alfred', 'alfred', 'Alfred Chrisdianto Simanjuntak', 'Kerasaan', '0821-6834-9939', 'alfredchrisdiantosimanjuntak@gmail.com'),
(7, 'anjas', 'anjas', 'Anjas Joshua Simanungkalit', 'Dolok Sanggul', '0822-2222-2222', 'anjas@gmail.com'),
(8, 'jhonson', 'jhonson', 'Jhonson Samuel Tua Hutagaol', 'Parhitean', '0833-3333-3333', 'jhonson@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_list_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `destination` varchar(1000) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `transaction_img` varchar(1000) NOT NULL,
  `status` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_list_id`, `customer_id`, `destination`, `qty`, `price`, `transaction_img`, `status`) VALUES
(3, 1, 'Test Address', 1, 115000, 'abcBukti.jpg', 'waiting'),
(4, 1, 'Test Address', 3, 709000, 'abcBukti.jpg', 'rejected'),
(5, 1, 'Medan', 6, 1782000, 'abcBukti.jpg', 'rejected'),
(6, 7, 'Dolok Sanggul', 5, 1303000, 'abcBukti.jpg', 'rejected'),
(7, 1, 'Test Address', 3, 345000, '', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` bigint(20) NOT NULL,
  `name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `name`) VALUES
(1, 'Bag'),
(2, 'Dress'),
(3, 'Clothes');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduk`
--

CREATE TABLE `tblproduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(1000) NOT NULL,
  `harga` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduk`
--

INSERT INTO `tblproduk` (`id`, `nama`, `foto`, `harga`) VALUES
(18, 'OPPO F9', '0-8.jpg', 3850000);

-- --------------------------------------------------------

--
-- Table structure for table `tbpaket`
--

CREATE TABLE `tbpaket` (
  `id` int(11) NOT NULL,
  `kartu` varchar(30) NOT NULL,
  `gb` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpaket`
--

INSERT INTO `tbpaket` (`id`, `kartu`, `gb`, `harga`, `stok`) VALUES
(1, 'Telkomsel', '5GB', '32.000', 20),
(2, 'Telkomsel', '8GB', '50.000', 12),
(3, 'Telkomsel', '11GB', '67.000', 12),
(4, 'IM3', '3GB', '18.000', 15),
(5, 'Axis', '1,5GB', '13.000', 40),
(6, 'Axis', '3GB', '23.000', 35),
(7, 'Axis', '5GB', '32.000', 30),
(8, 'Tri', '1,5GB', '15.000', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbservicehp`
--

CREATE TABLE `tbservicehp` (
  `id` int(11) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `merkhp` varchar(30) NOT NULL,
  `imei` varchar(30) NOT NULL,
  `kerusakan` varchar(100) NOT NULL,
  `kelengkapan` varchar(200) NOT NULL,
  `kondisi` varchar(200) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbservicehp`
--

INSERT INTO `tbservicehp` (`id`, `kode`, `merkhp`, `imei`, `kerusakan`, `kelengkapan`, `kondisi`, `harga`, `ket`) VALUES
(1, 'A-001', 'Samsung Galaxy V+', '2256', 'Ganti LCD', 'Tutup, Batrai, SimCard', 'Hidup', '200.000', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbservicelaptop`
--

CREATE TABLE `tbservicelaptop` (
  `id` int(11) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `merklaptop` varchar(50) NOT NULL,
  `imei` varchar(30) NOT NULL,
  `kerusakan` varchar(100) NOT NULL,
  `kelengkapan` varchar(200) NOT NULL,
  `kondisi` varchar(200) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbservicelaptop`
--

INSERT INTO `tbservicelaptop` (`id`, `kode`, `merklaptop`, `imei`, `kerusakan`, `kelengkapan`, `kondisi`, `harga`, `ket`) VALUES
(1, 'L-002', 'Lenovo', '5643', 'Ganti Keyboard', 'Batrai, harddisk, ram 4gb', 'Hidup, Layar Lecet, Baut -1', '500.000', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `tgllahir` date NOT NULL,
  `jeniskel` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_list_id`),
  ADD KEY `FK_order_list` (`customer_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `tblproduk`
--
ALTER TABLE `tblproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbpaket`
--
ALTER TABLE `tbpaket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbservicehp`
--
ALTER TABLE `tbservicehp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbservicelaptop`
--
ALTER TABLE `tbservicelaptop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_list_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproduk`
--
ALTER TABLE `tblproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbpaket`
--
ALTER TABLE `tbpaket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbservicehp`
--
ALTER TABLE `tbservicehp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbservicelaptop`
--
ALTER TABLE `tbservicelaptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer` FOREIGN KEY (`customer_id`) REFERENCES `cart` (`cart_id`);

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `FK_order_list` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
