<?php
include_once("connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['name'];
    $image = $_POST['image'];
    $category = $_POST['category'];
    $sections = $_POST['section'];
    $cardText = $_POST['cardText'];

    $query = "INSERT INTO product (name, image, category_id, card_text) VALUES (:name, :image, :category_id, :cardText)";
    $stmt = $db->prepare($query);
    $stmt->bindParam(":name", $name);
    $stmt->bindParam(":image", $image);
    $stmt->bindParam(":category_id", $category);
    $stmt->bindParam(":cardText", $cardText);
    $stmt->execute();

    $query = "SELECT id FROM product WHERE name = :name";
    $stmt = $db->prepare($query);
    $stmt->bindParam(":name", $name);
    $stmt->execute();
    $idProduct = $stmt->fetchColumn();


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