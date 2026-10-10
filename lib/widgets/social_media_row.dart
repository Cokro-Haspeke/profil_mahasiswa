import 'package:flutter/material.dart';

/// Latihan 1: Deretan ikon media sosial yang dapat diklik.
/// Setiap klik menampilkan SnackBar berisi nama media sosial.
class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String nama) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('$nama diklik'),
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt),
          color: Colors.pink,
          tooltip: 'Instagram',
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.business_center),
          color: Colors.blue[800],
          tooltip: 'LinkedIn',
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code),
          color: Colors.black87,
          tooltip: 'GitHub',
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}
