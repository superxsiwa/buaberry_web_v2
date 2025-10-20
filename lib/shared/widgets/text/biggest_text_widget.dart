import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class BiggestTextWidget extends StatelessWidget {

  final String text; 
  
  final Color? color;
  
  const BiggestTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontBiggestSize,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black),
    );
  }
}