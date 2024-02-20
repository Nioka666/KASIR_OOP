<?php

class Route
{
    private $BASE_URL;
    private $APP_FOLDER;

    public function __construct()
    {
        $configContents = file_get_contents(__DIR__ . '/../config.json');
        $configData = json_decode($configContents, true);

        if ($configData !== null && isset($configData['BASE_URL'])) {
            $this->BASE_URL = $configData['BASE_URL'];
            $this->APP_FOLDER = $configData['APP_FOLDER'];
        } else {
            throw new Exception("Error reading baseURL from config.json");
        }
    }

    public function getBaseURL()
    {
        return $this->BASE_URL;
    }

    public function getAppFolder()
    {
        return $this->APP_FOLDER;
    }

    public function route()
    {
        // Mendapatkan path yang diminta oleh pengguna
        $requestUri = $_SERVER['REQUEST_URI'];

        // Menghapus base URL dan folder aplikasi dari request URI
        $basePath = $this->BASE_URL . '/' . $this->APP_FOLDER . '/';
        $cleanRequestUri = str_replace($basePath, '', $requestUri);

        // Pisahkan URI menjadi bagian-bagian dengan '/' sebagai pemisah
        $urlParts = explode('/', $cleanRequestUri);

        // Ambil bagian pertama dari URL untuk menentukan halaman yang diminta
        $page = isset($urlParts[0]) ? $urlParts[0] : '';

        // Tambahkan logika routing di sini
        switch ($page) {
            case 'dashboard':
                // Misalnya, arahkan ke file dashboard.php
                include 'index.php';
                break;
            case 'produk':
                // Misalnya, arahkan ke file produk.php
                include 'index.php';
                break;
            // Tambahkan kasus lain untuk halaman-halaman lain yang Anda miliki
            default:
                // Jika halaman tidak ditemukan, tampilkan pesan atau arahkan ke halaman 404
                echo "Halaman tidak ditemukan";
                break;
        }
    }
}
