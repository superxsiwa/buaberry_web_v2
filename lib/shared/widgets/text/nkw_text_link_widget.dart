import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class NKWTextLinkWidget extends StatelessWidget {
  const NKWTextLinkWidget({super.key, required this.text, this.color, this.onPressed, this.fontWeight, this.fontSize});

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed ?? () {},
        child: Text(
          text,
          style: TextStyle(fontWeight: fontWeight ?? FontWeight.bold, fontSize: fontSize ?? NKWFontSize.S2, color: color ?? Colors.black),
        ));
  }
}
