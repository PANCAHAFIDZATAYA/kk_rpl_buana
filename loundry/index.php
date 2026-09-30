<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistem Informasi Laundry</title>

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>

    <style>
        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* NAVBAR */
        .navbar-custom {
            position: absolute;
            width: 100%;
            top: 0;
            z-index: 1000;

            background: rgba(0, 0, 0, 0.35);
            border: none;
            border-radius: 0;
            padding: 10px 0;
        }

        .navbar-custom .navbar-brand {
            color: white;
            font-size: 23px;
            font-weight: bold;
        }

        .navbar-custom .navbar-nav > li > a {
            color: white;
            font-size: 15px;
        }

        .navbar-custom .navbar-nav > li > a:hover {
            color: #00d9ff;
            background: transparent;
        }

        /* TOMBOL LOGIN */
        .login-button {
            background: #00bcd4 !important;
            border-radius: 25px;
            padding: 10px 20px !important;
            margin-top: 5px;
        }

        .login-button:hover {
            background: #0097a7 !important;
            color: white !important;
        }

        /* LANDING PAGE */
        .hero {
            height: 100vh;

            background:
                linear-gradient(
                    rgba(0, 0, 0, 0.5),
                    rgba(0, 0, 0, 0.5)
                ),
                url("toko_laundry_kece.jpg");

            background-size: cover;
            background-position: center;

            display: flex;
            justify-content: center;
            align-items: center;

            text-align: center;
            color: white;
        }

        .hero-content {
            max-width: 750px;
            padding: 20px;
        }

        .hero-content h1 {
            font-size: 55px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .hero-content p {
            font-size: 19px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .btn-laundry {
            display: inline-block;

            background: #00bcd4;
            color: white;

            padding: 14px 30px;

            border-radius: 30px;

            text-decoration: none;
            font-weight: bold;
        }

        .btn-laundry:hover {
            background: #0097a7;
            color: white;
            text-decoration: none;
        }

        /* LAYANAN */
        .layanan {
            padding: 80px 8%;
            text-align: center;
            background: #f7f7f7;
        }

        .layanan h2 {
            font-size: 35px;
            margin-bottom: 40px;
        }

        .card-layanan {
            padding: 30px;
            background: white;

            border-radius: 10px;

            box-shadow: 0 5px 20px rgba(0,0,0,0.1);

            margin-bottom: 20px;
        }

        .card-layanan h3 {
            color: #00a6bd;
        }

        .card-layanan p {
            color: #666;
            line-height: 1.6;
        }

        /* TENTANG */
        .tentang {
            padding: 80px 10%;
            text-align: center;
        }

        .tentang h2 {
            font-size: 35px;
            margin-bottom: 20px;
        }

        .tentang p {
            max-width: 700px;
            margin: auto;
            line-height: 1.8;
            color: #666;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {

            .hero-content h1 {
                font-size: 38px;
            }

            .hero-content p {
                font-size: 16px;
            }

        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-custom">

    <div class="container-fluid">

        <div class="navbar-header">

            <button type="button"
                    class="navbar-toggle collapsed"
                    data-toggle="collapse"
                    data-target="#menuLaundry">

                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>

            <a class="navbar-brand" href="index.php">
                LAUNDRY
            </a>

        </div>


        <div class="collapse navbar-collapse" id="menuLaundry">

            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="index.php">Beranda</a>
                </li>

                <li>
                    <a href="#layanan">Layanan</a>
                </li>

                <li>
                    <a href="#tentang">Tentang Kami</a>
                </li>

                <li>
                    <a href="#kontak">Kontak</a>
                </li>

                <li>
                    <a href="masuk.php" class="login-button">
                        Login
                    </a>
                </li>

            </ul>

        </div>

    </div>

</nav>


<!-- LANDING PAGE -->
<section class="hero">

    <div class="hero-content">

        <h1>
            Laundry JosJis A1
            Bersih & Wangi
        </h1>

        <p>
            Solusi laundry cepat, bersih, dan terpercaya.
            Kami membantu membuat pakaian Anda tetap bersih,
            wangi, dan rapi.
        </p>

        <a href="#layanan" class="btn-laundry">
            Lihat Layanan
        </a>

    </div>

</section>


<!-- LAYANAN -->
<section class="layanan" id="layanan">

    <h2>Layanan Kami</h2>

    <div class="container">

        <div class="row">

            <div class="col-md-4">

                <div class="card-layanan">

                    <h3>Cuci Kiloan</h3>

                    <p>
                        Layanan pencucian pakaian berdasarkan
                        berat dengan hasil bersih dan wangi.
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="card-layanan">

                    <h3>Cuci Satuan</h3>

                    <p>
                        Cocok untuk jaket, selimut, sepatu,
                        dan berbagai pakaian khusus.
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="card-layanan">

                    <h3>Setrika</h3>

                    <p>
                        Pakaian disetrika dengan rapi sehingga
                        siap digunakan kembali.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- TENTANG -->
<section class="tentang" id="tentang">

    <h2>Tentang Kami</h2>

    <p>
        Kami menyediakan layanan laundry yang praktis,
        bersih, wangi, dan terpercaya. Dengan pelayanan
        yang baik, kami berusaha memberikan hasil terbaik
        untuk setiap pelanggan.
    </p>

</section>

</body>
</html>