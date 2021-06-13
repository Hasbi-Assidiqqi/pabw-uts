<?php
require 'crud-user.php';

if(isset($_POST["create"])){
    if(createUser($_POST) > 0){
        echo"<script>
        alert('Akun berhasil dibuat!');
        document.location.href='index.php';
        </script>";
    }
    else{
        echo "<script>
        alert('akun gagal dibuat!');
        document.location.href='index.php';
        </script>";
        echo mysqli_error($koneksi);
    }
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/login-register.css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
</head>

<body>
    <div class="cont">

        <?php
        if(array_key_exists('error', $_GET)){
          echo"<script>
          alert('Username atau password salah!');
          document.location.href='index.php';
          </script>";
        }
        ?>
        <div class="form sign-in">
            <h2>Sign In</h2>

            <form method="post" action="proses-login-user.php">
                <label>
                    <span>Email Address</span>
                    <input type="email" name="email">
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password">
                </label>
                <button class="submit" type="submit">Sign In</button>
            </form>
            <p class="forgot-pass">Forgot Password ?</p>

            <div class="social-media">
                <ul>
                    <li><img src="images/facebook.png"></li>
                    <li><img src="images/twitter.png"></li>
                    <li><img src="images/linkedin.png"></li>
                    <li><img src="images/instagram.png"></li>
                </ul>
            </div>
        </div>

        <div class="sub-cont">
            <div class="img">
                <div class="img-text m-up">
                    <h2 class="">New here?</h2>
                    <p class="">Sign up and discover great amount of new opportunities!</p>
                </div>
                <div class="img-text m-in">
                    <h2>One of us?</h2>
                    <p>If you already has an account, just sign in. We've missed you!</p>
                </div>
                <div class="img-btn">
                    <span class="m-up">Sign Up</span>
                    <span class="m-in">Sign In</span>
                </div>
            </div>

            <form role="form" method="POST" enctype="multipart/form-data">
                <div class="form sign-up">
                    <h2>Sign Up</h2>
                    <label>
                        <span>Userame</span>
                        <input type="text" name="username">
                    </label>
                    <label>
                        <span>Email</span>
                        <input type="email" name="email">
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" name="password">
                    </label>
                    <label>
                        <span>Confirm Password</span>
                        <input type="password">
                    </label>
                    <button type="submit" name="create" class="submit">Sign Up Now</button>
                </div>
            </form>
        </div>

    </div>
    <script type="text/javascript" src="js/login-register.js"></script>
</body>

</html>