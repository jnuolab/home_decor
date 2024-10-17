import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    this.isActive = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.mainColor.withOpacity(0.3),
      disabledColor:
          isActive ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
      clipBehavior: Clip.none,
      child: Text(
        text,
        style: TextStyle(
          color: isActive
              ? AppColors.secondColor
              : AppColors.secondColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
