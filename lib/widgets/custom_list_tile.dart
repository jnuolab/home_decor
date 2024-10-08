import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final String? image;
  final String title;
  final bool? withArrow;
  const CustomListTile({
    super.key,
    this.image,
    required this.title,
    this.withArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (image == null)
          ? null
          : Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.mainColor,
              ),
              child: Image.asset(image!),
            ),
      // leading: Icon(Icons.favorite),
      title: Text(title),
      trailing:
          withArrow! ? const Icon(Icons.keyboard_arrow_down_outlined) : null,
    );
  }
}
