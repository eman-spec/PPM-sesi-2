import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PPM Sesi 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF1F5F9),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F766E),
          primary: const Color(0xFF0F766E),
          secondary: const Color(0xFF14B8A6),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        title: const Text(
          'PPM Sesi 2 - Soleeman Firdaus Ode (20240040253)',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0F766E),
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                // 1. Kartu Profil Mahasiswa (StatelessWidget)
                StudentProfileCard(),
                SizedBox(height: 18),

                // 2. Banner Promo (Stack & Positioned)
                PromoBannerCard(),
                SizedBox(height: 18),

                // 3. Kartu Produk (StatefulWidget)
                ProductCardWidget(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// 1. KARTU PROFIL MAHASISWA (StatelessWidget)
// Desain disesuaikan presisi dengan referensi PPM Sesi 1
// ─────────────────────────────────────────────────────────────
class StudentProfileCard extends StatelessWidget {
  const StudentProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: const BorderSide(color: Color(0xFFE2E8F0), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        child: Column(
          children: [
            // Avatar Profil Bulat dengan Border Teal
            Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF0F766E), width: 3.5),
                color: Colors.white,
              ),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 54,
                  color: Color(0xFF0F766E),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Nama Mahasiswa
            const Text(
              'Soleeman Firdaus Ode',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 8),

            // Badge Mahasiswa Aktif
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFCCFBF1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Mahasiswa Aktif',
                style: TextStyle(
                  color: Color(0xFF0F766E),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // 5 Bintang + Nilai 5.0
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFFEF3C7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    5,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.5),
                      child: Icon(
                        Icons.star,
                        color: Color(0xFFF59E0B),
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    '5.0',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color(0xFFB45309),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Divider(color: Color(0xFFF1F5F9), thickness: 1.5),
            const SizedBox(height: 12),

            // Baris NIM
            _buildProfileInfoRow(
              icon: Icons.badge_outlined,
              label: 'NIM',
              value: '20240040253',
            ),
            const SizedBox(height: 14),

            // Baris Prodi / Kelas
            _buildProfileInfoRow(
              icon: Icons.school_outlined,
              label: 'Prodi / Kelas',
              value: 'Teknik Informatika / TI24G',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFCCFBF1).withAlpha(150),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xFF0F766E), size: 22),
        ),
        const SizedBox(width: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF64748B),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────
// 2. BANNER PROMO (Stack & Positioned)
// ─────────────────────────────────────────────────────────────
class PromoBannerCard extends StatelessWidget {
  const PromoBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 120,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F766E), Color(0xFF14B8A6)],
          ),
        ),
        child: Stack(
          children: [
            // Lingkaran dekorasi 1 (Positioned)
            Positioned(
              right: -25,
              top: -25,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withAlpha(35),
                ),
              ),
            ),
            // Lingkaran dekorasi 2 (Positioned)
            Positioned(
              right: 40,
              bottom: -20,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withAlpha(25),
                ),
              ),
            ),
            // Ikon Hadiah Transparan (Positioned)
            Positioned(
              right: 18,
              bottom: 12,
              child: Icon(
                Icons.card_giftcard,
                size: 56,
                color: Colors.white.withAlpha(45),
              ),
            ),
            // Badge Diskon (Positioned)
            Positioned(
              right: 14,
              top: 14,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF3C7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'HEMAT 30%',
                  style: TextStyle(
                    color: Color(0xFFB45309),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Teks Banner
            Positioned(
              left: 20,
              top: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'PROMO SPESIAL BULAN INI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Dapatkan potongan harga spesial\nuntuk setiap pembelian produk!',
                    style: TextStyle(
                      color: Color(0xFFE2E8F0),
                      fontSize: 12,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// 3. KARTU PRODUK (StatefulWidget)
// Dilengkapi tombol favorite (+ like count), counter -/+,
// total harga dinamis, dan SnackBar tambah ke keranjang
// ─────────────────────────────────────────────────────────────
class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({super.key});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool _isFavorite = false;
  int _likeCount = 12;
  int _quantity = 1;
  final int _unitPrice = 250000;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
      _likeCount += _isFavorite ? 1 : -1;
    });
  }

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  String _formatRupiah(int price) {
    String str = price.toString();
    String formatted = '';
    int count = 0;
    for (int i = str.length - 1; i >= 0; i--) {
      if (count > 0 && count % 3 == 0) {
        formatted = '.$formatted';
      }
      formatted = str[i] + formatted;
      count++;
    }
    return 'Rp $formatted';
  }

  void _addToCart() {
    final total = _formatRupiah(_unitPrice * _quantity);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                'Sepatu Sneakers Sporty ($_quantity x) berhasil ditambahkan!\nTotal: $total',
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF0F766E),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final int totalPrice = _unitPrice * _quantity;

    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: const BorderSide(color: Color(0xFFE2E8F0), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            // Badge Kategori Produk di Atas (Gaya Mirip Sesi 1)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFCCFBF1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.check_circle_outline,
                      size: 16, color: Color(0xFF0F766E)),
                  SizedBox(width: 6),
                  Text(
                    'Kategori: Fashion & Olahraga',
                    style: TextStyle(
                      color: Color(0xFF0F766E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),

            // Placeholder Gambar Produk Menggunakan Stack & Positioned
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F5F9),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.directions_run,
                      size: 76,
                      color: Color(0xFF0F766E),
                    ),
                  ),
                ),
                // Tombol Favorite Hati di Pojok Kanan Atas Gambar (Stack & Positioned)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Material(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    elevation: 2,
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: _toggleFavorite,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          _isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: _isFavorite
                              ? const Color(0xFFEF4444)
                              : const Color(0xFF94A3B8),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Nama Produk & Jumlah Likes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text(
                    'Sepatu Sneakers Sporty',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                      size: 16,
                      color: const Color(0xFFEF4444),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$_likeCount Likes',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEF4444),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4),

            // Harga Satuan
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _formatRupiah(_unitPrice),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0F766E),
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Divider(color: Color(0xFFF1F5F9), thickness: 1.5),
            const SizedBox(height: 12),

            // Label JUMLAH PRODUK (Meniru Gaya Label Sesi 1)
            const Text(
              'JUMLAH PRODUK',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Color(0xFF64748B),
              ),
            ),
            const SizedBox(height: 6),

            // Angka Counter Besar (Meniru Sesi 1)
            Text(
              '$_quantity',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F766E),
              ),
            ),
            const SizedBox(height: 14),

            // Tombol - dan + Gaya Sesi 1 (Row, Button, Icon)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Kurang (Merah Sesi 1)
                Material(
                  color: _quantity > 1
                      ? const Color(0xFFEF4444)
                      : const Color(0xFFCBD5E1),
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: _quantity > 1 ? _decrement : null,
                    child: const SizedBox(
                      width: 52,
                      height: 46,
                      child: Icon(Icons.remove, color: Colors.white, size: 24),
                    ),
                  ),
                ),
                const SizedBox(width: 14),

                // Kotak Total Harga
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'TOTAL HARGA',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF94A3B8),
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          _formatRupiah(totalPrice),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F766E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 14),

                // Tombol Tambah (Teal Sesi 1)
                Material(
                  color: const Color(0xFF0F766E),
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: _increment,
                    child: const SizedBox(
                      width: 52,
                      height: 46,
                      child: Icon(Icons.add, color: Colors.white, size: 24),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),

            // Tombol Tambah ke Keranjang
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: _addToCart,
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.white, size: 20),
                label: const Text(
                  'Tambah ke Keranjang',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F766E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}