<?php 

include "koneksimysql.php";
header('content-type: application/json');

$username = $_POST['username'];
$password = $_POST['password'];
$datauser = array();
$getstatus = 0;

$sql = "SELECT * FROM user WHERE username = '".$username."' AND password = '".$password."'";
$hasil = mysqli_query($conn, $sql);
$data = mysqli_fetch_object($hasil);
if(!$data){
    $getstatus = 0;
}else{
    $getstatus = 1;
    $datauser=array('username'=>$data->username, 'email'=>$data->email, 'status'=>$data->status);
}

echo json_encode(array('result' => $getstatus, 'data' => $datauser));
?>