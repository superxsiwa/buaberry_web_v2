import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../shared/shared.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SvgPicture.asset(dotenv.get('LOGO_PATH'), width: 100),
            ),
            NKWTextWidget(
              text: LangKeys.SHOP_NAME.tr(),
              color: ColorConstants.buaberryColor,
              fontSize: CommonConstants.fontNormalSize,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        Column(
          children: [
            NKWTextWidget(
              text: LangKeys.SHOP_SALOGAN.tr(),
              fontSize: CommonConstants.fontLabelSize,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
            const Gap(5),
            NKWTextWidget(
              text: LangKeys.SHOP_MOBILE_PHONE.tr(),
              color: Colors.grey.shade700,
            ),
          ],
        )
      ],
    );
  }
}
