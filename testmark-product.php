<?php
include_once("connection.php");
include("commonHead.php");
?>
<title>Testmark: Product</title>
</head>
<?php include("commonNav.php");
$idPage = $_GET["id"];
?>

<div class="container">

    <div class="row" id="Top">

        <div class="col-md-4 col-sm-6 col-xs-12" id="c1">
            <h1 id="logo">Testmark Ltd</h1>
        </div>
        <div class="col-md-8 col-sm-6 col-xs-12" id="c2">
            <p>
                Phone Number: (+44) 01632 960206
            <p>
                Fax: (+44) 01632 960358
            </p>
            <p>
                Email: Sales@Testmark.co.uk
            </p>
        </div>
    </div>
    <div class="row">
        <div class ="col-12 title">
    <?php
    $querry = "SELECT * FROM product WHERE id =" . $idPage;
    $result = $db->query($querry);
    foreach ($result as $row) {
        $name = $row['name'];
        echo '<h1 class="titleText">' . ucfirst($name) . '</h1>';
    }
    ?>
</div>
</body>

</html>