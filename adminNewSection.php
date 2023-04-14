<?php
include_once("connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$name = $_POST['name'];
$body = $_POST['body'];

$query = "INSERT INTO section (name, body) VALUES (:name, :body)";
$stmt = $db->prepare($query);
$stmt->bindParam(":name", $name);
$stmt->bindParam(":body", $body);
$stmt->execute();

header("Location: testmark-adminPanel.php");
    exit;

} else {
    header("Location: dbError.php");
    exit;
}
?>