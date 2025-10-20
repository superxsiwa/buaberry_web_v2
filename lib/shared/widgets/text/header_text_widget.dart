import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {

  final String text; 
  
  final Color? color;
  
  const HeaderTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontHeaderSize,
                fontWeight: FontWeight.bold,
                color: color ?? Colors.black)),
    );
  }
}