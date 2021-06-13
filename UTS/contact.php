<?php
require_once "koneksi_uts.php";

$koneksi = koneksiUts();

if(isset($_POST["create"])){
    if(createFaq($_POST) > 0){
        echo"<scrript>
        alert('Pesan berhasil dikirim!');
        document.location.href='contact.php';
        </scrript>";
    }
    else{
        echo "<script>
        alert('Pesan gagal dikirim!');
        document.location.href='/contact.php';
        </script>";
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

    <title>Contact</title>
</head>

<body>
    <?php
    require 'header.php';
    ?>

    <!-- Page Content -->
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <div class="title">
                <h3>KONTAK KAMI</h3>
                <hr>
            </div>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.php">Home</a>
                </li>
                <li class="breadcrumb-item active">Kontak</li>
            </ol>

            <section class="contact-2">
                <div class="heading black">
                    <h2>Contact Me</h2>
                </div>
                <div class="content-2">
                    <div class="col-lg-5 formBx-2">
                        <form role="form" method="POST" action="" enctype="multipart/form-data">
                            <h3>Messege Me</h3>
                            <input type="text" name="full_name" id="full_name" placeholder="Full Name">
                            <input type="email" name="email" id="email" placeholder="Email">
                            <textarea placeholder="Your Message" name="message" id="message" cols="30"
                                rows="10"></textarea>
                            <input type="submit" name="create" id="create" value="send"
                                onclick="return confirm('Pastikan pesan tidak mengandung unsur sara!');">
                        </form>
                    </div>
                </div>
            </section>
        </div>

        <!-- Widgets Column -->
        <div class="col-md-4">
            <!-- Berita Widget -->
            <div class="card my-4">
                <h5 class="card-header" style="margin-top: 44px;"><img src="images/ic_berita.png" width="24px"
                        height="24px" alt=""> Kontak info</h5>
                <div class="card-body">
                    <div class="contactInfoBox" style="color: black;">
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
            </div>
            <!-- Agenda Widget -->
            <div class="card my-4">
                <h5 class="card-header"><img src="images/ic_agenda.png" width="24px" height="24px" alt=""> Berita
                    Populer</h5>
                <div class="card-body">
                    <ul>
                        <?php
                            $i = 1;
                            $koneksi = koneksiUts();
                            $news = mysqli_query($koneksi, "SELECT * FROM news ORDER BY id LIMIT 5 ");
                            while ($row = mysqli_fetch_array($news)) {
                            ?>
                        <li>
                            <a href="detail-news.php?id=<?=$row['id']?>">
                                <img src="admin/images/<?= $row['gambar'];?>">
                                <h2 class="content-news-first"><?= $row['judul'];?></h2>
                                <small><i class="fa fa-clock-o"></i> <?= $row['tanggal'];?></small>
                            </a>
                        </li>
                        <?php
                            $i++;
                            } ?>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <!-- /.row -->

    <!-- Information Widget -->
    <div class="card my-4">
        <h5 class="card-header">INFORMASI</h5>
        <div class="card-body-information">
            <div class=" row">
                <?php
                $i = 1;
                $koneksi = koneksiUts();
                $news = mysqli_query($koneksi, "SELECT * FROM information ORDER BY id ASC ");
                while ($row = mysqli_fetch_array($news)) {
                ?>
                <div class="col-lg-4">
                    <ul class="list-unstyled mb-0">

                        <li>
                            <a href="<?= $row['LINK'];?>" target="<?= $row['target'];?>"><?= $row['judul'];?></a>
                        </li>

                    </ul>
                </div>
                <?php
                $i++;
                } ?>
            </div>
        </div>
    </div>
    <!-- Akhir Information Widget -->

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