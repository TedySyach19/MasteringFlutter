import 'package:flutter/material.dart';
import 'package:mastering_the_flutter/constants/colors.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({super.key, this.isResponsive = false, this.width});

  final bool isResponsive;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/button-one.png",
          ),
        ],
      ),
    );
  }
}
