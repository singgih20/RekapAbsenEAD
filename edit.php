<?php 

require 'functions.php';

$id = $_GET["id"];

$mhs = query("SELECT * FROM mahasiswa WHERE id = $id")[0];

if(isset($_POST["submit"]) ){
	if(ubah($_POST) > 0 ){
		echo "<script>
		alert('Data berhasil diubah');
		document.location.href='index.php';
		</script>";
	}else{
		echo "<script>
		alert('Data gagal diubah');
		document.location.href='index.php';
		</script>

		";
	}
}

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>
		Ubah Data Rekap Absen
	</title>
</head>
<body>

	<h1>Ubah data rekap absen mahasiswa </h1>
	<form action="" method="post">
		
		<input type="hidden" name="id" value="<?= $mhs["id"]; ?>">
		<ul>
			<li>
				<label for="nama">Nama:</label>
				<input type="text" name="nama" id = "nama" required value="<?= $mhs["nama"];  ?>">
			</li>
			<li>
				<label for="nim">NIM:</label>
				<input type="text" name="nim" id = "nim" required value="<?= $mhs["nim"]; ?>">
			</li>
			<li>
				<label for="kelas">Kelas: </label>
				<input type="text" name="kelas" id = "kelas" required value= "<?= $mhs["kelas"];?>">
			</li>
			<li>
				<label for="tanggal">Tanggal: </label>
				<input type="text" name="tanggal" id = "tanggal" required value="<?= $mhs["tanggal"]; ?>">
			</li>
			<li>
				<label for="keterangan">Keterangan: </label>
				<input type="text" name="keterangan" id = "keterangan" required value=" <?= $mhs["keterangan"];?>">
			</li>
			<li>
				<button type="submit" name = "submit"> Ubah data rekap absen </button>
			</li>
		</ul>


	</form>

</body>
</html>