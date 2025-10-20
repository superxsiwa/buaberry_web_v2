import 'dart:developer' as logger;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../shared/shared.dart';
import './widgets/widgets.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.log(dotenv.get('LOGO_PATH'));
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                text: LangKeys.MENU.tr(),
                color: Colors.grey.shade700,
                fontSize: CommonConstants.fontHeaderSize,
                fontWeight: FontWeight.bold,
                onPressed: () {
                  // Get.offNamed(Routes.PRODUCT_MENU);
                },
              ),
              const Gap(20),
              NKWTextLinkWidget(
                text: LangKeys.SALE_POINT.tr(),
                color: Colors.grey.shade400,
                fontSize: CommonConstants.fontHeaderSize,
                fontWeight: FontWeight.bold,
                onPressed: () {
                  // Get.offNamed(Routes.BUY_PRODUCT);
                },
              ),
              const Gap(20),
              NKWTextLinkWidget(
                text: LangKeys.SOCIAL.tr(),
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
          const ImageAssetWidget(imagePath: BuaberryImages.SHOP_MAIN_IMAGE_DESKTOP, height: 800, width: 900),
          const Gap(5),
        ],
      ),
    ));
  }
}
