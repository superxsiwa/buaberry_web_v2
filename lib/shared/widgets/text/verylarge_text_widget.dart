import 'package:flutter/material.dart';
import 'package:buaberry_web/shared/shared.dart';

class VeryLargeTextWidget extends StatelessWidget {

  final String text; 
  final Color? color;

  const VeryLargeTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontVeryLargeSize,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black)),
    );
  }
}