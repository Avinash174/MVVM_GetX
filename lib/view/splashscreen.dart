import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:mvvm_getx/data/app_exection.dart';
import 'package:mvvm_getx/res/color/app_color.dart';
import 'package:mvvm_getx/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.pinkColor,
        title: Text(
          'email_hint'.tr,
          style: const TextStyle(
            color: AppColor.whiteColor,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.pinkColor,
        onPressed: () {
          Utils.toastCenterMessage(
            'message',
          );
        },
        child: const Icon(
          Icons.play_arrow_rounded,
        ),
      ),
    );
  }
}
