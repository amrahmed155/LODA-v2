<?php
include "database.php";
// Set parameters and execute
$name = $_POST['Name'];
$DOB = $_POST['DOB'];
$gender = $_POST['gender'];
$address = $_POST['streetAddress'];
$parentName = $_POST['parentName'];
$email = $_POST['email'];
$phone = $_POST['phone'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `register` (`id`, `name`, `gender`, `address`, `parentName`, `email`, `phone`,  `DOB`) 
VALUES (NULL, '$name', '$gender', '$address', '$parentName', '$email', '$phone','$DOB')"; 
// VALUES ('$interestReason', '$stayingDuration', '$skills', $GoFundMeRadio, '$GoFundMeOtherReason', '$ideas', '$email', '$phone', $status)";

if ($conn->query($sql) === TRUE) {
    print json_encode(['status' => 'success', 'message' => 'New record created successfully']);
} else {
    print json_encode(['status' => 'error', 'message' => 'Error: ' . $stmt->error]);
}

$conn->close();
?> 