import 'package:buaberry_web/shared/shared.dart';
import 'package:flutter/material.dart';

class LabelTextWidget extends StatelessWidget {

  final String text; 
  final Color? color;
  final FontWeight? fontWeight;
  const LabelTextWidget({super.key, required this.text, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontLabelSize,
                fontWeight: fontWeight,
                color: color ?? Colors.black)),
    );
  }
}