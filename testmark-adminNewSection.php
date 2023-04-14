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
<title>Testmark: New Section</title>
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
            <h1 id="About">Add New Section
            </h1>
        </div>
    </div>
    <form class="row" action="adminNewSection.php" method="POST">
        <div class="col-md-12 col-sm-12 col-xs-12" id="f1">
            <Label for="name" class="form-label"> Name</Label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="col-12" id="f5">
            <Label for="body" class="form-label"> Body Text</Label>
            <textarea class="form-control" id="body" name="body" rows="3" required></textarea>
        </div>
        <div class="col-12" id="f6">
            <button type="submit" class="btn btn-primary"> Submit</button>
        </div>
    </form>

</div>

</body>

</html>