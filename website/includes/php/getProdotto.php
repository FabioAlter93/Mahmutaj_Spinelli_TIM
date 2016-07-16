<?php
header("Access-Control-Allow-Origin: *");

$id = intval($_GET['id']);

$mysqli = new mysqli("localhost", "root", "", "myTimDB");

if (mysqli_connect_errno()) {    echo "Error to connect to DBMS: ".mysqli_connect_error();
    exit();
}
else {
    $query ="SELECT * FROM prodotti WHERE prodotti.id = '".$id."'";

    $result = $mysqli->query($query);

    if($result->num_rows >0)
    {
        $row = $result->fetch_array(MYSQL_ASSOC);
        $myObject = array_map('utf8_encode', $row);
     
        echo json_encode($myObject);
    }

    $result->close();

    $mysqli->close();
}