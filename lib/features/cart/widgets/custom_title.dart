import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/common/app_colors.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final bool withIcon;
  const CustomTitle({
    super.key,
    required this.title,
    this.withIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppColors.mainColor),
          ),
          withIcon
              ? SvgPicture.asset('assets/svgs/edit.svg')
              : const SizedBox(),
        ],
      ),
    );
  }
}
