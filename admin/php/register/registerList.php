<?php
include "../../../php/database.php";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$limit = intval($_GET['length']);
$offset = intval($_GET['start']);
$search = $_GET['search']['value'];

// SQL query to fetch data
$sql = "SELECT * FROM register WHERE name LIKE '%$search%' OR status LIKE '$search%' OR gender LIKE '%$search%' OR address LIKE '%$search%' OR parentName LIKE '%$search%' OR email LIKE '%$search%' OR DOB LIKE '%$search%' OR phone LIKE '%$search%' LIMIT $limit OFFSET $offset";
$result = $conn->query($sql);


// Fetching the total number of records
$totalData = $conn->query("SELECT COUNT(*) as count FROM register WHERE name LIKE '%$search%' OR status LIKE '$search%' OR gender LIKE '%$search%' OR address LIKE '%$search%' OR parentName LIKE '%$search%' OR email LIKE '%$search%' OR DOB LIKE '%$search%' OR phone LIKE '%$search%' ")->fetch_assoc()['count'];
$totalFiltered = $totalData;

$data = array();

while($row = $result->fetch_assoc()) {
    $row['action'] = '<button class="btn btn-secondary view-btn btn-special" data-id="'.$row['id'].'">View</button>';
    $data[] = $row;
}

$json_data = array(
    "draw"            => intval($_GET['draw']),
    "recordsTotal"    => intval($totalData),
    "recordsFiltered" => intval($totalFiltered),
    "data"            => $data
);

echo json_encode($json_data);

$conn->close();
?>
