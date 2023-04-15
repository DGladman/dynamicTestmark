<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
try{
    $db = new PDO('mysql:host=localhost;dbname=testmark;', 'root', );
}
catch (PDOException $e){
    header("dbError.php");
    exit();
}
?>