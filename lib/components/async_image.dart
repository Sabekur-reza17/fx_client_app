import 'package:flutter/material.dart';

class AsyncImage extends StatelessWidget {
  const AsyncImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  bool get _isAsset => imageUrl.startsWith('assets/');

  @override
  Widget build(BuildContext context) {
    if (_isAsset) {
      return Image.asset(imageUrl, width: width, height: height, fit: fit);
    }
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_, error, stackTrace) =>
          SizedBox(width: width, height: height),
      loadingBuilder: (context, child, progress) {
        if (progress == null) return child;
        return SizedBox(width: width, height: height);
      },
    );
  }
}

