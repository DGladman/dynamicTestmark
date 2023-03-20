<?php
require_once("connection.php");

echo '<body>
<nav class="navbar navbar-expand-md" id="NN">
    <a href="index.php" class="navbar-brand" id="Brand">Testmark</a>
    <ul class="navbar-nav">';

$querry = "SELECT * from category";
$result = $db->query($querry);
foreach ($result as $row) {
    echo '<li class="nav-item">
    <a href="testmark-' . $row['name'] . '.php' . '" class="nav-link" id="NavL">' . $row['name'] . '</a>
    </li>';
}

echo '<li class="nav-item">
<a href="Testmark-about.html" class="nav-link" id="NavL5">About Us</a>
</li>
<li class="nav-item">
<a href="Testmark-technical.html" class="nav-link" id="NavL6">Technical Information</a>
</li>
</ul>
</nav>';