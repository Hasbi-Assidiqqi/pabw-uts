<?php
require 'crud.php';

$id = $_GET["id"];
$koneksi = koneksiUts();
$sql = "SELECT * FROM about_me WHERE id=". $id;

$data = mysqli_query($koneksi,$sql);

if(isset($_POST["ubah"])){
    if(updateAboutMe($_POST) > 0){
        echo"<script>
        alert('data berhasil di ubah !');
        document.location.href='about-me.php';
        </script>";
    }
    else{
        echo "<script>
        alert('data gagal di ubah ');
        document.location.href='about-me.php';
        </script>";
        echo mysqli_error($koneksi);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin WEB</title>

    <?php require_once 'link.php'; ?>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <?php include 'header.php'; ?>

        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="images/profile.png" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Hasbi Assidiqqi</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <li class="nav-item menu-open">
                            <a href="index.php" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="jumbotron-home.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Sambutan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="item-home.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Item Home</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="slider-home.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Image Slider</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="slider-desc.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Deskripsi Slider</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-history"></i>
                                <p>
                                    Profile
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="jumbotron.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Sambutan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="about-me.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Tentang Saya</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="my-services.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Jasa Saya</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fa fa-file-image-o"></i>
                                <p>
                                    Gallery
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="galery.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Galeri</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="category-galery.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kategori Galeri</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="news.php" class="nav-link">
                                <i class="nav-icon fas fa-newspaper-o"></i>
                                <p>
                                    News
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="news.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Berita</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="category-news.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kategori Berita</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="contact.php" class="nav-link">
                                <i class="nav-icon fas fa-address-book"></i>
                                <p>
                                    Contact
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="information.php" class="nav-link">
                                <i class="nav-icon fas fa fa-info-circle"></i>
                                <p>
                                    Informasi
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="user.php" class="nav-link">
                                <i class="nav-icon fas fa-user"></i>
                                <p>
                                    User
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="faq.php" class="nav-link">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Faq
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Ubah Tentang Saya</h1>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Form Elements -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form role="form" method="POST" action="" enctype="multipart/form-data">
                                                <?php
                                            while($sql = mysqli_fetch_array($data)) {
                                            ?>
                                                <input type="hidden" name="id" value="<?=$sql["id"];?>" />
                                                <div class="form-group">
                                                    <label>Gambar</label>
                                                    <br>
                                                    <img src="images/<?= $sql["gambar"];?>" style="width: 20%;" alt="">
                                                    <br>
                                                    <input style="margin-top: 12px;" class="no-outline" type="file"
                                                        name="gambar" id="gambar" value="<?=$sql["gambar"];?>"
                                                        required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Nama Tombol</label>
                                                    <input class="form-control" name="name_button" id="name_button"
                                                        value="<?=$sql["name_button"];?>" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Link Tombol</label>
                                                    <input class="form-control" name="link_button" id="link_button"
                                                        value="<?=$sql["link_button"];?>" required />
                                                </div>
                                                <div class="form-group">
                                                    <label>Deskripsi</label>
                                                    <textarea class="ckeditor" name="deskripsi" id="deskripsi" cols="30"
                                                        rows="10" value="<?=$sql["deskripsi"];?>" required></textarea>
                                                </div>
                                                <div>
                                                    <input class="btn btn-primary" type="submit" name="ubah"
                                                        Value="Ubah" onclick="return confirm('yakin data diubah');"
                                                        class="btn btn-primary">
                                                </div>
                                                <?php
                                                }
                                                ?>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <?php include 'footer.php'; ?>

    </div>

    <?php require_once 'script.php'; ?>
</body>

</html>