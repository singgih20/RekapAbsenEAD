<?php 
require 'functions.php';
if(isset($_POST["submit"]) ){
	if(tambah($_POST) > 0 ){
		echo "<script> alert('Data berhasil ditambahkan');
			  document.location.href='index.php';
			  </script>";
	}else{
		echo "<script> 
			  document.location.href='tambah.php';
			  </script>";
	}
}

 ?>

 <!DOCTYPE html>
<html>
<head>
	<title>Tambah Data Rekap Absen</title>
</head>
<body>
<h1>Tambah Data Rekap Absen</h1>

<form action="" method="post">
	<ul>
		<li>
			<label for="nama">Nama: </label>
			<input type="text" name="nama" id="nama" required>
		</li>
		<li>
			<label for="nim">NIM: </label>
			<input type="text" name="nim" id="nim" required>
		</li>
		<li>
			<label for="kelas">Kelas: </label>
			<input type="text" name="kelas" id="kelas" required>
		</li>
		<li>
			<label for="tanggal">Tanggal: </label>
			<input type="text" name="tanggal" id="tanggal" required>
		</li>
		<li>
			<label for="keterangan">Keterangan: </label>
			<input type="text" name="keterangan" id="tanggal" required>
		</li>
		<li>
			<button type="submit" name="submit">Submit</button>
		</li>
	</ul>
</form>

</body>
</html>