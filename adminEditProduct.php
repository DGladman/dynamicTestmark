<?php
include_once("connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$name = $_POST['name'];
$image = $_POST['image'];
$category = $_POST['category'];
$sections = $_POST['section'];
$cardText = $_POST['cardText'];
$idProduct = $_POST['id'];

$query = "UPDATE product SET name = :name, image = :image, category_id = :category_id, card_text = :cardText WHERE id = :id";
$stmt = $db->prepare($query);
$stmt->bindParam(":name", $name);
$stmt->bindParam(":image", $image);
$stmt->bindParam(":category_id", $category);
$stmt->bindParam(":cardText", $cardText);
$stmt->bindParam(":id", $idProduct);
$stmt->execute();

$query = "DELETE FROM product_section WHERE product_id = :productId";
$stmt = $db->prepare($query);
$stmt->bindParam(":productId", $idProduct);
$stmt->execute();

$query = "INSERT INTO product_section (product_id, section_id) VALUES (:productId, :sectionId)";
$stmt = $db->prepare($query);
$stmt->bindParam(":productId", $idProduct);
$stmt->bindParam(":sectionId", $idSection);
foreach ($sections as $idSection) {
    $stmt->execute();
}

header("Location: testmark-adminProduct.php?id=$idProduct");
    exit;

} else {
    header("Location: dbError.php");
    exit;
}
?>