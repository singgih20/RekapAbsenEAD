<?php 

$conn = mysqli_connect("localhost", "root", "", "absen");

function query($query){
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows=[];
	while($row = mysqli_fetch_assoc($result)){
		$rows[] = $row;
	}
	return $rows;
}

function tambah($data){
	global $conn;
	$nama = $data["nama"];
	$kode = $data["kode"];
	$shift = $data["shift"];
	$jam = $data["jam"];
	$tanggal = $data["tanggal"];

	$query = "INSERT INTO assistant VALUES('', '$nama', '$kode', '$shift', '$jam', '$tanggal')";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

function hapus($id){
	global $conn;
	$query = "DELETE FROM assistant WHERE id = $id";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

function ubah($data){
	global $conn;
	$id = $data["id"];
	$nama = $data["nama"];
	$kode = $data["kode"];
	$shift = $data["shift"];
	$jam = $data["jam"];
	$tanggal = $data["tanggal"];

	$query = "UPDATE assistant SET nama ='$nama', kode = '$kode', shift = '$shift', jam = '$jam', tanggal = '$tanggal' WHERE id = $id";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
 }

function registrasi($data){
	global $conn;

	$username = strtolower(stripslashes( $data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);   //memungkinkan user mengunakan tanda kutip
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);

	//cek user tersedia
	$result = mysqli_query($conn, "SELECT username FROM user WHERE username='$username'");

	if(mysqli_fetch_assoc($result) ){
		echo "<script>
		alert('username sudah terdaftar');
		</script>";
		return false;
	}


	//cek konfirmasi password
	if($password !== $password2){
		echo "<script> 
			alert('konfirmasi password tidak sesuai');
			</script>";
			return false;
	}

	$password = password_hash($password, PASSWORD_DEFAULT);

	mysqli_query($conn, "INSERT INTO user VALUES('', '$username', '$password')");
	return mysqli_affected_rows($conn);
}

function request($data){
	global $conn;
	$nama = $data["nama"];
	$kode = $data["kode"];
	$shift = $data["shift"];
	$jam = $data["jam"];
	$tanggal = $data["tanggal"];
	$gambar = $data["gambar"];
	$query = "INSERT INTO request VALUES('', '$nama', '$kode', '$shift', '$jam', '$tanggal', '$gambar' )";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

 ?>

