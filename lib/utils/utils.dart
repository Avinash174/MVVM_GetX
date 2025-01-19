import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:mvvm_getx/res/color/app_color.dart';

class Utils {
  static void fieldFocusCharge(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
    );
  }

  static toastBottomMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static toastCenterMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColor.blackColor,
      textColor: AppColor.tostMsgColor,
      gravity: ToastGravity.CENTER,
    );
  }

  static snackBar(String title, String meassage) {
    Get.snackbar(title, meassage);
  }
}
