<?php
header("Access-Control-Allow-Origin: *");

$id = intval($_GET['id']);

$mysqli = new mysqli("localhost", "root", "", "myTimDB");

if (mysqli_connect_errno()) {
    echo "Error to connect to DBMS: ".mysqli_connect_error();
    exit();
}
else {
    $query = " SELECT DISTINCT * FROM prodotti, serviziSmart, prodottoServizioSmart
               WHERE prodotti.id = prodottoServizioSmart.idProdotto AND 
               serviziSmart.id = prodottoServizioSmart.idServizioSmart AND prodotti.id = '".$id."'";

    $result = $mysqli->query($query);

    if($result->num_rows >0)
    {
        $myArray = array();
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);	
        } 
        echo json_encode($myArray);
    }

    $result->close();    
    $mysqli->close();
}