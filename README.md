# PPM Sesi 2 - Flutter App

**Nama:** Soleeman Firdaus Ode  
**NIM:** 20240040253  
**Prodi/Kelas:** Teknik Informatika / TI24G  
**Mata Kuliah:** Pemrograman Mobile (PPM)

---

## Deskripsi Aplikasi

Aplikasi Flutter untuk tugas PPM Sesi 2 yang menampilkan halaman **Produk** dan **Profil** mahasiswa.

## Fitur

### Halaman Profil (StatelessWidget)
- Kartu profil dengan nama, NIM, Prodi/Kelas
- Ikon profil
- 5 ikon bintang
- Informasi akademik tambahan

### Halaman Produk (StatefulWidget)
- **Banner Promo** menggunakan `Stack` dan `Positioned`
- **3 Kartu Produk**, masing-masing memiliki:
  - Gambar/placeholder produk dengan kategori badge
  - Nama produk & harga
  - Tombol **Favorite** (ikon hati berubah, jumlah like bertambah/berkurang)
  - Tombol **-** dan **+** untuk mengatur jumlah produk (minimal 1)
  - Total harga otomatis berubah sesuai jumlah
  - Tombol **Tambah ke Keranjang** → menampilkan SnackBar

## Widget yang Digunakan
`Scaffold` · `Row` · `Column` · `Container` · `Card` · `Stack` · `Positioned` · `Icon` · `ElevatedButton` · `StatelessWidget` · `StatefulWidget` · `BottomNavigationBar` · `AppBar` · `SnackBar` · `ScaleTransition`

## Cara Menjalankan

```bash
flutter pub get
flutter run
```

## Screenshot

> *Tambahkan screenshot aplikasi di sini*

## Struktur Project

```
lib/
  main.dart          # Semua widget dalam satu file
pubspec.yaml
README.md
```