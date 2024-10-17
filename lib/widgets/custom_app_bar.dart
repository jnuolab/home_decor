import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/common/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins-Bold',
            color: AppColors.mainColor,
          ),
        ),
        actions: [
          Container(
            width: 30,
            height: 30,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(30)),
            child: SvgPicture.asset(
              'assets/svgs/search.svg',
              fit: BoxFit.fill,
            ),
          ),
        ]);
  }
}
