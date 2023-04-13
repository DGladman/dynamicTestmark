<?php
include_once("connection.php");
if (isset($_POST['inquiry_id'])) {
    $inquiryId = $_POST['inquiry_id'];

    $inquiryQuery = "SELECT organisation_id, email_id FROM inquiry WHERE id = :inquiry_id";
    $inquiryStmt = $db->prepare($inquiryQuery);
    $inquiryStmt->bindParam(':inquiry_id', $inquiryId);
    $inquiryStmt->execute();
    $inquiryRow = $inquiryStmt->fetch(PDO::FETCH_ASSOC);
    $organisationId = $inquiryRow['organisation_id'];
    $emailId = $inquiryRow['email_id'];

    // Check if there are any other inquiries that are using the same email and organisation details
    $checkQuery = "SELECT id FROM inquiry WHERE email_id = :email_id AND organisation_id = :organisation_id AND id != :inquiry_id";
    $checkStmt = $db->prepare($checkQuery);
    $checkStmt->bindParam(':email_id', $emailId);
    $checkStmt->bindParam(':organisation_id', $organisationId);
    $checkStmt->bindParam(':inquiry_id', $inquiryId);
    $checkStmt->execute();
    $checkResult = $checkStmt->fetch(PDO::FETCH_ASSOC);

    if (!$checkResult) {
        $query = "DELETE FROM inquiry WHERE id = :inquiry_id";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':inquiry_id', $inquiryId);
        $result = $stmt->execute();

        if ($result) {
            // Check if the organisation is used only by the inquiry being deleted
            $orgCheckQuery = "SELECT id FROM inquiry WHERE organisation_id = :organisation_id AND id != :inquiry_id";
            $orgCheckStmt = $db->prepare($orgCheckQuery);
            $orgCheckStmt->bindParam(':organisation_id', $organisationId);
            $orgCheckStmt->bindParam(':inquiry_id', $inquiryId);
            $orgCheckStmt->execute();
            $orgCheckResult = $orgCheckStmt->fetch(PDO::FETCH_ASSOC);

            // Check if the email is used only by the inquiry being deleted
            $emailCheckQuery = "SELECT id FROM inquiry WHERE email_id = :email_id AND id != :inquiry_id";
            $emailCheckStmt = $db->prepare($emailCheckQuery);
            $emailCheckStmt->bindParam(':email_id', $emailId);
            $emailCheckStmt->bindParam(':inquiry_id', $inquiryId);
            $emailCheckStmt->execute();
            $emailCheckResult = $emailCheckStmt->fetch(PDO::FETCH_ASSOC);

            if (!$emailCheckResult && !$orgCheckResult) {
                $junctionQuery = "DELETE FROM email_organisation WHERE email_id = :email_id AND organisation_id = :organisation_id";
                $junctionStmt = $db->prepare($junctionQuery);
                $junctionStmt->bindParam(':email_id', $emailId);
                $junctionStmt->bindParam(':organisation_id', $organisationId);
                $junctionStmt->execute();

                $orgQuery = "DELETE FROM organisation WHERE id = :organisation_id";
                $orgStmt = $db->prepare($orgQuery);
                $orgStmt->bindParam(':organisation_id', $organisationId);
                $orgStmt->execute();

                $emailQuery = "DELETE FROM email WHERE id = :email_id";
                $emailStmt = $db->prepare($emailQuery);
                $emailStmt->bindParam(':email_id', $emailId);
                $emailStmt->execute();

            }
            header("Location: testmark-adminInquiry.php");
            exit;
        }
    } else {
        $query = "DELETE FROM inquiry WHERE id = :inquiry_id";
        $stmt = $db->prepare($query);
        $stmt->bindParam(':inquiry_id', $inquiryId);
        $result = $stmt->execute();

        header("Location: testmark-adminInquiry.php");
        exit;
    }
} else {
    header("Location: dbError.php");
    exit;
}
?>