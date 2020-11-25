-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 02, 2020 at 09:39 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pelayanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(15) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'TUGAS WEB PROGRAMING', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lapor`
--

CREATE TABLE IF NOT EXISTS `tbl_lapor` (
  `id_laporan` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul_laporan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `isi_laporan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_laporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=462 ;

--
-- Dumping data for table `tbl_lapor`
--

INSERT INTO `tbl_lapor` (`id_laporan`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `agama`, `alamat`, `pekerjaan`, `judul_laporan`, `isi_laporan`) VALUES
(1, 'dewi', '2012-05-16', '', 'perempuan', 'islam', 'belakang kampus upi', 'mahasiswa', 'surat tilang', 'tilang motor'),
(2, 'gaga', '2017-06-07', '', 'Laki-laki', 'Islam', 'lubeg', 'mahasiswa', 'kehilangan', 'hilang dompet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `id_pengunjung` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pengunjung`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`id_pengunjung`, `username`, `password`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `agama`, `no_telpon`) VALUES
(5, 'nasri', 'nasri', 'nasri', '2017-11-06', 'Laki-laki', 'lubeg', 'Islam', '0556746'),
(1, 'sopi', 'sopi', 'sopi sapriadi', '2017-08-07', 'Laki-laki', 'padang', 'Islam', '0987654321'),
(6, 'anwar', '12345', 'Anwar', '2018-05-28', 'Laki-laki', 'Padang', 'Islam', '082170214455'),
(7, 'sakti', '123', 'saktiyogo', '2005-06-15', 'Laki-laki', 'jalan', 'Islam', '120'),
(8, 'sakti', '123', 'saktiyogo', '2020-06-27', 'Laki-laki', 'sa', 'Islam', '120'),
(9, 'crewfcckvr', '123', 'crewfcc', '2020-06-24', 'Laki-laki', 'sa', 'Islam', '0901'),
(10, 'sakti', '123', 'arinda saktiyogo', '1984-03-09', 'Laki-laki', 'jakarta', 'Islam', '081281768635');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perijinan`
--

CREATE TABLE IF NOT EXISTS `tbl_perijinan` (
  `id_perijinan` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tujuan_kegiatan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `waktu_kegiatan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tempat_kegiatan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_perijinan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_perijinan`
--

INSERT INTO `tbl_perijinan` (`id_perijinan`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `alamat`, `agama`, `no_telp`, `tujuan_kegiatan`, `waktu_kegiatan`, `tempat_kegiatan`) VALUES
(1, '    ari bro', '2010-05-06', '', 'Laki-laki', '    bungus', 'Islam', '    06278187921', '    pesta rakyat besar', '    17 agustus', '    lapangan bola kaki desa 2'),
(4, 'dinda', '2005-03-02', '', 'Perempuan', 'Belakang kampus upi', 'Islam', '08465483242', 'syukuran', '18 juli', 'rumah sendiri'),
(8, 'sakti yogo', '2009-02-18', 'madiun', 'Laki-laki', 'sa', 'Islam', '021', 'nikah', '5 jam', 'lapangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sabhara`
--

CREATE TABLE IF NOT EXISTS `tbl_sabhara` (
  `id_sabhara` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tujuan_pengawalan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `route` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sabhara`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_sabhara`
--

INSERT INTO `tbl_sabhara` (`id_sabhara`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `alamat`, `agama`, `no_telp`, `tujuan_pengawalan`, `route`) VALUES
(1, ' diky', '2014-02-27', '', 'Perempuan', ' payakumbuh', 'Islam', ' 074238974', ' medan', ' payakumbuh - medan'),
(2, 'diky', '2014-02-27', '', 'Laki-laki', 'payakumbuh', 'Islam', '074238974', 'medan', 'payakumbuh - medan'),
(7, 'sakti', '2003-02-19', 'madiun', 'Laki-laki', 'jakarta', 'Islam', '021', 'jakartas', 'transjawa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sim`
--

CREATE TABLE IF NOT EXISTS `tbl_sim` (
  `id_sim` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tinggi` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_sim` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sim`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_sim`
--

INSERT INTO `tbl_sim` (`id_sim`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `alamat`, `agama`, `tinggi`, `pekerjaan`, `keterangan`, `masa`, `no_sim`) VALUES
(6, 'riko', '2018-06-01', 'padang', 'Laki-laki', 'padang', 'Islam', '90', '90', '', '2018-06-01', ''),
(7, 'sasa', '2020-06-02', 'madiujn', 'Laki-laki', 'jakarta', 'Islam', '120', 'swata', 'Baru', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skck`
--

CREATE TABLE IF NOT EXISTS `tbl_skck` (
  `id_skck` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `kebangsaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `no_ktp` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keperluan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `riwayat_sekolah` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_skck`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=230 ;

--
-- Dumping data for table `tbl_skck`
--

INSERT INTO `tbl_skck` (`id_skck`, `nama`, `jenis_kelamin`, `kebangsaan`, `agama`, `tgl_lahir`, `tmp_lahir`, `alamat`, `pekerjaan`, `no_ktp`, `keperluan`, `riwayat_sekolah`, `keterangan`, `masa`) VALUES
(1, ' koko', 'Laki-laki', ' Indonesia', 'Islam', '2018-06-15', ' padang', ' jkj', ' jk', ' jkj', ' jk', ' jk', ' ', '2018-06-30'),
(226, 'jeje', 'Laki-laki', 'Indonesia', 'kristen', '2018-06-29', 'PAdang', 'Padang', 'Buruh', '8080880', '080', 'oppp', '', '2018-06-30'),
(225, 'riko', 'Laki-laki', ' Indonesia', 'Islam', '2018-06-15', ' padang', ' jkj', ' jk', ' jkj', ' jk', ' jk', ' Baru', '2018-06-01'),
(227, 'arinda sakti yogo', 'Laki-laki', 'indonesia', 'Islam', '1984-03-09', 'madiun', 'jakarta raya', 'wiraswasta', '123123123', 'pasport', 'madinah university', 'Baru', ''),
(228, 'DEWI TRIYANI', 'Perempuan', 'indonesia', 'Islam', '1984-01-28', 'jakarta', 'jakarta', 'swasta', '021', 'melamar PNS', 'lulusan DItkesad', 'Baru', ''),
(229, 'sumanto', 'Laki-laki', 'Simbabwe', 'Islam', '1985-03-19', 'gorgopool', 'simbabwe', 'kuli bangunan', '220', 'melamar sang kekasih', 'Lulusan PUBG', '', '2020-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stnk`
--

CREATE TABLE IF NOT EXISTS `tbl_stnk` (
  `id_stnk` int(12) NOT NULL AUTO_INCREMENT,
  `no_registrasi` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `merk` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `type` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `model` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `isi_silinder` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `warna` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_stnk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_stnk`
--

INSERT INTO `tbl_stnk` (`id_stnk`, `no_registrasi`, `nama`, `alamat`, `merk`, `type`, `jenis`, `model`, `tahun`, `isi_silinder`, `warna`, `keterangan`, `masa`) VALUES
(4, ' 01121', ' RIko', ' padang', ' 9', ' 09', ' 09', ' 90', ' 90', ' 90', ' 90', ' Baru', '2018-06-30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
