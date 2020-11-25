<style type="text/css">
  @font-face {
    font-family: myFirstFont;
    src: url(fonts/ufonts.com_square721-bt-roman.ttf);
  }

  p, u, td{
    font-family: myFirstFont;
  }
</style>
<title>Print Data Surat Tugas</title>
<body onLoad="window.print()">
<?php
error_reporting(0);
session_start();
include "koneksi.php"; 
include "tglindo.php"; 
$d = mysql_fetch_array(mysql_query("SELECT * FROM tbl_lapor where id_laporan='$_GET[id]'"));
?>
<table border=0 width=100%>
<tr>
    <td align="center" rowspan='3' width='88px'><img src='../../../img/polri.png' width='85px'></td>
</tr> 
<tr>
    <td align="center"><h3 style='margin-bottom:-5px' align=center>POLISI DAERAH JAKARTA TIMUR<br>
         RESOR CIPAYUNG <br> SEKTOR KOTA JAKARTA </h3></td>
    <td align="center" rowspan='3' width='88px'>&nbsp;</td>
</tr> 
<tr>
    <td align="center"><p>Jl. Mabes Hankam No.1 ,13890 </p></td>
</tr> 
</table>
<hr style='border:1px solid #000'>

<table width=100%>
<tr>
    <td align="center"><h3 style='margin-bottom:-5px' align=center>SURAT LAPORAN DIRI</h3></td>
</tr> 
<tr>
    <td align="center"><p>Nomor : 00<?php echo "$d[id_laporan]"; ?>/198/TRANTIB/309.07/VIII/2020</p></td>
</tr> 
</table>

<br>


<table width='50%' align="center">
<tr>
<td width="5%">1</td>
<td width="30%">Nama Lengkap</td>
<td width="65%">: <?php echo "$d[nama]";?></td>
</tr>

<tr>
<td>3</td>
<td>Tempat/ Tanggal Lahir</td>
<td>: <?php echo "$d[tmp_lahir]";?>/ <?php echo TanggalIndo($d['tgl_lahir']);?></td>
</tr>
<tr>
<td>4</td>
<td>Jenis Kelamin</td>
<td>: <?php echo "$d[jenis_kelamin]";?></td>
</tr>
<tr>
<td>5</td>
<td>Alamat</td>
<td>: <?php echo "$d[alamat]";?></td>
</tr>
<tr>
<td>6</td>
<td>Agama</td>
<td>: <?php echo "$d[agama]";?></td>
</tr>
<tr>
<td>7</td>
<td>Pekerjaan</td>
<td>: <?php echo "$d[pekerjaan]";?></td>
</tr>
<tr>
<td>8</td>
<td>Judul Laporan</td>
<td>: <?php echo "$d[judul_laporan]";?></td>
</tr>
<tr>
<td>9</td>
<td>Isi Laporan</td>
<td>: <?php echo "$d[isi_laporan]";?></td>
</tr>

</table>


<table width=100%>
  <tr>
    <td width="30%">
    </td>

    <td width="30%">

    </td>

    <td >
       
        <table>
            
            <tr>
              <td>Samarinda,</td>
              <td> <?php echo date("d M Y"); ?></td></tr>
        </table><br>
        <center>
          KEPALA KEPOLISIAN SEKTOR KOTA JAKARTA TIMUR<br>Waka<br><br><br>

          <u>ADI KUSWANTO</u><br>
         
          AJUN KOMISARIS POLISI NRP. 61070523
        </center>
    </td>
  </tr>
</table> 
</body>