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
<title>Testmark: Inquiries</title>
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
            <h1 id="About">View Inquiries</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-12" id="c12">
            <table class="table table-striped" id="mainTable">
                <thead>
                    <tr>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Organisation</th>
                        <th scope="col">Email</th>
                        <th scope="col">Inquiry</th>
                        <th scope="col">Time Created</th>
                        <th scope="col">Delete?</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $querry = "SELECT * from inquiry";
                    $result = $db->query($querry);
                    foreach ($result as $row) {

                        $orgQuery = "SELECT name FROM organisation WHERE id = " . $row['organisation_id'];
                        $orgResult = $db->query($orgQuery);
                        $orgRow = $orgResult->fetch(PDO::FETCH_ASSOC);
                        $orgName = $orgRow['name'];

                        $emailQuery = "SELECT address FROM email WHERE id = " . $row['email_id'];
                        $emailResult = $db->query($emailQuery);
                        $emailRow = $emailResult->fetch(PDO::FETCH_ASSOC);
                        $email = $emailRow['address'];

                        echo '<tr>
                <td>' . $row['first_name'] . '</td>
                <td>' . $row['last_name'] . '</td>
                <td>' . $orgName . '</td>
                <td>' . $email . '</td>
                <td>' . $row['body'] . '</td>
                <td>' . $row['timecreated'] . '</td>
                <td>
                    <form class="delete-form" method="post" action="deleteInquiry.php">
                        <input type="hidden" name="inquiry_id" value="' . $row['id'] . '">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
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

                    // Convert timestamp to UK date format
                    $("#mainTable tbody tr").each(function() {
                        var timestamp = $(this).find("td:eq(5)").text();
                        var date = new Date(timestamp);
                        var options = {
                            day: '2-digit',
                            month: '2-digit',
                            year: 'numeric',
                            hour: '2-digit',
                            minute: '2-digit'
                        };
                        var ukDate = date.toLocaleString('en-GB', options);
                        $(this).find("td:eq(5)").text(ukDate);
                    });

                    $(".delete-form").submit(function(e) {
                        e.preventDefault();

                        var confirmDelete = confirm(
                            "Are you sure you want to delete this inquiry?");
                        if (confirmDelete) {
                            $(this).off("submit").submit();
                        }
                    });
                });
                </script>

            </table>


        </div>

    </div>

    </body>

    </html>