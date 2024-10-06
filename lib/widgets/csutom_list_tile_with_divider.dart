import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';

class CustomListTileWithDivider extends StatelessWidget {
  const CustomListTileWithDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'Lorem ipsum dolor sit amet?',
            style: TextStyle(
                color: AppColors.mainColor, fontWeight: FontWeight.bold),
          ),
          trailing: Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              )),
        ),
        const Divider(color: AppColors.mainColor),
      ],
    );
  }
}
