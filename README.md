<p align="center">
    <img src="https://github.com/kelompok2ukksmkn1kadipaten2024/kelompok2.github.io/blob/main/public/img/member.png" width="120">
</p>

## Tentang Aplikasi

Aplikasi Kasir Toko Smart ini dikembangkan untuk memudahkan pengelolaan transaksi penjualan dan manajemen stok barang di SMKN 1 Kadipaten. Aplikasi ini menyediakan fitur-fitur penting seperti pencatatan transaksi, pelacakan stok barang secara otomatis, serta manajemen profil pengguna (kasir) yang terintegrasi. Dengan aplikasi ini, diharapkan proses administrasi koperasi dapat berjalan lebih efisien dan akurat.

### Beberapa Fitur yang tersedia:

-   Manajemen Kategori Produk
-   Manajemen Produk
    -   Multiple Delete
    -   Cetak Barcode
-   Manajemen Member atau Anggota
    -   Cetak Kartu Member
-   Manajemen Supplier
-   Transaksi Pengeluaran
-   Transaksi Pembelian
-   Transaksi Penjualan
-   Laporan Pendapatan atau Laba & Rugi
    -   Bulanan
    -   Harian
    -   Custom Tanggal
-   Custom Tipe Nota
    -   Nota Besar
    -   Nota Kecil / Thermal Nota
-   Manajemen User dan Profil
-   Pengaturan Toko
    -   Identitas
    -   Upload Desain Kartu Member
    -   Setting Diskon Member
-   User (Administrator, Kasir)
-   Grafik ChartJS pada Dashboard

## Instalasi

#### Via Git

```bash
git clone https://github.com/sandinur157/tuturial-membuat-aplikasi-point-of-sales.git
```

### Download ZIP

[Link](https://github.com/sandinur157/tuturial-membuat-aplikasi-point-of-sales/archive/refs/heads/main.zip)

### Setup Aplikasi

Jalankan perintah

```bash
composer update
```

atau:

```bash
composer install
```

Copy file .env dari .env.example

```bash
cp .env.example .env
```

Konfigurasi file .env

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=example_app
DB_USERNAME=root
DB_PASSWORD=
```

Opsional

```bash
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:QGRW4K7UVzS2M5HE2ZCLlUuiCtOIzRSfb38iWApkphE=
APP_DEBUG=true
APP_URL=http://example-app.test
```

Generate key

```bash
php artisan key:generate
```

Migrate database

```bash
php artisan migrate
```

Seeder table User, Pengaturan

```bash
php artisan db:seed
```

Menjalankan aplikasi

```bash
php artisan serve
```

## License

[MIT license](https://opensource.org/licenses/MIT)
