<?php 

require 'functions.php';

if(isset($_POST["login"]) ){

	$username= filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
	$password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);
	$sql= "SELECT * FROM user WHERE username = '$username' AND password = '$password' ";
	$result = mysqli_query($conn , $sql );
	// $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
 //    $active = $row['active'];
 //    $count = mysqli_num_rows($result);
	$check = mysqli_fetch_array($result);	
    
	if(isset($check))
	{
		header("Location: index_user.php");
        exit;
	}else{
		echo "<script> alert('username/password salah');
		</script>";
		$error = true;
	}

}

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>
		Halaman Login
	</title>
</head>
<body>
	<h1>Halaman Login</h1>
	<?php if(isset ($error)) :  ?>
		<p style="color:red; font-style: italic;">username / password salah </p>
		<?php endif; ?>
	<form action="" method="post">
		
		<ul>
			<li>
				<label for="username"> Username: </label>
				<input type="text" name="username" id="username">
			</li>
			<li>
				<label for="password"> Password: </label>
				<input type="password" name="password" id="password">
			</li>
			<li>
				<button type="submit" name="login"> Login </button>
			</li>
		</ul>

	</form>
	<a href="registrasi.php">Belum punya akun?</a>

</body>
</html>