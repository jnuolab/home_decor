import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';

class CustomListTileWithSubtitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomListTileWithSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor),
          ),
          subtitle: Text(
            subTitle,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.mainColor,
            ),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
