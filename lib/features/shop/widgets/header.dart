import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../shared/shared.dart';
import 'social_tile_widget.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.screenWidth, required this.isMobileScreen});

  final double screenWidth;
  final bool isMobileScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: <Widget>[
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: SvgPicture.asset(dotenv.get(LangKeys.LOGO_PATH), width: 100 > (screenWidth / 6) ? 100 : screenWidth / 6),
                ),
                NKWTextWidget(
                  text: context.tr(LangKeys.SHOP_NAME),
                  color: ColorConstants.buaberryColor,
                  fontSize: 100 > (screenWidth / 6) ? CommonConstants.fontNormalSize : CommonConstants.fontTopicSize,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Gap(15),
                NKWTextWidget(
                  text: context.tr(LangKeys.SHOP_MOBILE_PHONE),
                  fontSize: CommonConstants.fontLabelSize,
                  color: Colors.grey.shade700,
                ),
                Row(
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
                if (screenWidth >= 700)
                  NKWTextWidget(
                    text: context.tr(LangKeys.SHOP_SALOGAN),
                    fontSize: isMobileScreen ? CommonConstants.fontLabelSize : CommonConstants.fontTopicSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
              ],
            )
          ],
        ),
        if (700 > screenWidth)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NKWTextWidget(
                text: context.tr(LangKeys.SHOP_SALOGAN),
                fontSize: isMobileScreen ? CommonConstants.fontLabelSize : CommonConstants.fontTopicSize,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ],
          )
      ],
    );
  }
}
