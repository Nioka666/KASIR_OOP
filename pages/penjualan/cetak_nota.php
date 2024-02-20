    <?php
    require('../layout/header.php');
    require('class.php');
    require('../../function/connection.php');
    $penjualan = new Penjualan();

    // Ambil data detail penjualan
    $data_detail = $penjualan->show($_GET['id']);
    // var_dump($data_detail, $penjualan);

    ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cetak Nota</title>
        <style>
            /* CSS untuk styling nota bisa ditambahkan di sini */
            /* Hide tombol cetak saat mencetak */
            /* Tampilkan hanya tabel saat mencetak */
            @media print {

                /* Sembunyikan tombol cetak saat mencetak */
                .btn-print {
                    display: none !important;
                }

                .btn-logout {
                    display: hidden;
                }

                .btn-beranda {
                    display: hidden;
                }

                .btn-penjualan {
                    display: hidden;
                }

                .btn-pelanggan {
                    display: hidden;
                }

                .btn-produk {
                    display: hidden;
                }

                .btn-laporan {
                    display: hidden;
                }
            }




            table {
                border-collapse: collapse;
                width: 100%;
            }

            th,
            td {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>

    <body>
    <div class="title-top" style="display:flex; justify-content: space-between;">
                <h1>Nota Transaksi</h1>
                <button type="submit" class="btn btn-danger"  onclick="handlePrintClick()">Print</button>
            </div>
        <div id="table">
            

            <table>
                <tr>
                    <th>ID Transaksi</th>
                    <td>KSR-<?= $data_detail['id'] ?></td>
                </tr>
                <tr>
                    <th>Tanggal</th>
                    <td><?= $data_detail['tanggal'] ?></td>
                </tr>
                <tr>
                    <th>Nama Pelanggan</th>
                    <td><?= $data_detail['nama_pelanggan'] ?></td>
                </tr>
                <tr>
                    <th>Alamat</th>
                    <td><?= $data_detail['alamat_pelanggan'] ?></td>
                </tr>
                <tr>
                    <th>No Telp</th>
                    <td><?= $data_detail['no_telp_pelanggan'] ?></td>
                </tr>
                <tr>
                    <th>Total Harga</th>
                    <td>Rp. <?= $data_detail['total_harga'] ?></td>
                </tr>
                <th>Pembayaran</th>
                <td>Rp. <?= $data_detail['bayar'] ?></td>
                </tr>
                <tr>
                    <th>Kembalian</th>
                    <td>Rp. <?= $data_detail['kembalian'] ?></td>
                </tr>


            </table>
        </div>
        <script>
            function handlePrintClick() {
                // window.print();
                var printContents = document.getElementById('table').innerHTML;
                var originalContents = document.body.innerHTML;
                document.body.innerHTML = printContents;
                window.print();
                document.body.innerHTML = originalContents;
            }
        </script>
    </body>

    </html>

    <?php
    require('../layout/footer.php');
    ?>