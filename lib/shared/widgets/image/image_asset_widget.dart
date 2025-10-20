import 'package:flutter/material.dart';

class ImageAssetWidget extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;

  const ImageAssetWidget({super.key, this.imagePath, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: Image.asset('assets/images/your_image.png'),
    // );
    return ("" != (imagePath ?? ""))
        ? Image.asset(imagePath!, height: height ?? 100.0, width: width ?? 100.0, fit: BoxFit.cover, alignment: Alignment.topCenter)
        : Container(
            width: width ?? 100.0,
            height: height ?? 100.0,
            color: Colors.brown,
          );
  }
}
