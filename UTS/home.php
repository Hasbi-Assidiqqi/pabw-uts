<?php
require_once 'koneksi_uts.php';

session_start();
if (!isset($_SESSION['email'])){
header("Location: index.php");
}
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- AOS CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com//releases/v5.6.3/css/all.css">

    <!-- My fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Viga&display=swap" rel="stylesheet">

    <!-- My CSSS -->
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- My FavIcon -->
    <link rel="shortcut icon" href="images/ic_accusoft.ico">

    <title>Hasbi Assidiqqi</title>
</head>

<body>
    <?php
    require 'header.php';
    ?>

    <!-- Jumbotron -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container ">
            <?php
            $i = 1;
            $koneksi = koneksiUts();
            $jumbotron_home = mysqli_query($koneksi, "SELECT * FROM jumbotron_home ORDER BY id DESC ");
            while ($row = mysqli_fetch_array($jumbotron_home)) {
            ?>
            <h1 class="display-4"><?= $row['welcome'];?></h1>
            <?php
            $i++;
            } ?>
        </div>
    </div>
    <!-- Akhir Jumbotron -->

    <!-- Container -->
    <div class="container">
        <!-- Info panel -->
        <div class="row justify-content-center" data-aos="zoom-in">
            <div class="col-10 info-panel">
                <div class="row">
                    <?php
                    $i = 1;
                    $koneksi = koneksiUts();
                    $item_home = mysqli_query($koneksi, "SELECT * FROM item_home ORDER BY id DESC ");
                    while ($row = mysqli_fetch_array($item_home)) {
                    ?>
                    <div class="col-lg panel-hover">
                        <a href="<?= $row['link'];?>">
                            <img src="admin/images/<?= $row['gambar'];?>" alt="employee" class="float-left">
                            <h4><?= $row['judul'];?></h4>
                            <p><?= $row['deskripsi'];?></p>
                        </a>
                    </div>
                    <?php
                    $i++;
                    } ?>
                </div>
            </div>
        </div>
        <!-- Akhir Info panel -->

        <!--    Workingspace -->
        <div class="row workingspace">
            <div id="carouselExampleInterval" class="carousel slide col-lg-6" data-aos="fade-right"
                data-aos-offset="300" data-aos-easing="ease-in-sine" data-ride="carousel">
                <div class="carousel-inner">
                    <?php
                    $i = 0;
                    $koneksi = koneksiUts();
                    $slider_home = mysqli_query($koneksi, "SELECT * FROM slider_home ORDER BY id DESC");
                    while ($row = mysqli_fetch_array($slider_home)) {
                    ?>
                    <div class="carousel-item <?php if ($i == 0){echo 'active';}else{echo 'notactive';}?>"
                        data-interval="4000">
                        <img src="admin/images/<?= $row['gambar'];?>" class="img-fluid" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <p><?= $row['deskripsi'];?></p>
                        </div>
                    </div>
                    <?php
                    $i++;
                    } ?>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <?php
            $i = 1;
            $koneksi = koneksiUts();
            $slider_desc = mysqli_query($koneksi, "SELECT * FROM slider_desc ORDER BY id DESC ");
            while ($row = mysqli_fetch_array($slider_desc)) {
            ?>
            <div class="col-lg-5" data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
                <h3><?= $row['judul'];?></h3>
                <p><?= $row['deskripsi'];?></p>
                <!-- <a href="" class="btn btn-primary button">Gallery</a> -->
            </div>
            <?php
            $i++;
            } ?>
        </div>
        <!-- Akhir Workingspace -->
    </div>
    <!-- Akhir Container -->

    <br><br>

    <?php
    require 'footer.php';
    ?>

    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
    <!-- My javascript) -->
    <script src="js/script.js"></script>
    <!-- AOS Javascript -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</body>

</html>