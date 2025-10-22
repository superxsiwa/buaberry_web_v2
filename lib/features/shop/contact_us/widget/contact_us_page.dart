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
import '../../widgets/footer.dart';
import '../../widgets/header.dart';
import '../../widgets/language_tile.dart';
import '../../widgets/theme_widget.dart';

class ContactUsPage extends ConsumerWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.log(dotenv.get(LangKeys.LOGO_PATH));

    final double screenWidth = MediaQuery.of(context).size.width;
    final double headColWidth = screenWidth / 12;
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
      if (screenWidth > 1000) {
        col = 5;
      } else if (screenWidth > 750) {
        col = 4;
      } else {
        col = 3;
      }
      headColWidth1 = headColWidth * 2.25;
      headColWidth2 = headColWidth * 7.5;
      headColWidth3 = headColWidth * 2.25;
    }
    logger.log(':= ScreenType = ${Device.screenType.name}');

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                color: Colors.grey.shade400,
                fontSize: CommonConstants.fontHeaderSize,
                fontWeight: FontWeight.bold,
                onPressed: () {
                  context.pushReplacement(BRRoute.sale_point.route);
                },
              ),
              const Gap(20)
            ],
          ),
          const Gap(15),
          NKWTextWidget(
            text: context.tr(LangKeys.CONTACT_US),
            fontSize: CommonConstants.fontTopicSize,
          ),
          const Gap(20),
          SizedBox(
            width: (250 >= screenWidth) ? 250 : screenWidth * 0.7,
            child: Column(
              children: <Widget>[
                const NKWTextWidget(
                  text: 'E-Mail : yupawadee.poo@gmail.com',
                  fontSize: CommonConstants.fontLabelSize,
                  fontWeight: FontWeight.bold,
                ),
                Gap(10),
                NKWTextWidget(
                  text: 'Mobile number : ${context.tr(LangKeys.SHOP_MOBILE_PHONE)}',
                  fontSize: CommonConstants.fontLabelSize,
                  fontWeight: FontWeight.bold,
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {
                        openUrl(Uri.parse('https://www.facebook.com/buaberryfp?locale=th_TH'));
                      },
                      iconSize: 40,
                    ),
                    IconButton(
                      icon: const ImageIcon(
                        AssetImage('assets/images/icons8-line-50.png'),
                        // color: Colors.red, // Optional: change color of the PNG (if applicable)
                      ),
                      onPressed: () {
                        openUrl(Uri.parse('https://line.me/R/ti/p/@120yuvdr'));
                      },
                      iconSize: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(30),
          const BRFooter(),
          const Gap(20),
        ],
      ),
    ));
  }
}
