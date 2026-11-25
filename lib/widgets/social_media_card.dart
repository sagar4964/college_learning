import 'package:flutter/material.dart';

class SocialMediaCard extends StatelessWidget {
  final String? image;
  final String label;

  const SocialMediaCard({super.key, this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image ?? "assets/images/placeholder.png",
              height: 40,
              width: 40,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image, size: 40, color: Colors.grey);
              },
            ),
            const SizedBox(width: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
