<?php
session_start();
include_once("connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Check if the username exists
    $query = "SELECT id FROM admin WHERE name = ?";
    $stmt = $db->prepare($query);
    $stmt->execute([$username]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$result) {
        header("Location: loginError.php");
    } else {
        $query = "SELECT password FROM admin WHERE name = ?";
        $stmt = $db->prepare($query);
        $stmt->execute([$username]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        $PasswordValid = password_verify($password, $result['password']);

        if ($PasswordValid = true) {
            $_SESSION['admin'] = true;
            header("Location: testmark-adminPanel.php");
        } else {
            header("Location: loginError.php");
        }
    }
}