 <?php
define("HOST","localhost");
define("USER","supra");
define("PASSWORD","nata");
define("DATABASE","dbcell");

$mysqli=new MySQLi(HOST,USER,PASSWORD,DATABASE);
if($mysqli->connect_error){
	trigger_error("Koneksi Gagal : " . $mysqli->connect_error,E_USER_ERROR);
}
?>