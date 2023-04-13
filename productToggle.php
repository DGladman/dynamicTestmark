<?php
include_once("connection.php");
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['product_id'])) {
        $id = $_POST['product_id'];

        $query = "SELECT active FROM product WHERE id = ?";
        $stmt = $db->prepare($query);
        $stmt->bindValue(1, $id, PDO::PARAM_INT);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($result && isset($result['active'])) {
            if ($result['active'] == 1) {
                $query = "UPDATE product SET active = 0 WHERE id = ?";
                $stmt = $db->prepare($query);
                $stmt->bindValue(1, $id, PDO::PARAM_INT);
                $stmt->execute();
            } else {
                $query = "UPDATE product SET active = 1 WHERE id = ?";
                $stmt = $db->prepare($query);
                $stmt->bindValue(1, $id, PDO::PARAM_INT);
                $stmt->execute();
            }
            header("Location: testmark-adminProducts.php");
            exit;
        } else {
            header("Location: dbError.php");
        }
    } else {
        header("Location: dbError.php");
    }
}
?>