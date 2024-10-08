import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';

class CustomButtonList extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onPressed;
  const CustomButtonList({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(icon),
          ),
          const SizedBox(width: 20),
          Text(title),
        ],
      ),
    );
  }
}
