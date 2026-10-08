# PPM Sesi 2 - Flutter App

**Nama:** Soleeman Firdaus Ode  
**NIM:** 20240040253  
**Prodi/Kelas:** Teknik Informatika / TI24G  
**Mata Kuliah:** Pemrograman Mobile (PPM)

---

## Deskripsi Aplikasi

Aplikasi Flutter untuk tugas PPM Sesi 2 yang menampilkan halaman **Produk** dan **Profil** mahasiswa dengan desain modern sesuai referensi tema teal/emerald.

---

## Demo Hasil Aplikasi

🎥 **Video Rekaman Demo Aplikasi:**  
File video demo: [`Rekaman 2026-10-08 194626.mp4`](Rekaman%202026-10-08%20194626.mp4)

https://github.com/user-attachments/assets/Rekaman-2026-10-08-194626.mp4

---

## Fitur Aplikasi

### 1. Halaman Profil Mahasiswa (`StatelessWidget`)
- Foto / Ikon profil dengan lingkaran border teal
- Nama lengkap: **Soleeman Firdaus Ode**
- Badge status: **Mahasiswa Aktif**
- 5 Ikon bintang + rating **5.0**
- Info **NIM: 20240040253** dengan ikon ID badge
- Info **Prodi/Kelas: Teknik Informatika / TI24G** dengan ikon toga

### 2. Banner Promo (`Stack` & `Positioned`)
- Background gradien teal modern
- Dekorasi lingkaran transparan dengan `Positioned`
- Badge diskon **HEMAT 30%** dengan `Positioned`
- Ikon hadiah transparan dengan `Positioned`

### 3. Kartu Produk (`StatefulWidget`)
- Badge kategori: **Fashion & Olahraga**
- Placeholder gambar produk dengan tombol **Love Favorite** di pojok kanan atas
- Tombol **Favorite**: Ikon hati berubah merah saat ditekan dan jumlah Likes bertambah/berkurang secara dinamis
- Tampilan nama produk & harga satuan
- **Pengatur Jumlah Produk**:
  - Tombol **-** (merah, minimal 1)
  - Angka counter besar di tengah
  - Tombol **+** (teal)
  - **Total Harga** otomatis terhitung berdasarkan jumlah produk
- Tombol **Tambah ke Keranjang**: Menampilkan notifikasi **SnackBar** saat ditekan

---

## Widget yang Digunakan
`Scaffold` · `Row` · `Column` · `Container` · `Card` · `Stack` · `Positioned` · `Icon` · `ElevatedButton` · `StatelessWidget` · `StatefulWidget` · `AppBar` · `SnackBar` · `InkWell`

---

## Cara Menjalankan

```bash
flutter pub get
flutter run
```

---

## Struktur Project

```
lib/
  main.dart                      # Source code Flutter
Rekaman 2026-10-08 194626.mp4    # Video rekaman demo hasil aplikasi
pubspec.yaml                     # Dependencies project
README.md                        # Dokumentasi
```