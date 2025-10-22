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

class AboutUsPage extends ConsumerWidget {
  const AboutUsPage({super.key});

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
            text: context.tr(LangKeys.ABOUT_US),
            fontSize: CommonConstants.fontTopicSize,
          ),
          const Gap(10),
          SizedBox(
            width: (250 >= screenWidth) ? 250 : screenWidth * 0.7,
            child: const Text(
              '     BUABERRy(บัวเบอรี่) เป็นร้านขายขนมหวานและเครื่องดื่มต่างๆ ได้ประกอบกิจการมามากกว่า 10 ปี โดยเริ่มจาก พ.ศ.2560 คุณปู(ยุภาวดี อินถาเครือ) ด้่วยความชอบวิชาเคมีและชอบวิชาคหกรรมตั้งแต่เด็ก และชื่นชอบในการกินขนมหวานมานาน ประกอบกับเป็นช่วงเวลาที่ลูกสาว 2 คน เริ่มโตเข้าเรียนในระดับประถมแล้ว ก็เป็นอันได้เวลาในการเริ่มทำสิ่งที่ชอบ',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Gap(10),
          SizedBox(
            width: (250 >= screenWidth) ? 250 : screenWidth * 0.7,
            child: const Text(
              '     ด้วยความเป็นนักวิจัยและเรียนจบปริญญาโทสาขาวิทยาการคอมพิวเตอร์ ในช่วงเริ่มต้นจึงต้อง ไปเรียนอบรมทำขนมหลักสูตรต่างๆ เพิ่มเติม หนึ่งในการอบรมที่นานที่สุดคือ อบรมทำขนมเบเกอรี่ที่วิทยาลัยดุสิตธานีระยะเวลา 18 สัปดาห์ และอบรมเรียนคอร์สทำขนมทั้งออนไลน์และอ็อฟไลน์อีกมากมา',
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Gap(10),
          SizedBox(
            width: (250 >= screenWidth) ? 250 : screenWidth * 0.7,
            child: const Text(
              '     ในการทำขนมขายในช่วงแรก ใช้วิธีวางขายตามร้านค้าใกล้บ้าน จนขายฐานมาเรื่อยๆ ไปสู่สถานศึกษา โรงเรียน มหาวิทยาลัย ร้านขายน้ำชาการแฟ ร้านขายของชำต่างๆ ในบริเวณจังหวัดอุบล',
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Gap(10),
          SizedBox(
            width: (250 >= screenWidth) ? 250 : screenWidth * 0.7,
            child: const Text(
              '     ปัจจุบันร้านมีขนมและอาหารสุขภาพมากมายที่เป็นที่นิยมเช่น แซนด์วิช เค้กกล้วยหอม บราวนี่ กล้วยโมเลน ปังแยม คุกกี้กรอบ ปังสอดไส้ ผักนึ่งสุขภาพ(ฟักทอง กล้วย เผือก มันม่วง มันเหลือง) และอีกมากมาย และจัดขนมเป็นชุดต่างสำหรับลูกค้าที่สั่งพิเศษ วางขายตามร้าน ชุดเบรกงานประชุม ชุดงานพิเศษ (วันเกิด โรงทาน งานศพ ขึ้นบ้านใหม่)',
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
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
