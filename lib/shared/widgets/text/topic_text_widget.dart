import 'package:flutter/material.dart';
import 'package:buaberry_web/shared/shared.dart';

class TopicTextWidget extends StatelessWidget {

  final String text; 
  final FontWeight? fontWeight;
  final Color? color;
  
  const TopicTextWidget({super.key, required this.text, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
            style: TextStyle(
                fontSize: CommonConstants.fontTopicSize,
                fontWeight: fontWeight,
                color: color ?? Colors.black)),
    );
  }
}