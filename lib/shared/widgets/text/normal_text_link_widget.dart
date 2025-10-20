import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class NormalTextLinkWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  const NormalTextLinkWidget(
      {super.key,
      required this.text,
      this.color,
      this.onPressed, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: new Text(
          text,
          style: TextStyle(
            
              fontWeight: fontWeight ?? FontWeight.bold,
              fontSize: CommonConstants.fontNormalSize,
              color: color ?? Colors.black),
        ),
        onTap: onPressed ?? () {});
  }
}
