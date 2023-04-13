<?php
include_once("connection.php");
if (isset($_POST['inquiry_id'])) {
    $inquiryId = $_POST['inquiry_id'];

    $query = "DELETE FROM inquiry WHERE id = :inquiry_id";
    $stmt = $db->prepare($query);
    $stmt->bindParam(':inquiry_id', $inquiryId);
    $result = $stmt->execute();

    if ($result) {
        header("Location: testmark-adminInquiry.php");
        exit();
    } else {
        header("Location: dbError.php");
    }
} else {
    header("Location: dbError.php");
}
?>