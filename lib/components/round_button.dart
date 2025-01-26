import 'package:flutter/material.dart';
import 'package:mvvm_getx/res/color/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.loading = false,
    required this.title,
    this.height = 50,
    this.width = 60,
    required this.onPress,
    this.textColor = AppColor.whiteColor,
    this.buttonColor = AppColor.pinkColor,
  });

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress; // Corrected type to VoidCallback
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // Trigger the onPress callback when tapped
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator()
              : Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: textColor),
                ),
        ),
      ),
    );
  }
}
