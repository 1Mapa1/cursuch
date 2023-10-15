import 'package:flutter/material.dart';

class ImageMiniRecipe extends StatelessWidget {
  const ImageMiniRecipe({
    super.key,
    required this.height,
    required this.img
  });

  final double height;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height * 0.12,
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(img), 
      frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
          child: child,
        );
      },
      
    );
  }
}