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
<title>Testmark: Admin Products</title>
</head>
<?php include("commonNav.php") ?>

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
            <h1 id="About">View Products</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12" id="c12">
            <table class="table table-striped" id="mainTable">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Card Text</th>
                        <th scope="col">Category</th>
                        <th scope="col">Active</th>
                        <th scope="col">Toggle Active?</th>
                        <th scope="col">Edit?</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
        $query = "SELECT p.*, c.name as category_name FROM product p LEFT JOIN category c ON p.category_id = c.id";
        $result = $db->query($query);
        foreach ($result as $row) {
            echo '<tr>
                <td>' . $row['name'] . '</td>
                <td>' . $row['image'] . '</td>
                <td>' . $row['card_text'] . '</td>
                <td>' . $row['category_name'] . '</td>
                <td>' . ($row['active'] ? 'Yes' : 'No') . '</td>
                <td>
                    <form class="toggle-form" method="post" action="productToggle.php">
                        <input type="hidden" name="product_id" value="' . $row['id'] . '">
                        <button type="submit" class="btn ' . ($row['active'] ? 'btn-warning' : 'btn-success') . '">' . ($row['active'] ? 'Deactivate' : 'Activate') . '</button>
                    </form>
                </td>
                <td>
                    <a href="testmark-adminProduct.php?id=' . $row['id'] . '" class="btn btn-info">Edit</a>
                </td>
            </tr>';
        }
        ?>
                </tbody>
                <script>
                $(document).ready(function() {
                    $("#mainTable").DataTable({
                        responsive: true,
                        paging: false,
                    });
                });
                </script>
            </table>

        </div>

        </body>

        </html>