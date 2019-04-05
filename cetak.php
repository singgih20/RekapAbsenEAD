<?php 
require_once __DIR__ . '/vendor/autoload.php';
require 'functions.php';
$assistant = query("SELECT * FROM assistant ORDER BY jam ASC");


$mpdf = new \Mpdf\Mpdf();

$html = '<!DOCTYPE html>
<html>
<head>
<title>
Daftar Asisten
</title>
</head>
<body>
<h1> Daftar Absen Assistant </h1>
<table class="table table-hover table-striped table-bordered" border="1" cellpadding="10" cellspacing="0">
<!-- 	</div>
</div>
</div> -->

<tr>
<th>No.</th>
<th>Nama</th>
<th>Kode Assistant</th>
<th>Jam Masuk</th>
<th>Tanggal</th>

</tr>';
$i = 1;
foreach($assistant as $row){
	$html.= '<tr>
	<td>' . $i++ . '</td>
	<td>' . $row["nama"] . '</td>
	<td>' . $row["kode"] . '</td>
	<td>' . $row["jam"] . '</td>
	<td>' . $row["tanggal"] . '</td>
	</tr>';

}

$html.= '</TABLE>
</body>
</html>';

$mpdf->WriteHTML($html);
$mpdf->Output();



?>

