import 'package:flutter/material.dart';
import 'package:buaberry_web/shared/shared.dart';
class NormalTextWidget extends StatelessWidget {

  final String text; 
  final Color? color;
  const NormalTextWidget({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontNormalSize,
                color: color ?? Colors.black)),
    );
  }
}