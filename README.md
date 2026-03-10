📱 JajanYuk - Aplikasi Pemesanan Jajanan

JajanYuk adalah aplikasi mobile sederhana berbasis Flutter & Dart yang memungkinkan pengguna untuk memilih menu jajanan dan melakukan pemesanan makanan dengan perhitungan total harga secara otomatis.

Aplikasi ini dibuat sebagai bagian dari latihan praktikum Pemrograman Teknologi Mobile (TPM).

🍜 Konsep Aplikasi

JajanYuk menghadirkan konsep pemesanan jajanan kaki lima yang praktis dan mudah digunakan. Pengguna dapat melihat berbagai menu makanan, memilih jumlah pesanan, dan langsung melihat total harga yang harus dibayar.

📸 Preview Aplikasi

## 📸 Preview Aplikasi

| Login Page | Home Page | Order Page |
|------------|-----------|------------|
| ![](assets/images/login.png) | ![](assets/images/home.png) | ![](assets/images/order.png) |

🔑 Login

Gunakan akun berikut untuk masuk ke aplikasi.
Username: Alfin
Password: Alfin123
Kredensial login dapat diubah pada file: login_page.dart

🗂️ Fitur Aplikasi
🔐 Login	            Autentikasi pengguna sebelum masuk aplikasi
🏠 Home Page	        Menampilkan banner dan menu makanan
🍜 Menu Jajanan	      Menyediakan beberapa pilihan menu makanan
🛒 Order Page	        Halaman untuk memesan makanan
💰 Perhitungan Harga	Total harga dihitung otomatis sesuai jumlah pesanan
🚪 Logout	            Keluar dari aplikasi

🍽️ Menu yang Tersedia
- Bakso
- Seblak
- Sate
- Es Teh
- Nasi Goreng
- Mie Ayam
- Nasi Padang
- Soto
- Es Jeruk

🚀 Cara Menjalankan Aplikasi
Prasyarat
Pastikan sudah menginstall:
- Flutter SDK (versi 3.0 atau lebih baru)
- Android Studio / VS Code
- Emulator Android atau perangkat Android

Langkah Menjalankan
# Clone repository
git clone https://github.com/username/jajan_yuk.git

# Masuk ke folder project
cd jajan_yuk

# Install dependencies
flutter pub get

# Jalankan aplikasi
flutter run
📁 Struktur Project
lib/
├── main.dart
├── pages/
│   ├── login_page.dart
│   ├── home_page.dart
│   └── order_page.dart

Keterangan:
main.dart → Entry point aplikasi
login_page.dart → Halaman login
home_page.dart → Menampilkan daftar menu makanan
order_page.dart → Halaman pemesanan dan perhitungan harga

🛠️ Teknologi yang Digunakan
Flutter
Dart
Stateful Widget
Stateless Widget
Navigator

🎯 Tujuan Pengembangan
Aplikasi ini dibuat untuk mempelajari:
Navigasi antar halaman di Flutter
Penggunaan Stateful dan Stateless Widget
Pengelolaan state untuk perhitungan harga
Pembuatan UI aplikasi mobile sederhana