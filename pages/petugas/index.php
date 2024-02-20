<?php
require('../layout/header.php');
require('class.php');
$petugas = new petugas();
?>

<div id="content">
    <h1>DASHBOARD KASIR</h1>
    <div class="row g-3">
        
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Data Penjualan
                        <h3> <?= $petugas->JumlahPenjualan() ?> </h3>
                        <a href="<?= $route->getBaseURL() ?>/pages/penjualan" class="btn btn-outline-primary btn-sm">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Data Pelanggan
                        <h3> <?= $petugas->JumlahPelanggan() ?> </h3>
                        <a href="<?= $route->getBaseURL() ?>/pages/pelanggan" class="btn btn-outline-primary btn-sm">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <div class="row g-1">
                        Total Penjualan (Hari ini)
                        <h3> <?= $petugas->JumlahTotalPenjualanHariIni() ?> </h3>
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