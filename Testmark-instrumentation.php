<?php require_once("connection.php");
require("commonHead.php");

$querry = "SELECT id FROM category WHERE name = 'instrumentation'";
$result = $db->query($querry);
foreach ($result as $row) {
    $idCategory = $row['id'];
}
?>


<title>Testmark: Sensors</title>
</head>

<?php require("commonNav.php") ?>
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
        <div class="col-12" id="c6">
            <?php
            $querry = "SELECT * FROM category WHERE id =" . $idCategory;
            $result = $db->query($querry);
            foreach ($result as $row) {
                $name = $row['name'];
                $description = $row['body'];
                echo '<h1 id="ProductT1">' . ucfirst($name) . '</h1>
                    <p>' . $description . '</p>';
            }
            ?>

        </div>

    </div>

    <div class="row">

        <?php
        $querry = "SELECT * FROM product WHERE category_id =" . $idCategory;
        $result = $db->query($querry);
        foreach ($result as $row) {
            $id = $row['id'];
            $name = $row['name'];
            $image = $row['image'];
            $cardText = $row['card_text'];
            $active = $row['active'];

            if ($active == 1) {
                echo '<div class="col-md-4 col-sm-6 col-xs-12 d-flex align-items-stretch cardDiv" >
                        <div class="card">
                            <a href="testmark-product.php?id=' . $id . '">
                                <img class="card-img-top productImage" src="image/' . $image . '" alt="Product Image">
                            </a>
                            <div class="card-body">
                                <a href="testmark-product.php?id=' . $id . '">
                                    <h4 class="card-body">' . $name . '</h4>
                                </a>
                                    <p class="card-text">' . $cardText . '</p>
                            </div>
                        </div>
                    </div>';
            }

        }
        ?>

    </div>

</div>



</body>

</html>