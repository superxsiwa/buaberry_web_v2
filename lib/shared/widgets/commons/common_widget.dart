import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:buaberry_web/shared/shared.dart';

class CommonWidget {
  static AppBar appBar(BuildContext context, String title, IconData? backIcon, Color color, {void Function()? callback}) {
    return AppBar(
      leading: backIcon == null
          ? null
          : IconButton(
              icon: Icon(backIcon, color: color),
              onPressed: () {
                if (callback != null) {
                  callback();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: color, fontFamily: 'Rubik'),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30.0}) {
    return SizedBox(height: height);
  }

  static EdgeInsets mainTBPadding({double width = 300}) {
    return EdgeInsets.fromLTRB(0.0, width * CommonConstants.paddingMain, 0.0, width * CommonConstants.paddingMain);
  }

  static EdgeInsets mainLRPadding({double width = 300}) {
    return EdgeInsets.fromLTRB(width * CommonConstants.paddingMain, 0.0, width * CommonConstants.paddingMain, 0.0);
  }

  static EdgeInsets mainCellTBPadding({double width = 300}) {
    return EdgeInsets.fromLTRB(0.0, width * CommonConstants.paddingCell, 0.0, width * CommonConstants.paddingCell);
  }

  static EdgeInsets mainCellLRPadding({double width = 300}) {
    return EdgeInsets.fromLTRB(width * CommonConstants.paddingCell, 0.0, width * CommonConstants.paddingCell, 0.0);
  }

  static EdgeInsets mainCellLTRBPadding({double width = 300}) {
    return EdgeInsets.all(width * CommonConstants.paddingCell);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
  }

  static void toast(String error) async {
    await Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  static Color getAppBlackgroundColor() {
    return Color.fromARGB(255, 51, 47, 47);
  }

  static Icon getAppIcon({double? iconSize}) {
    double iconSizeTmp = iconSize ?? 80.0;
    return Icon(
      Icons.star_border_outlined,
      color: Colors.orange,
      size: iconSizeTmp,
    );
  }

  static Widget getAppBranner({double? iconSize}) {
    double iconSizeTmp = iconSize ?? 80.0;
    return Row(
      children: [
        Icon(
          Icons.star_border_outlined,
          color: Colors.orange,
          size: iconSizeTmp,
        ),
        CommonWidget.rowWidth(width: 10.0),
        Text("Buaberry.com", style: TextStyle(fontSize: CommonConstants.fontTopicSize, fontWeight: FontWeight.bold, color: Colors.white))
      ],
    );
  }
}
