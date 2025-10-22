import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../router/app_router.dart';
import '../../../shared/shared.dart';

class BRFooter extends StatelessWidget {
  const BRFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NKWTextLinkWidget(
              text: context.tr(LangKeys.CONTACT_US),
              onPressed: () {
                context.pushReplacement(BRRoute.contact_us.route);
              },
            ),
            const Gap(10),
            NKWTextLinkWidget(
              text: context.tr(LangKeys.ABOUT_US),
              onPressed: () {
                context.pushReplacement(BRRoute.about_us.route);
              },
            ),
          ],
        ),
        const NKWTextWidget(text: '© 2014-2025 buaberry.com. All rights reserved.')
      ],
    );
  }
}
