<?php
require_once("connection.php");

echo '<body>
<nav class="navbar navbar-expand-md" id="NN">
    <a href="index.php" class="navbar-brand" id="Brand">Testmark</a>
    <ul class="navbar-nav">';

$querry = "SELECT COUNT(id) AS categoryCount FROM category";
$statement = $db->query($querry);
$categoryCount = $statement->fetchColumn();
echo $categoryCount;
    ?>