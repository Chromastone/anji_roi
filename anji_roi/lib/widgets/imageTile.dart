import 'package:flutter/material.dart';

class imageTile extends StatelessWidget {
  final String imagePath;

  imageTile({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
