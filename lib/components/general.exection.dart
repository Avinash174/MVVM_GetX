import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/color/app_color.dart';

class GenaralExeption extends StatefulWidget {
  final VoidCallback onPress;
  const GenaralExeption({super.key, required this.onPress});

  @override
  State<GenaralExeption> createState() => _GenaralExeptionState();
}

class _GenaralExeptionState extends State<GenaralExeption> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * .15,
          ),
          const Icon(
            Icons.cloud_off,
            size: 50,
            color: AppColor.redColor,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Center(
              child: Text(
                'general_exception'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: Get.height * .06,
              width: Get.width * .26,
              decoration: const BoxDecoration(
                color: AppColor.pinkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
