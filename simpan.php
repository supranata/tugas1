<?php
include ("config.php");


$nama=$_POST['nama'];
$harga=$_POST['harga'];

$ekstensi_foto	= array('png','jpg');

$foto = $_FILES['foto']['name'];


$x = explode('.', $foto);


$ekstensix = strtolower(end($x));


$ukuranx= $_FILES['foto']['size'];


$file_tmpx = $_FILES['foto']['tmp_name'];


if(in_array($ekstensix,$ekstensi_foto) === true && in_array($ekstensix,$ekstensi_foto) === true){
if($ukuranx < 5044070){			
move_uploaded_file($file_tmpx, 'images/'.$foto);

}}
$sql="insert into tblproduk (nama,harga,foto)values('$nama','$harga','$foto')";

$mysqli->query($sql);
header("Location:index.php");


?>