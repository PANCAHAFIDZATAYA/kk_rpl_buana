<!DOCTYPE html>
<html>
<head>

    <title>Login - Sistem Informasi Laundry</title>

    <link rel="stylesheet"
          type="text/css"
          href="assets/css/bootstrap.css">

    <script type="text/javascript"
            src="assets/js/jquery.js"></script>

    <script type="text/javascript"
            src="assets/js/bootstrap.js"></script>

    <style>

        body {
            background: #5e75c3;
        }

        .login-box {
            margin-top: 80px;
        }

        .judul {
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }

    </style>

</head>

<body>

<div class="container">

    <div class="col-md-4 col-md-offset-4 login-box">

        <h2 class="judul">
            LOGIN LAUNDRY
        </h2>


        <?php

        if (isset($_GET['pesan'])) {

            if ($_GET['pesan'] == 'gagal') {

                echo "
                <div class='alert alert-danger'>
                    Login gagal! Username atau password salah.
                </div>
                ";

            } elseif ($_GET['pesan'] == 'logout') {

                echo "
                <div class='alert alert-info'>
                    Anda telah berhasil Logout!
                </div>
                ";

            } elseif ($_GET['pesan'] == 'belum_login') {

                echo "
                <div class='alert alert-danger'>
                    Anda harus login untuk mengakses halaman admin!
                </div>
                ";

            }

        }

        ?>


        <form action="login.php" method="post">

            <div class="panel">

                <div class="panel-body">

                    <div class="form-group">

                        <label>Username</label>

                        <input type="text"
                               name="username"
                               class="form-control"
                               required>

                    </div>


                    <div class="form-group">

                        <label>Password</label>

                        <input type="password"
                               name="password"
                               class="form-control"
                               required>

                    </div>


                    <input type="submit"
                           class="btn btn-primary btn-block"
                           value="Login">

                    <br>

                    <a href="index.php"
                       class="btn btn-default btn-block">
                        Kembali ke Beranda
                    </a>

                </div>

            </div>

        </form>

    </div>

</div>

</body>
</html>