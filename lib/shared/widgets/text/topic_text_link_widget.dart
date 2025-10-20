import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class TopicTextLinkWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  const TopicTextLinkWidget(
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
              fontSize: CommonConstants.fontTopicSize,
              fontWeight: fontWeight ?? FontWeight.bold,
              color: color ?? Colors.black),
        ),
        onTap: onPressed ?? () {});
  }
}
