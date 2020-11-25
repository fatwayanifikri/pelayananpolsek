        <div id="page-wrapper">
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">

                        <!-- /.panel-heading -->
                        <div class="panel-body">

<body onLoad="window.print ()">


<tr><td colspan=8 color="#FFF000"><center>POLSEK CIPAYUNG</center></td></tr>
<tr><td colspan=8 ><center>LAPORAN DATA SIM POLSEKTA JAKARTA TIMUR</center></td></tr>
<tr><td colspan=8 ><center>Jl.Mabes Hankam No.1 Jakarta Timur</center></td></tr>

<tr><td colspan=8 ><center>=======================================================</center></td></tr>

<table width="100%" border="1" cellpadding="8" cellspacing="0">
<tr bgcolor='#f2a91c'> 
<th>No</th> 
<td>Nama</td>
<td>Tempat/ Tanggal Lahir</td>
<td>Jenis Kelamin</td>
<td>Alamat</td>
<td>Agama</td>
<td>Tinggi</td>
<td>Pekerjaan</td>
<td>Masa Berlaku</td>
</tr>

<?php
include"koneksi.php";
include"tglindo.php";
$sql = mysql_query("SELECT * FROM tbl_sim ORDER BY id_sim");
$no=1;
while($row = mysql_fetch_array($sql)){
?>
<tr bgcolor='#FFF'>
<td align='center'> <?php echo $no; ?> </td>
<td align='left'> <?php echo $row['nama']; ?></td>
<td align='left'> <?php echo $row['tmp_lahir']; ?>/ <?php echo TanggalIndo($row['tgl_lahir']);?>  </td>
<td align='left'> <?php echo $row['jenis_kelamin']; ?> </td>
<td align='left'> <?php echo $row['alamat']; ?>  </td>
<td align='left'> <?php echo $row['agama']; ?> </td>
<td align='left'> <?php echo $row['tinggi']; ?>  </td>
<td align='left'> <?php echo $row['pekerjaan']; ?>  </td>

<td align='left'> <?php echo TanggalIndo($row['masa']);?>  </td>
</tr>
<?php
$no++;
}
?>
</table>
<br>
<br>
<table>
<td>
<tr>Samarinda Utara,<?php echo date('d - M - Y'); ?></tr><br>
<tr>        Ttd         </tr><br>
<tr>                    </tr><br>
<tr>                    </tr><br>
<tr>                    </tr><br>
<tr>      Ervin Suryatna, M.Si     </tr>
</td>
</table>

</div>
</div>
</div>
</div>