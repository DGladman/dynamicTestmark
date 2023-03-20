<?php
include_once("connection.php");
include("commonHead.php");
?>
<title>Testmark: About Us</title>
</head>
<?php include("commonNav.php") ?>

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

        <div class="col-12" id="c12">
            <h1 id="About">About Testmark</h1>

        </div>

    </div>

    <div class="row">
        <div class="col-md-10 col-sm-8 col-xs-12" id="c13">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates laudantium rerum neque sequi nam
                numquam optio minima iusto ratione pariatur fugiat facere ad labore quo, exercitationem vel
                repudiandae iste, praesentium corrupti magnam! Quisquam, veritatis necessitatibus. Fugiat ipsum
                quisquam sed consequuntur illum quam distinctio doloribus repellat in earum accusantium maxime
                accusamus, quod sequi fuga labore quos? Aperiam deserunt hic consequuntur voluptatem.</p>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rem exercitationem ea doloremque tempora,
                veritatis nemo sit iusto sed et impedit voluptatem iste laborum cum ullam atque! Odit iusto
                aspernatur omnis, inventore necessitatibus placeat eligendi minus accusamus illo voluptatum aut iure
                tenetur excepturi tempore laudantium dolor, quas mollitia. Minima, sequi quo. Soluta est hic aperiam
                ipsam labore eum assumenda error. Perspiciatis natus eum temporibus culpa. Perferendis consequuntur
                cum ea libero iste?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto nisi molestiae necessitatibus
                voluptas earum, consectetur ratione laudantium, maiores fuga rerum, quod modi animi fugit. Quibusdam
                culpa facilis voluptatem repellendus excepturi ipsam, doloremque natus cupiditate tempore autem, ex
                molestias nesciunt temporibus tenetur quidem illum odit provident hic sed, architecto voluptate
                ratione!</p>

            <address>
                Testmark Ltd <br>
                Cloth Walk <br>
                Littlehampton <br>
                West Sussex. <br>
                BN17 5QD
            </address>

            <p>Company Registration Number: 034630</p>
            <p>VAT Registration Number: 935 9199 03</p>
        </div>

        <div class="col-md-2 col-sm-4 col-xs-12" id="c14">

            <h2>Associates:</h2>

            <ul>
                <?php
                $querry = "SELECT * FROM associate";
                $result = $db->query($querry);
                foreach ($result as $row) {
                    echo "<li><a href='" . $row['link'] . "'>" . $row['name'] . "</a></li>";
                }
                ?>
            </ul>

        </div>

    </div>

</div>

</body>

</html>