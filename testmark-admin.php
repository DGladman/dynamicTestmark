<?php
session_start();
if (isset($_SESSION['admin'])) {
    if ($_SESSION['admin'] == true) {
        header("Location: testmark-adminPanel.php");
        exit;
    }
} else {
    $_SESSION['admin'] = false;
}

include_once("connection.php");
include("commonHead.php");
?>
<title>Testmark: Admin</title>
</head>
<?php include("commonNav.php") ?>

<div class="container">

    <div class="row" id="Top">

        <div class="col-md-4 col-sm-6 col-xs-12" id="c1">
            <h1 id="logo">Testmark Ltd</h1>
        </div>
        <div class="col-md-8 col-sm-6 col-xs-12" id="c2">
            <p id="demo">
                Demo Login Details:<br>
                Username: admin1<br>
                Password: HummingbirdWing
            <p>
        </div>
    </div>
    <div class="row">
        <div class="col-12 title">
            <h1 class="titleText">Admin Login</h1>
        </div>
    </div>
    <form class="row" action="adminProcess.php?id= " method="POST">
        <div class="col-md-6 col-sm-12 col-xs-12" id="f1">
            <Label for="username" class="form-label"> Username</Label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>

        <div class="col-md-6 col-sm-12 col-xs-12" id="f2">
            <Label for="password" class="form-label"> Password</Label>
            <input type="text" class="form-control" id="password" name="password" required>
        </div>
        <div class="col-12" id="f6">
            <button type="submit" class="btn btn-primary"> Login</button>
        </div>
    </form>

</div>
</div>
</body>

</html>