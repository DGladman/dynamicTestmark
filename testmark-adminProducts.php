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
<title>Testmark: AdminPanel</title>
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
            <h1 id="About">View/Edit Products</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-6" id="c12">
            <button type="button" class="btn btn-primary"
                onclick="window.location.href='testmark-adminProducts.php'">View/Edit Products</button>
        </div>
        <div class="col-6" id="c12">
            <button type="button" class="btn btn-primary"
                onclick="window.location.href='testmark-adminInquiry.php'">View Inquiries</button>
        </div>

    </div>

    </body>

    </html>