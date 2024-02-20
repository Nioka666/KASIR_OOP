<?php
require('../layout/header.php');
require('class.php');
$admin = new admin();
?>

<div id="content">
    <h1>DASHBOARD ADMIN</h1>
    <div class="row g-3">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Data Petugas
                        <h3> <?= $admin->JumlahPengguna() ?> </h3>
                        <a href="<?= $route->getBaseURL() ?>/pages/pengguna" class="btn btn-outline-primary btn-sm">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Data Produk
                        <h3> <?= $admin->JumlahProduk() ?> </h3>
                        <a href="<?= $route->getBaseURL() ?>/pages/produk" class="btn btn-outline-primary btn-sm">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Total Penjualan (Hari ini)
                        <h3> <?= $admin->JumlahTotalPenjualanHariIni() ?> </h3>
                        <a href="<?= $route->getBaseURL() ?>/pages/laporan" class="btn btn-outline-primary btn-sm">Selengkapnya</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<?php
require('../layout/footer.php');
?>