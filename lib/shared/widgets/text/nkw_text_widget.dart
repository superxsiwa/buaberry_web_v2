import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class NKWTextWidget extends StatelessWidget {
  const NKWTextWidget({super.key, required this.text, this.color, this.fontSize, this.fontWeight});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize ?? NKWFontSize.S2, fontWeight: fontWeight ?? FontWeight.normal, color: color ?? Colors.black),
    );
  }
}
