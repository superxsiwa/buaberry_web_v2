import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class HeaderTextLinkWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  const HeaderTextLinkWidget(
      {super.key,
      required this.text,
      this.color,
      this.onPressed,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: new Text(
          text,
          style: TextStyle(
              fontSize: CommonConstants.fontHeaderSize,
              fontWeight: fontWeight ?? FontWeight.bold,
              color: color ?? Colors.black),
        ),
        onTap: onPressed ?? () {});
  }
}
