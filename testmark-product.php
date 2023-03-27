<?php
include_once("connection.php");
include("commonHead.php");
$idPage = $_GET["id"];
$querry = "SELECT * FROM product WHERE id =" . $idPage;
$result = $db->query($querry);
foreach ($result as $row) {
    $name = $row['name'];
    echo '<title>Testmark: ' . ucfirst($name) . '</title>';
}
?>
<title>Testmark: Product</title>
</head>
<?php include("commonNav.php");
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
        <div class="col-12 title">
            <?php
            $querry = "SELECT * FROM product WHERE id =" . $idPage;
            $result = $db->query($querry);
            foreach ($result as $row) {
                $name = $row['name'];
                echo '<h1 class="titleText">' . ucfirst($name) . '</h1>';
            }
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-12 bg">
            <?php
            $querry = "SELECT * FROM product WHERE id =" . $idPage;
            $result = $db->query($querry);
            foreach ($result as $row) {
                $image = $row['image'];
            }
            echo '<img class="card-img-top" id="idcCable1"  src="image/' . $image . '" alt="Product Image">';
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-12 bg">
            <?php
            $querry = "SELECT section.name, section.body FROM product JOIN product_section ON product.id = product_section.product_id JOIN section ON product_section.section_id = section.id WHERE product.id =" . $idPage;
            $result = $db->query($querry);
            foreach ($result as $row) {
                $name = $row['name'];
                $body = $row['body'];
                echo '<h2 class="titleText">' . ucfirst($name) . '</h2>
                    <p>' . $body . '</p>';
            }
            ?>
        </div>
    </div>
    </body>

    </html>