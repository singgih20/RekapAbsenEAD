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
			<label for="Kode">Kode Assistant: </label>
			<input type="text" name="nim" id="nim" required>
		</li>
		<li>
			Shift:
			<select name="shift"> 
			<option value="shift1">shift1</option>
   			<option value="shift2">shift2</option>
   			<option value="shift3">shift3</option>
    			<option value="shift4">shift4</option>
    			<option value="shift5">shift5</option>
    			<option value="shift6">shift6</option>
    			<option value="shift7">shift7</option>
    			<option value="shift8">shift8</option>
    			<option value="shift9">shift9</option>
			</select>
		</li>
		<li>
			<label for="jam">Jam Masuk: </label>
			<input type="text" name="jam" id="jam" required>
		</li>
		<li>
			<label for="tanggal">Tanggal: </label>
			<input type="text" name="tanggal" id="tanggal" required>
		</li>
		<li>
			<button type="submit" name="submit">Submit</button>
		</li>
	</ul>
</form>

</body>
</html>
