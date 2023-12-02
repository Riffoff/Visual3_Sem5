-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 01:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual3akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_servis`
--

CREATE TABLE `data_servis` (
  `no_servis` int(10) NOT NULL,
  `nama_brg` varchar(30) NOT NULL,
  `kerusakan` varchar(30) NOT NULL,
  `perlengkapan` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `id_sparepart` int(10) NOT NULL,
  `status` char(50) NOT NULL,
  `tgl_servis` date NOT NULL,
  `id_pelanggan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_servis`
--

INSERT INTO `data_servis` (`no_servis`, `nama_brg`, `kerusakan`, `perlengkapan`, `harga`, `id_sparepart`, `status`, `tgl_servis`, `id_pelanggan`) VALUES
(26, 'Poco X3 Pro', 'cpu reball', '-', '700000', 1, 'pending', '2021-12-15', 4),
(27, 'BB Priv', 'ganti baterai', '-', '125000', 3, 'progress', '2023-09-22', 2),
(32, 'Advan S6', 'ghost touch', '-', '200000', 6, 'pending', '0000-00-00', 1),
(33, 'Airpods 2', 'ganti baterai', '-', '100000', 4, 'progres', '0000-00-00', 3),
(34, 'Beats Studio', 'pembersihan', '-', '100000', 17, 'progres', '0000-00-00', 2),
(35, 'Redmi Note 9', 'fingerprint', '-', '70000', 8, 'progres', '0000-00-00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` int(14) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `kodepos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `jk`, `alamat`, `no_hp`, `kota`, `kodepos`) VALUES
(1, 'Zurkain', 'L', 'Jl. Kubis', 213123123, 'Kuripan', 123456),
(2, 'Ishiga', 'L', 'Jl. Shibu', 82637486, 'Tokyo', 98075),
(3, 'Dinmo', 'L', 'Jl. Juara', 92736215, 'Mylta', 12863127),
(4, 'Ligma', 'L', 'Jl. Hunce', 872326142, 'Pochinok', 6243237),
(5, 'Ponera', 'P', 'Jl. Pineward', 92634176, 'Brenika', 123423);

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_sparepart` int(10) NOT NULL,
  `nama_sparepart` varchar(50) NOT NULL,
  `id_sup` int(10) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_sparepart`, `nama_sparepart`, `id_sup`, `tgl_masuk`, `status`) VALUES
(1, 'cpu poco x3pro', 1, '0000-00-00', ''),
(2, 'cpu poco x3nfc', 1, '0000-00-00', ''),
(3, 'baterai bb priv', 2, '0000-00-00', ''),
(4, 'baterai airpods', 4, '0000-00-00', ''),
(5, 'lcd samsung s21', 5, '0000-00-00', ''),
(6, 'lcd advan s6', 2, '0000-00-00', ''),
(7, 'pcb charge airpods', 3, '0000-00-00', ''),
(8, 'fp redmi note 9', 3, '0000-00-00', ''),
(17, '-', 6, '0000-00-00', '-');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_sup` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_sup`, `nama`, `alamat`, `kota`, `email`, `telp`) VALUES
(1, 'tech alsina', 'Jl. Downtown', 'Los Angeles', 'techalsina@gmail.com', 8368323),
(2, 'luxuspart', 'Jl. Worcestershire', 'Luxembourg', 'Luxaspare@hotmail.com', 1873612736),
(3, 'pantoniaga', 'Jl. Sukamundur', 'Bekasi', 'akumaubaru@gmail.com', 31431414),
(4, 'kuncispart', 'Jl. Polilangi', 'Tangerang', 'KitaBahagia.pt@gmail.com', 856453535),
(5, 'wegosmart', 'Jl. Gurstingard', 'Denver', 'denversmarthome@hotmail.com', 21381273),
(6, '-', '-', '-', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_servis` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_servis`, `id_pelanggan`, `tgl_transaksi`, `id_user`) VALUES
(2, 27, 2, '2023-09-22', 5),
(3, 34, 2, '2023-09-11', 5),
(4, 32, 3, '2021-09-27', 1),
(5, 33, 4, '2021-04-12', 2),
(6, 35, 5, '2022-05-10', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `no_hp`) VALUES
(1, 'sekandizz', 'Kokomeelicker', 'Raphi', 'Bogor', 9876543),
(2, 'therizzlybear', 'babydonthurme', 'Ryan', 'Bekasi', 276278372),
(3, 'hairymonkey', 'bigballs', 'Dezz', 'Florida', 267213675),
(4, 'texaswamp', 'alaskanbigworm', 'Agi', 'Atlantis', 825341724),
(5, 'susultra', 'uwoooogh', 'Rifqi', 'Dungeon', 225101879);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_servis`
--
ALTER TABLE `data_servis`
  ADD PRIMARY KEY (`no_servis`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_sparepart` (`id_sparepart`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_sparepart`),
  ADD KEY `id_sup` (`id_sup`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `no_servis` (`no_servis`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_servis`
--
ALTER TABLE `data_servis`
  MODIFY `no_servis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_sparepart` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_sup` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_servis`
--
ALTER TABLE `data_servis`
  ADD CONSTRAINT `data_servis_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `data_servis_ibfk_2` FOREIGN KEY (`id_sparepart`) REFERENCES `stok` (`id_sparepart`);

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_sup`) REFERENCES `supplier` (`id_sup`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`no_servis`) REFERENCES `data_servis` (`no_servis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
