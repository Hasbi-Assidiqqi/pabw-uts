<?php
require_once "koneksi_uts.php";

$koneksi = koneksiUts();
if(isset($_POST["create"])){
    if(!createFaq($_POST) > 0){
         echo mysqli_error($koneksi);
    }
}

session_start();
if (!isset($_SESSION['email'])){
header("Location: index.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- AOS CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://use.fontawesome.com//releases/v5.6.3/css/all.css">

    <!-- FontawesomCDN CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <!-- My fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Viga&display=swap" rel="stylesheet">

    <!-- My CSSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- My FavIcon -->
    <link rel="shortcut icon" href="images/ic_accusoft.ico">

    <title>My Profile</title>
</head>

<body>
    <?php
    require 'header-profile.php';
    ?>

    <!-- Info Banner -->
    <section class="banner">
        <div class="textBx">
            <?php
            $koneksi = koneksiUts();
            $about_me = mysqli_query($koneksi, "SELECT * FROM jumbotron");
            $row = mysqli_fetch_array($about_me)
            ?>
            <h2 style="color: white;"><?= $row['deskripsi'];?></h2>
            <a href='<?= $row['link_button'];?> ' class='btn'><?= $row['name_button'];?> </a>
        </div>
    </section>
    <!-- Akkhir Info Banner -->

    <!-- Container -->
    <div id="about-me" class="container">
        <!-- About Me -->
        <h2>About Me</h2>
        <div class="row workingspace">
            <div class="col-lg-6" data-aos="fade-right" data-aos-offset="300" data-aos-easing="ease-in-sine">
                <?php
                $koneksi = koneksiUts();
                $about_me = mysqli_query($koneksi, "SELECT * FROM about_me ORDER BY id ASC");
                $row = mysqli_fetch_array($about_me)
                ?>

                <?= $row['deskripsi'];?>
                <a href='<?= $row['link_button'];?>' class='btn btn-primary button'><?= $row['name_button'];?></a>
            </div>
            <div class="col-lg-6" data-aos="fade-left" data-aos-offset="300" data-aos-easing="ease-in-sine">
                <img src="admin/images/<?= $row['gambar'];?>" class="img-fluid" alt="...">
            </div>
        </div>
        <!-- Akhir About Me -->
    </div>
    <!-- Akhir Container -->


    <!-- Services -->
    <section class="services" id="services">
        <div class="heading white">
            <h2>My Services</h2>
            <p>Jadikan diri anda seperti Bos dengan menggunakan jasa kami</p>
        </div>
        <div class="content">
            <?php
            $i = 1;
            $koneksi = koneksiUts();
            $my_services = mysqli_query($koneksi, "SELECT * FROM my_services ORDER BY id ASC");
            while ($row = mysqli_fetch_array($my_services)) {
            ?>
            <div class="servicesBx">
                <img src="admin/images/<?= $row['gambar'];?>" alt="">
                <h2><?= $row['nama'];?></h2>
                <p>
                    <?= $row['deskripsi'];?>
                </p>
            </div>
            <?php
            $i++;
            } ?>
        </div>
    </section>
    <!-- Akhir Services -->

    <section class="contact" style="margin-top: 120px;">
        <div class="heading white">
            <h2>Contact Me</h2>
        </div>
        <div class="content">
            <div class="col-lg-6 contactInfo">
                <h3>Contact Info</h3>
                <div class="contactInfoBox">
                    <?php
                    $i = 0;
                    $koneksi = koneksiUts();
                    $contact = mysqli_query($koneksi, "SELECT * FROM contact ORDER BY id ASC");
                    while ($row = mysqli_fetch_array($contact)) {
                    ?>
                    <div class="box">
                        <div class="icon">
                            <i class="<?= $row['gambar'];?>"></i>
                        </div>
                        <div class="text">
                            <h3><?= $row['label'];?></h3>
                            <p><?= $row['isi'];?></p>
                        </div>
                    </div>
                    <?php
                    $i++;
                    } ?>

                </div>
            </div>
            <div class="col-lg-5 formBx">
                <form role="form" method="POST" action="" enctype="multipart/form-data">
                    <h3>Messege Me</h3>
                    <input type="text" name="full_name" id="full_name" placeholder="Full Name">
                    <input type="email" name="email" id="email" placeholder="Email">
                    <textarea placeholder="Your Message" name="message" id="message" cols="30" rows="10"></textarea>
                    <input style="color: white;" type="submit" name="create" id="create" value="send"
                        onclick="return confirm('Pastikan pesan tidak mengandung unsur sara!');">
                </form>
            </div>
        </div>
    </section>

    <br><br><br><br><br>
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