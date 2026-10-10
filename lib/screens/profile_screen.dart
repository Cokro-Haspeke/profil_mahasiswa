import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          // Navigasi ke AboutScreen (Latihan 2)
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Latihan 3: bagian foto/header memakai Expanded
            const Expanded(
              flex: 2,
              child: Center(
                child: SingleChildScrollView(
                  child: ProfileHeader(
                    name: 'Cokrowijoyo Maspeke',
                    nim: '25.11.6310',
                  ),
                ),
              ),
            ),
            // Latihan 3: bagian informasi memakai Expanded
            // (SingleChildScrollView mencegah overflow di layar kecil)
            const Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'c.maspeke@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    SizedBox(height: 8),
                    SocialMediaRow(), // Latihan 1
                  ],
                ),
              ),
            ),
            // Latihan 3 & 4: tombol aksi (Flexible ada di dalam ActionButtons)
            const ActionButtons(),
          ],
        ),
      ),
    );
  }
}
