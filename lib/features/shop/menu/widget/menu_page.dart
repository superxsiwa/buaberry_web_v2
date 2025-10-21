import 'dart:developer' as logger;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../../shared/shared.dart';
import '../../widgets/header.dart';
import '../../widgets/language_tile.dart';
import '../../widgets/theme_widget.dart';
import '../provider/hello_provider.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.log(dotenv.get(LangKeys.LOGO_PATH));
    return const Scaffold(
        body: SingleChildScrollView(
      child: MenuScreenDesktop(),
    ));
  }
}

class MenuScreenDesktop extends ConsumerWidget {
  const MenuScreenDesktop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);

    return Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50, width: 300, child: ThemeWidget()),
            Header(),
            SizedBox(height: 50, width: 300, child: LanguageTile()),
          ],
        ),
        const Divider(),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NKWTextLinkWidget(
              text: context.tr(LangKeys.MENU),
              color: Colors.grey.shade700,
              fontSize: CommonConstants.fontHeaderSize,
              fontWeight: FontWeight.bold,
              onPressed: () {
                // Get.offNamed(Routes.PRODUCT_MENU);
              },
            ),
            const Gap(20),
            NKWTextLinkWidget(
              text: context.tr(LangKeys.SALE_POINT),
              color: Colors.grey.shade400,
              fontSize: CommonConstants.fontHeaderSize,
              fontWeight: FontWeight.bold,
              onPressed: () {
                // Get.offNamed(Routes.BUY_PRODUCT);
              },
            ),
            const Gap(20),
            NKWTextLinkWidget(
              text: context.tr(LangKeys.SOCIAL),
              color: Colors.grey.shade400,
              fontSize: CommonConstants.fontHeaderSize,
              fontWeight: FontWeight.bold,
              onPressed: () {
                // Get.offNamed(Routes.OUR_SOCIAL);
              },
            )
          ],
        ),
        const Gap(5),
        // const ImageAssetWidget(imagePath: BuaberryImages.SHOP_MAIN_IMAGE_DESKTOP, height: 800, width: 900),
        // _buildSandwichMenu(context),
        Text(value),
        const Gap(5),
      ],
    );
  }

  // Widget _buildSandwichMenu(BuildContext context) {
  //   return TableGridLayoutWidget(
  //       tableLabel: NKWTextWidget(text: context.tr(LangKeys.SANDWICH)),
  //       col: 5,
  //       widgetList: List.generate(_controller.sandWichMenuList.length, (int index) {
  //         return ProductCartWidget(
  //             col: _col,
  //             nameWidget: LabelTextWidget(
  //               text: _controller.sandWichMenuList[index].name,
  //               fontWeight: FontWeight.bold,
  //             ),
  //             imageWidget: ImageAssetWidget(
  //               imagePath: (_controller.appMode != CommonConstants.PRODUCTION) ? null : _controller.sandWichMenuList[index].imageId,
  //               height: _imageHeight,
  //               width: _imageWidth,
  //             ),
  //             priceWidget: LabelTextWidget(
  //               text: _controller.sandWichMenuList[index].price,
  //               fontWeight: FontWeight.bold,
  //             ));
  //       }));
  // }
}
