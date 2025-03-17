<?php
include "database.php";

// Set parameters and execute
$prefix = $_POST['prefix'];
$name = $_POST['name'];
$message = $_POST['message'];
$email = $_POST['email'];
$phone = $_POST['phone'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `contact` (`id`, `prefix`, `name`, `email`, `phone`, `message`) 
        VALUES (NULL, '$prefix', '$name', '$email', '$phone', '$message') ";

if ($conn->query($sql) === TRUE) {
    print json_encode(['status' => 'success', 'message' => 'New record created successfully']);
} else {
    print json_encode(['status' => 'error', 'message' => 'Error: ' . $stmt->error]);
}

$conn->close();
?> 