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
			Kelas:
			<select name="kelas"> 
			<option value="SI4101">SI4101</option>
   			<option value="SI4102">SI4102</option>
   			<option value="SI4103">SI4103</option>
    			<option value="SI4104">SI4104</option>
    			<option value="SI4105">SI4105</option>
    			<option value="SI4106">SI4106</option>
    			<option value="SI4107">SI4107</option>
    			<option value="SI4108">SI4108</option>
    			<option value="SI41INT">SI4INT</option>
			</select>
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
