<?php 

require 'functions.php';
$assistant = query("SELECT * FROM request");



 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>
 		Halaman Awal
 	</title>
 </head>
 <body>
 
<h1>Daftar request absen assistant</h1>


<form method="post" action="">
	<input type="text" name="keyword" size="50" autofocus placeholder="Masukkan keyword pencarian.." autocomplete="off">
	<button type="submit" name="cari"> Cari! </button>
</form>

<table border="1" cellpadding="10" cellspacing="0">
	
	<tr>
		<th>No.</th>
		<th>Nama</th>
		<th>Kode Assistant</th>
		<th>Shift</th>
		<th>Jam Masuk</th>
		<th>Tanggal</th>
		<th>Gambar</th>
	</tr>
	<?php $no = 1; ?>
	<?php foreach($assistant as $mhs): ?>
		<tr>
			<td><?= $no; ?></td>
			<td><?= $mhs["nama"]; ?></td>
			<td><?= $mhs["kode"]; ?></td>
			<td><?= $mhs["shift"];?></td>
			<td><?= $mhs["jam"]; ?></td>
			<td><?= $mhs["tanggal"];?> </td>
			<td><?= $mhs["gambar"];?></td>
		</tr>
		<?php $no++; ?>
		<?php endforeach; ?>


</table>
 </body>
 </html>