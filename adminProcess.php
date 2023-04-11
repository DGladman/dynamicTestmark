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
        // Username does not exist
        header("Location: loginError.php");
    } else {
        // Username exists
        $query = "SELECT password FROM admin WHERE name = ?";
        $stmt = $db->prepare($query);
        $stmt->execute([$username]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        $PasswordValid = password_verify($password, $result['password']);
        // if ($PasswordValid == true){
        //     echo "Password is valid";
        //     echo "<br>";
        //     echo $result['password'];
        //     echo "<br>";
        //     echo $password;
        // }
        // else {
        //     echo "Password is invalid";
        //     echo "<br>";
        //     echo $result['password'];
        //     echo "<br>";
        //     echo $password;
        // }

        if ($PasswordValid = true) {
            // Password is valid
            $_SESSION['admin'] = true;
            header("Location: testmark-adminPanel.php");
        } else {
            // Password is invalid
            header("Location: loginError.php");
        }
    }
}