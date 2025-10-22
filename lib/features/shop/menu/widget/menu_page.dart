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
import '../model/menu_m.dart';
import '../provider/menu_provider.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger
      ..d('MenuPage -> local : ${context.locale}')
      ..d('MenuPage -> ${dotenv.get(LangKeys.LOGO_PATH)}');
    return const Scaffold(
        body: SingleChildScrollView(
      child: MenuScreen(),
    ));
  }
}

class MenuScreen extends ConsumerWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double headColWidth = screenWidth / 12;
    final List<MenuM> menuList = ref.watch(menuListProvider);
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
    logger.d('MenuPage -> := ScreenType = ${Device.screenType.name}');
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
                context.pushReplacement(BRRoute.sale_point.route);
              },
            ),
            const Gap(20)
          ],
        ),
        const Gap(10),
        _buildMenuList(context, menuList, col),
        const Gap(5),
        const BRFooter(),
        const Gap(20),
      ],
    );
  }

  Widget _buildMenuList(BuildContext context, List<MenuM> menuList, int col) {
    final double screenWidth = MediaQuery.of(context).size.width / col;
    final double aspectRatio = ((screenWidth + 80) / screenWidth);
    return Column(children: [
      // NKWTextWidget(text: context.tr(LangKeys.SANDWICH)),
      Gap(20),
      GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: screenWidth / (screenWidth * aspectRatio),
          crossAxisCount: col,
          children: List.generate(menuList.length, (int index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ColoredBox(
                  color: Colors.black12,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        menuList[index].imageId!,
                        width: screenWidth - 10,
                        height: screenWidth - 10,
                      ),
                      Gap(10),
                      NKWTextWidget(text: context.tr(menuList[index].name), fontWeight: FontWeight.bold, fontSize: CommonConstants.fontLabelSize),
                      Gap(5),
                      NKWTextWidget(text: context.tr(menuList[index].price)),
                    ],
                  )),
            );
          }))
    ]);
  }
}
