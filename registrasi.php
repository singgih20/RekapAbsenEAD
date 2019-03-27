<?php 

require 'functions.php';
if(isset($_POST["register"]) ){
    $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
    // enkripsi password
    $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
    // password_hash($_POST["password"], PASSWORD_DEFAULT);
	$sql = "INSERT INTO user (username, password) 
            VALUES ('$username','$password')";
    
    if ($conn->query($sql) === TRUE) {
    	echo "<script> alert('user baru berhasil ditambahkan');
		</script>";
		header("Location: login.php");
	}else{
		echo "<script> alert('user baru gagal ditambahkan');
		</script>";
	}
}

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Halaman Registrasi</title>
</head>
<body>

<h1>Halaman Registrasi</h1>

<form action="" method="post">
	
	<ul>
		<li>
			<label for="username" > Username: </label>
			<input type="text" name="username" id="username" required>
		</li>
		<li>
			<label for="password"> Password </label>
			<input type="password" name="password" id="password" required>
		</li>
		<li>
			<label for="password2"> Confirm Password: </label>
			<input type="password" name="password2" id="password2">
		</li>
		<li>
			<button type="submit" name="register">Register! </button>
		</li>

	</ul>

</form>
</body>
</html>