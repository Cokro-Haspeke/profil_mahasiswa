import 'package:flutter/material.dart';

/// Latihan 3 & 4: Tombol aksi (Edit, Bagikan) memakai Flexible(flex: 1)
/// dan dipisahkan menjadi widget sendiri.
class ActionButtons extends StatelessWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onShare;

  const ActionButtons({super.key, this.onEdit, this.onShare});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ElevatedButton.icon(
            onPressed: onEdit ?? () {},
            icon: const Icon(Icons.edit),
            label: const Text('Edit'),
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          flex: 1,
          child: ElevatedButton.icon(
            onPressed: onShare ?? () {},
            icon: const Icon(Icons.share),
            label: const Text('Bagikan'),
          ),
        ),
      ],
    );
  }
}
