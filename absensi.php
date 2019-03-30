<?php 
require 'functions.php';
if(isset($_POST["submit"]) ){
	if(request($_POST) > 0 ){
		echo "<script> alert('Data berhasil direquest');
			  document.location.href='index_user.php';
			  </script>";
	}else{
		echo "<script> 
			  document.location.href='absensi.php';
			  </script>";
	}
}

 ?>

 <!DOCTYPE html>
<html>
<head>
	<title>Request absensi ke admin</title>
</head>
<body>
<h1>Request absensi ke admin</h1>
<p>Note: Upload foto tidak wajib</p>
<form action="" method="post">
	<ul>
		<li>
			<label for="nama">Nama: </label>
			<input type="text" name="nama" id="nama" required>
		</li>
		<li>
			<label for="Kode">Kode Assistant: </label>
			<input type="text" name="kode" id="kode" required>
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
			<input type="text" name="jam" id="jam" readonly value =" <?= date("h:i:a") ?>">
		</li>
		<li>
			<label for="tanggal">Tanggal: </label>
			<input type="text" name="tanggal" id="tanggal"  readonly value = "<?= date("d:M:Y") ?>">
		</li>
		<li>
			<label for="gambar">Foto </label>
			<input type="file" name="gambar" id="gambar">
		</li>
		<li>
			<button type="submit" name="submit">Submit</button>
		</li>
	</ul>
</form>

</body>
</html>