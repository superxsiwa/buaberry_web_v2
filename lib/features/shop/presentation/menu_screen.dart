import 'dart:developer' as logger;

import 'package:buaberry_web/shared/shared.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/context_extensions.dart';

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.log(dotenv.get('LOGO_PATH'));
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SvgPicture.asset(dotenv.get('LOGO_PATH'), width: 600),
          ),
          // VeryLargeTextWidget(
          //   text: LangKeys.SHOP_NAME.tr(),
          //   color: ColorConstants.buaberryColor,
          // ),
          // CommonWidget.rowHeight(height: 10.0),
          // LargeTextWidget(
          //   text: LangKeys.SHOP_SALOGAN.tr(),
          //   color: Colors.grey.shade700,
          // ),
          // CommonWidget.rowHeight(height: 10.0),
          // BiggestTextWidget(
          //   text: LangKeys.SHOP_MOBILE_PHONE.tr(),
          //   color: Colors.grey.shade700,
          // ),
          // CommonWidget.rowHeight(height: 30.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     HeaderTextLinkWidget(
          //       text: LangKeys.MENU.tr(),
          //       color: Colors.grey.shade700,
          //       fontWeight: FontWeight.bold,
          //       onPressed: () {
          //         // Get.offNamed(Routes.PRODUCT_MENU);
          //       },
          //     ),
          //     CommonWidget.rowWidth(width: 20.0),
          //     HeaderTextLinkWidget(
          //       text: LangKeys.SALE_POINT.tr(),
          //       color: Colors.grey.shade700,
          //       fontWeight: FontWeight.bold,
          //       onPressed: () {
          //         // Get.offNamed(Routes.BUY_PRODUCT);
          //       },
          //     ),
          //     CommonWidget.rowWidth(width: 20.0),
          //     HeaderTextLinkWidget(
          //       text: LangKeys.SOCIAL.tr(),
          //       color: Colors.grey.shade700,
          //       fontWeight: FontWeight.bold,
          //       onPressed: () {
          //         // Get.offNamed(Routes.OUR_SOCIAL);
          //       },
          //     )
          //   ],
          // ),
          // CommonWidget.rowHeight(height: 30.0),
          // const ImageAssetWidget(imagePath: BuaberryImages.SHOP_MAIN_IMAGE_DESKTOP, height: 800.0, width: 900.0),
          // CommonWidget.rowHeight(height: 30.0),
        ],
      ),
    ));
  }
}
