import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imagePath;
  const ImageTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePath,
        height: 400,
      ),
    );
  }
}
