<?php
// $servername = "localhost"; // change if necessary
// $username = "Amr"; // change if necessary
// $password = "amr@2020"; // change if necessary
// $dbname = "leapofdanceacademy"; // change to your database name

$servername = "localhost"; 
$username = "u930724794_academyadmin"; 
$password = "Z5nD6rL2"; 
$dbname = "u930724794_lodang"; 


//My sql conecttion string
$mysql = new mysqli($servername, $username, $password, $dbname);

// if database conection error 
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

function select(  $modul , $query , $type = 'all'  )
{
		$return = array() ;
	   // select query 
       $Results = mysqli_query($GLOBALS['mysql']  ,  $query );
    
	   // convert the sql return no array
       while($obj = mysqli_fetch_assoc($Results )){ 
			// to change the object from User[0]['id'] to be like User[0]['User']['id'] t
            $return[] = array( $modul => $obj   )  ;
       } 

	   
       switch ( $type) {
            case 'first':
			    // to change the object from User['id'] to be like Use['User']['id'] 
			    $return  = $return[0] ;         
            break;
        }
      // ob_flush();  
      return  $return ; 
}

// sample query like insert or update or .....
function query(  $query  )
{
 
      $Results = mysqli_query($GLOBALS['mysql']  ,  $query );
      ob_flush();
	  return  $Results ;
 }
 function insert($query)
{
   /// $Results = $GLOBALS['mysql']->prepare($query);
   // $res = $Results->execute();
   // return $res ? $GLOBALS['mysql']->insert_id : 0;
	
	
	$Results = mysqli_query($GLOBALS['mysql']  ,  $query );
      ob_flush();
	  return  $Results ;
}
?>