import 'package:flutter/material.dart';

/// Latihan 2: Halaman "Tentang Aplikasi" menggunakan Stack.
/// Lapisan: gradient (bawah) -> teks tengah -> tombol kembali (atas).
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Lapisan 1: latar gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),

          // Lapisan 2: teks di tengah
          const Text(
            'Tentang Aplikasi',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          // Lapisan 3: tombol kembali di pojok kiri atas
          Positioned(
            top: topPadding + 8,
            left: 8,
            child: TextButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              label: const Text(
                'Kembali',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
