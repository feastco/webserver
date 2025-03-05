<?php
header("Content-Type: application/json");
require 'koneksimysql.php';

$query = "SELECT kode, merk, hargajual, stok, foto FROM tbl_product";
$result = mysqli_query($conn, $query);

$products = array();
while($row = mysqli_fetch_assoc($result)) {
  $products[] = array(
    'kode' => $row['kode'],
    'merk' => $row['merk'],
    'harga' => $row['hargajual'],
    'stok' => $row['stok'],
    'foto' => 'http://192.168.1.9/images/'.$row['foto']
  );
}

echo json_encode($products);
?>