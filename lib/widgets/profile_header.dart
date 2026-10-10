import 'package:flutter/material.dart';

import 'profile_photo.dart';

/// Latihan 4: Header profil (foto + nama + NIM).
class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;
  final String? imageUrl;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfilePhoto(radius: 60, imageUrl: imageUrl),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'NIM: $nim',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
