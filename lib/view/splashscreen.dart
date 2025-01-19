import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:mvvm_getx/res/assets/icons/icons.dart';
import 'package:mvvm_getx/res/assets/images/images.dart';
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
          'Home Screen'.tr,
          style: const TextStyle(
            color: AppColor.whiteColor,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: const AssetImage(
                ImageAssets.firstImage,
              ),
              height: Get.height * .2,
              width: Get.width * .5,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.pinkColor,
        onPressed: () {
          Utils.toastCenterMessage(
            'message',
          );
        },
        child: Image(
          image: const AssetImage(
            IconAssets.playIcon,
          ),
          height: Get.height * .02,
          width: Get.width * .2,
        ),
      ),
    );
  }
}
