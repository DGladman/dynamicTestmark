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

if (isset($_GET["id"])) {
    $idPage = $_GET["id"];
} else {
}

$query = "SELECT * FROM product WHERE id = ?";
$stmt = $db->prepare($query);
$stmt->execute([$idPage]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);
$name = $result['name'];
$image = $result['image'];
$cardText = $result['card_text'];
$category = $result['category_id'];

$query = "SELECT * FROM category WHERE id = ?";
$stmt = $db->prepare($query);
$stmt->execute([$category]);
$cResult = $stmt->fetch(PDO::FETCH_ASSOC);
$categoryName = $cResult['name'];

$query = "SELECT * FROM category";
$stmt = $db->prepare($query);
$stmt->execute();
$categories = $stmt->fetchAll(PDO::FETCH_ASSOC);

$query = "SELECT * FROM product_section WHERE product_id = ?";
$stmt = $db->prepare($query);
$stmt->execute([$idPage]);
$idSections = $stmt->fetchAll(PDO::FETCH_ASSOC);

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
            <h1 id="About">Edit
                <?php echo $name ?>
            </h1>
        </div>
    </div>
    <form class="row" action="adminEditProduct.php" method="POST">
        <div class="col-md-6 col-sm-12 col-xs-12" id="f1">
            <Label for="name" class="form-label"> Name</Label>
            <input type="text" class="form-control" id="name" name="name" <?php echo 'value="' . $name . '"' ?>
                required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f2">
            <Label for="image" class="form-label"> Image</Label>
            <input type="text" class="form-control" id="image" name="image" <?php echo 'value="' . $image . '"' ?>
                required>
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
                    if ($cat['id'] == $category) {
                        echo ' selected';
                    }
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
            foreach ($idSections as $idSection) {
                if ($sec['id'] == $idSection['section_id']) {
                    echo ' selected';
                }
            }
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
            <textarea class="form-control" id="cardText" name="cardText" maxlength="300" required
                rows="3"><?php echo $cardText ?></textarea>
        </div>
        <div class="col-12" id="f6">
            <button type="submit" class="btn btn-primary"> Save Changes</button>
        </div>
        <input type="hidden" name="id" value="<?php echo $idPage ?>">
    </form>

</div>

</body>

</html>