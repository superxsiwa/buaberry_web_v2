import 'package:flutter/material.dart';

class ImageFromGoogleDriveWidget extends StatelessWidget {

  final String? imageId;
  final double? height;
  final double? width;
  
  const ImageFromGoogleDriveWidget({super.key, this.imageId, this.height, this.width});

  @override
  Widget build(BuildContext context) {

    /*
       Example image link from google drive
      "https://lh3.googleusercontent.com/d/1bGElAExKqz2sgiA4S5MNwcundZZLu8FH",
      "https://lh3.googleusercontent.com/d/1bGElAExKqz2sgiA4S5MNwcundZZLu8FH",
      "https://docs.google.com/uc?id=1bGElAExKqz2sgiA4S5MNwcundZZLu8FH",
      "https://lh3.googleusercontent.com/d/1z-3moeybmtxqhyjWWN8PvKIZizI6yw6B",
      https://drive.google.com/uc?export=view&id={fileId}
      https://drive.google.com/a/{domain}.com/uc?authuser=0&id=fileId}&export=download
      https://drive.google.com/file/d/{fileId}/view
    */

    return ("" != (imageId ?? "")) 
              ? Image.network(
                  "https://lh3.googleusercontent.com/d/${imageId}",
                  height: height ?? 100.0,
                  width: width ?? 100.0,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter)
              : Container(
            width: width ?? 100.0,
            height: height ?? 100.0,
            color: Colors.brown,);
  }
}