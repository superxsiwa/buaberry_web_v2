import 'dart:developer' as logger;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import '../../../../router/app_router.dart';
import '../../../../shared/shared.dart';
import '../../widgets/header.dart';
import '../../widgets/language_tile.dart';
import '../../widgets/theme_widget.dart';
import '../model/sale_point_m.dart';
import '../provider/sale_point_provider.dart';

class SalePointPage extends ConsumerWidget {
  const SalePointPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.log(dotenv.get(LangKeys.LOGO_PATH));
    return const Scaffold(
        body: SingleChildScrollView(
      child: SalePointScreen(),
    ));
  }
}

class SalePointScreen extends ConsumerWidget {
  const SalePointScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double headColWidth = screenWidth / 12;
    final List<SalePointM> salePointList = ref.watch(salePointListProvider);
    int col;
    double headColWidth1;
    double headColWidth2;
    double headColWidth3;

    if (Device.screenType == ScreenType.mobile) {
      col = 2;
      headColWidth1 = headColWidth * 3.0;
      headColWidth2 = headColWidth * 7.0;
      headColWidth3 = headColWidth * 2.0;
    } else {
      col = 5;
      headColWidth1 = headColWidth * 2.25;
      headColWidth2 = headColWidth * 7.5;
      headColWidth3 = headColWidth * 2.25;
    }
    logger.log(':= ScreenType = ${Device.screenType.name}');
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50, width: headColWidth1, child: const ThemeWidget()),
            Header(screenWidth: headColWidth2, isMobileScreen: Device.screenType == ScreenType.mobile),
            SizedBox(height: 70, width: headColWidth3, child: const LanguageTile()),
          ],
        ),
        const Divider(),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NKWTextLinkWidget(
              text: context.tr(LangKeys.MENU),
              color: Colors.grey.shade400,
              fontSize: CommonConstants.fontHeaderSize,
              fontWeight: FontWeight.bold,
              onPressed: () {
                context.pushReplacement(BRRoute.menu.route);
              },
            ),
            const Gap(20),
            NKWTextLinkWidget(
              text: context.tr(LangKeys.SALE_POINT),
              color: Colors.grey.shade700,
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
        // Text('>>> ${salePointList.length}'),
        _buildSalePointList(context, salePointList, col),
        const Gap(5),
      ],
    );
  }

  Widget _buildSalePointList(BuildContext context, List<SalePointM> salePointList, int col) {
    final double screenWidth = MediaQuery.of(context).size.width / col;
    final double aspectRatio = (screenWidth + 80) / screenWidth;
    return Column(children: [
      // NKWTextWidget(text: context.tr(LangKeys.SANDWICH)),
      Gap(20),
      GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: screenWidth / (screenWidth * aspectRatio),
          crossAxisCount: col,
          children: List.generate(salePointList.length, (int index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ColoredBox(
                  color: Colors.black12,
                  child: Column(
                    children: <Widget>[
                      // Image.asset(
                      //   salePointList[index].imageId!,
                      //   width: screenWidth - 10,
                      //   height: screenWidth - 10,
                      // ),
                      Container(
                        color: Colors.pinkAccent,
                        width: screenWidth - 10,
                        height: screenWidth - 10,
                      ),
                      Gap(10),
                      NKWTextWidget(
                          text: context.tr(salePointList[index].name), fontWeight: FontWeight.bold, fontSize: CommonConstants.fontLabelSize),
                    ],
                  )),
            );
          }))
    ]);
  }
}
