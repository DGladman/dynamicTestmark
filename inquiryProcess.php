<?php
include_once("connection.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $organisation = $_POST['organisation'];
    $email = $_POST['email'];
    $inquiry = $_POST['inquiry'];


    // Check if the email already exists
    $query = "SELECT id FROM email WHERE address = ?";
    $stmt = $db->prepare($query);
    $stmt->execute([$email]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$result) {
        // Insert the email
        $query = "INSERT INTO email (address) VALUES (?)";
        $stmt = $db->prepare($query);
        $stmt->execute([$email]);
        $email_id = $db->lastInsertId();
    } else {
        $email_id = $result['id'];
    }

    $query = "SELECT id FROM organisation WHERE name = ?";
    $stmt = $db->prepare($query);
    $stmt->execute([$organisation]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$result) {
        // Insert the organisation
        $query = "INSERT INTO organisation (name) VALUES (?)";
        $stmt = $db->prepare($query);
        $stmt->execute([$organisation]);
        $org_id = $db->lastInsertId();
    } else {
        $org_id = $result['id'];
    }

    // echo $email_id;
    // echo $org_id;

    // $query = "SELECT * FROM email WHERE id = ?";
    // $stmt = $db->prepare($query);
    // $stmt->execute([$email_id]);
    // $result = $stmt->fetch(PDO::FETCH_ASSOC);
    // echo $result['id'];

    // $query = "SELECT * FROM organisation WHERE id = ?";
    // $stmt = $db->prepare($query);
    // $stmt->execute([$org_id]);
    // $result = $stmt->fetch(PDO::FETCH_ASSOC);
    // echo $result['id'];

    // Insert the inquiry
    $query = "INSERT INTO inquiry (first_name, last_name, body, email_id, organisation_id) VALUES (?, ?, ?, ?, ?)";
    $stmt = $db->prepare($query);
    $stmt->execute([$first_name, $last_name, $inquiry, $email_id, $org_id]);
    $inquiry_id = $db->lastInsertId();

    // Insert the email-organisation relation
    $query = "INSERT INTO email_organisation (email_id, organisation_id) VALUES (?, ?)";
    $stmt = $db->prepare($query);
    $stmt->execute([$email_id, $org_id]);
}
?>
<?php require("commonHead.php") ?>

<title>Testmark: Inquiry Sent</title>
</head>

<?php require("commonNav.php") ?>

<div class="container">
    <div class="row">
        <div class="col-12" id="c17">
            <h1>Inquiry Sent</h1>
            <p> Thank you for your intrest; we will send you an email as soon as possible.</p>
        </div>
    </div>
</div>

    </body>

    </html>