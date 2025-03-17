<?php
include "../../../php/database.php";
header("Content-Type: application/json;charset=utf-8");
header('Content-Type: application/json');
// Create connection

$sqlSatament = "select  *  from register  " ;
//execute select ;
$table = select("table" ,$sqlSatament) ;
 //loop over result to build questions DB
 $result = array( ) ;
for ($index = 0; $index < count($table); $index++)
	{
   $result[$index] =  json_decode(json_encode( $table[$index]['table'] ) );
	}
//send results

print  json_encode (  $result );
?>