import 'package:flutter/material.dart';

import '../../shared.dart';

class ProductCartWidget extends StatelessWidget {
  final int col;
  final Widget nameWidget;
  final Widget imageWidget;
  final Widget? descriptionWidget;
  final Widget priceWidget;
  const ProductCartWidget(
      {super.key, required this.col, required this.nameWidget, this.descriptionWidget, required this.priceWidget, required this.imageWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          imageWidget,
          CommonWidget.rowHeight(height: 10),
          nameWidget,
          CommonWidget.rowHeight(height: 5),
          if (null != descriptionWidget) descriptionWidget!,
          if (null != descriptionWidget) CommonWidget.rowHeight(height: 5),
          priceWidget,
        ],
      ),
    );
  }
}
