<?php
include_once("connection.php");
include("commonHead.php");
if (isset($_GET["id"])) {
    $idPage = $_GET["id"];
} else {
}
$query = "SELECT * FROM product WHERE id = ?";
$stmt = $db->prepare($query);
$stmt->execute([$idPage]);
$result = $stmt->fetch();
$count = $stmt->rowCount();

if ($count == 0) {
    header("Location: 404page.php");
}

$name = $result['name'];
echo '<title>Testmark: ' . ucfirst($name) . '</title>';

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
    <div class="row">
        <div class="col-12" id="c11">
            <H2>Submit an Inquiry</H2>
        </div>
    </div>

    <form class="row" action="inquiryProcess.php?id= " method="POST">
        <div class="col-md-6 col-sm-12 col-xs-12" id="f1">
            <Label for="FirstName" class="form-label"> First Name</Label>
            <input type="text" class="form-control" id="FirstName" name="first_name" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f2">
            <Label for="LastName" class="form-label"> Last Name</Label>
            <input type="text" class="form-control" id="LastName" name="last_name" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f3">
            <Label for="Organisation" class="form-label"> Organisation</Label>
            <input type="text" class="form-control" id="Organisation" name="organisation" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f4">
            <Label for="Email" class="form-label"> Email Address</Label>
            <input type="email" class="form-control" id="Email" name="email" required>
        </div>

        <div class="col-12" id="f5">
            <Label for="Inquiry" class="form-label"> Inquiry</Label>
            <textarea class="form-control" id="Inquiry" name="inquiry" rows="3"></textarea>
        </div>
        <div class="col-12" id="f6">
            <button type="submit" class="btn btn-primary"> Submit</button>
        </div>
    </form>
</div>
</body>

</html>