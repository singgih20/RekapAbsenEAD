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
	$nim = $data["nim"];
	$kelas = $data["kelas"];
	$tanggal = $data["tanggal"];
	$keterangan = $data["keterangan"];

	$query = "INSERT INTO mahasiswa VALUES('', '$nama', '$nim', '$kelas', '$tanggal', '$keterangan')";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

function hapus($id){
	global $conn;
	$query = "DELETE FROM mahasiswa WHERE id = $id";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
}

function ubah($data){
	global $conn;
	$id = $data["id"];
	$nama = $data["nama"];
	$nim = $data["nim"];
	$kelas = $data["kelas"];
	$tanggal = $data["tanggal"];
	$keterangan = $data["keterangan"];

	$query = "UPDATE mahasiswa SET nama ='$nama', nim = '$nim', kelas = '$kelas', tanggal = '$tanggal', keterangan = '$keterangan' WHERE id = $id";
	mysqli_query($conn, $query);
	return mysqli_affected_rows($conn);
 }

 ?>
