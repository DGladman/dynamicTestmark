<?php
session_start();
if ($_SESSION['admin'] != true) {
    header("Location: accessError.php");
}
if (isset($_POST['logout'])) {
    $_SESSION['admin'] = false;
    header("Location: index.php");
    exit;
}

include_once("connection.php");
include("commonHead.php");


?>
<title>Testmark: Admin Product</title>
</head>
<?php include("commonNav.php"); ?>

<div class="container">

    <div class="row" id="Top">

        <div class="col-md-4 col-sm-6 col-xs-12" id="c1">
            <h1 id="logo">Testmark Ltd</h1>
        </div>
        <div class="col-md-8 col-sm-6 col-xs-12" id="c2">
            <p>
                Welcome Admin
            </p>
            <form method="post">
                <input type="submit" name="logout" value="Logout" class="btn btn-primary">
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-12" id="c12">
            <h1 id="About">Add New Product</h1>
        </div>
    </div>
    <form class="row" action="adminNewProduct.php" method="POST">
        <div class="col-md-6 col-sm-12 col-xs-12" id="f1">
            <Label for="name" class="form-label"> Name</Label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f2">
            <Label for="image" class="form-label"> Image</Label>
            <input type="text" class="form-control" id="image" name="image" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f3">
            <label for="category" class="form-label">Category</label>
            <select class="form-control" id="category" name="category" required>
                <?php
                $query = "SELECT * FROM category";
                $stmt = $db->prepare($query);
                $stmt->execute();
                $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
                foreach ($categories as $cat) {
                    echo '<option value="' . $cat['id'] . '"';
                    echo '>' . $cat['name'] . '</option>';
                }
                ?>
            </select>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f4">
            <label for="section" class="form-label">Sections</label>
            <select class="form-control my-multi-select" id="section" name="section[]" multiple>
                <?php
        $query = "SELECT * FROM section";
        $stmt = $db->prepare($query);
        $stmt->execute();
        $sections = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($sections as $sec) {
            echo '<option value="' . $sec['id'] . '"';
            echo '>' . $sec['name'] . '</option>';
        }
        ?>
            </select>
        </div>

        <script>
        $(document).ready(function() {
            $('.my-multi-select').select2();
        });
        </script>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f3"> </div>
        <div class="col-12" id="f5">
            <Label for="cardText" class="form-label"> Card Text</Label>
            <textarea class="form-control" id="cardText" name="cardText" maxlength="300" required rows="3"></textarea>
        </div>
        <div class="col-12" id="f6">
            <button type="submit" class="btn btn-primary"> Add Product</button>
        </div>
        <input type="hidden" name="id" value="<?php echo $idPage ?>">
    </form>

</div>

</body>

</html>