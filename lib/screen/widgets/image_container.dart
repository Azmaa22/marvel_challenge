import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String image;
  const ImageContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          30.0,
        ),
      ),
      child: Image.asset(
        image,
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
