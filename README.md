# 🍔 Jajan Yuk - Food Ordering App

Aplikasi mobile berbasis Flutter yang dirancang untuk menampilkan daftar menu makanan, melihat detail produk, serta melakukan simulasi pemesanan. Aplikasi ini dibuat untuk mendemonstrasikan konsep dasar pengembangan mobile seperti navigasi, pengelolaan state, dan pengolahan input pengguna.

Struktur proyek sudah dipisah ke beberapa bagian seperti halaman (pages), model data, dan assets sehingga mudah dikembangkan lebih lanjut.

## Fitur yang Direncanakan

- **Authentication (Login Page)** (`ui/login_page.dart`)  
  Login menggunakan username dan password sederhana tanpa backend sebagai simulasi autentikasi pengguna.

- **Home Page (Menu Utama)** (`ui/home_page.dart`)  
  Menampilkan daftar makanan dalam bentuk grid/list serta banner di bagian atas.

- **Detail Product** (`ui/order_page.dart`)  
  Menampilkan detail makanan seperti gambar, nama, harga, dan deskripsi.

- **Order / Pemesanan** (`ui/order_page.dart`)  
  Input jumlah pesanan dan perhitungan total harga secara otomatis. 

- **Favorite Feature** (`ui/order_page.dart`)  
  Fitur like/unlike produk menggunakan icon favorit.

- **Logout System** (`home_page.dart`)  
  Tombol logout dengan konfirmasi untuk kembali ke halaman login.

---

### Arsitektur & Alur Aplikasi

1. `main.dart` bertindak sebagai entry point aplikasi dan mengatur halaman awal.
2. Halaman login digunakan untuk validasi user sebelum masuk ke aplikasi utama.
3. `home_page.dart` menampilkan daftar produk dari model `Product`. 
4. Saat item dipilih, data dikirim ke `order_page.dart` dan user dapat melihat total harga.
5. Data seperti nama, harga, dan deskripsi diambil dari `models/product.dart`.

Skema sederhana:

```
Started Page
     │
     ▼
Login Page
     │
     ▼
Home Page
     │
     ├──► Order Page
     │         
     │
     └──► Logout → Login Page
```

---

## Tumpukan Teknologi

| Kebutuhan     | Library/Alat |
|---------------|-------------|
| Framework     | Flutter     |
| Bahasa        | Dart        |
| UI Design     | Material Design |
| Font          | Google Fonts |
| Navigasi      | Navigator   |
| State         | StatefulWidget |

---

## Checklist Kemajuan Fitur

| Modul        | Status | Catatan singkat                        |
|--------------|:------:|--------------------------------------|
| Started Page |   ☑    | Halaman awal aplikasi                |
| Login Page   |   ☑    | Input username & password           |
| Home Page    |   ☑    | Menampilkan daftar makanan          |
| Order Page   |   ☑    | Hitung total harga                  |
| Favorite     |   ☑    | Toggle like/unlike                  |
| Logout       |   ☑    | Kembali ke halaman login            |

---

## Struktur Proyek

```
jajan_yuk_app/
├── lib/
│   ├── main.dart
│   ├── models/
│   │   └── product.dart
│   ├── ui/
│   │   ├── started_page.dart
│   │   ├── login_page.dart
│   │   ├── home_page.dart
│   │   ├── order_page.dart 
│
├── assets/
│   └── images/
│       ├── logo.png
│       ├── human.png
│       ├── veggie.png
│       ├── nasigoreng.png
│       ├── nasilemak.png
│       └── ayamgoreng.png
│       └── food.svg
│       └── food.png
│
└── pubspec.yaml
```

---

## Menjalankan Aplikasi

1. **Install dependency**
   ```bash
   flutter pub get
   ```

2. **Jalankan aplikasi**
   ```bash
   flutter run
   ```

3. **Jika terjadi error asset**
   ```bash
   flutter clean
   flutter pub get
   flutter run
   ```

---

## Saran Implementasi

- Gunakan `StatefulWidget` untuk fitur interaktif seperti favorite dan input jumlah.
- Gunakan `setState()` untuk memperbarui tampilan secara real-time.
- Gunakan `Navigator.push()` untuk berpindah halaman.
- Gunakan `assets/images/` untuk menyimpan gambar lokal.
- Pastikan semua asset sudah terdaftar di `pubspec.yaml`.

---

## Langkah Pengujian

- Jalankan aplikasi dan pastikan semua halaman dapat diakses tanpa error.
- Coba login dengan berbagai input.
- Pastikan navigasi antar halaman berjalan dengan baik.
- Uji perhitungan total harga pada halaman order.
- Pastikan semua gambar asset muncul dengan benar.

---

## Konvensi Penamaan & Struktur Kode

- Gunakan `snake_case` untuk nama file.
- Gunakan `PascalCase` untuk class.
- Pisahkan logic dan UI agar mudah dibaca.
- Simpan model data di folder `models/`.
- Simpan halaman di folder `ui/`.

---

## Ide Pengembangan Lanjutan

- Tambahkan fitur **Cart (keranjang)**
- Tambahkan **Checkout & pembayaran**
- Integrasi dengan **API backend**
- Tambahkan fitur **search & filter**
- Tambahkan **rating & review**
- Tambahkan animasi seperti **Hero & Fade**

---

README ini dapat dikembangkan lebih lanjut sesuai kebutuhan fitur aplikasi. Selamat mengembangkan aplikasi Flutter! 🚀