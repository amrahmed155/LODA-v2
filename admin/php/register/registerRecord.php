<?php
include "../../../php/database.php";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = intval($_GET['id']);

// Update status to 'read'
$update_sql = "UPDATE register SET status = 'read' WHERE id = $id";
$conn->query($update_sql);

$sql = "SELECT * FROM register WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo json_encode($result->fetch_assoc());
} else {
    echo json_encode(array("error" => "Record not found"));
}

$conn->close();
?>
