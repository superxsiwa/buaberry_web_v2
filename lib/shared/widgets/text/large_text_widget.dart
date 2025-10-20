import 'package:flutter/material.dart';
import 'package:buaberry_web/shared/shared.dart';

class LargeTextWidget extends StatelessWidget {

  final String text; 
  
  final Color? color;
  
  const LargeTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontLargeSize,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black)),
    );
  }
}