import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../shared.dart';

class TableGridLayoutWidget extends StatelessWidget {
  final Widget? tableLabel;
  final int col;
  final double? childAspectRatio;
  final List<Widget> widgetList;
  const TableGridLayoutWidget({super.key, this.tableLabel, required this.col, required this.widgetList, this.childAspectRatio});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (tableLabel != null) CommonWidget.rowHeight(height: 10.0),
        if (tableLabel != null) tableLabel!,
        CommonWidget.rowHeight(height: 10.0),
        GridView.count(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            childAspectRatio: childAspectRatio ?? ((Get.width / col) / ((Get.width / col) + 20)),
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: col,
            children: widgetList),
      ],
    );
  }
}
