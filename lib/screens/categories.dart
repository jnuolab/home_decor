import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/screens/sub_category.dart';
import 'package:home_decor/widgets/custom_app_bar.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: 'Bedroom'),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomContainer(
                            width: 170, height: 66, title: 'Decorative Light'),
                        CustomContainer(width: 170, height: 236, title: 'Beds'),
                        CustomContainer(
                            width: 170, height: 120, title: 'Chairs'),
                      ],
                    ),
                    // SizedBox(width: 10),
                    Column(
                      children: [
                        CustomContainer(width: 150, height: 105, title: 'Safa'),
                        CustomContainer(
                            width: 150, height: 117, title: 'Tables'),
                        CustomContainer(
                            width: 150, height: 184, title: 'Cupboard'),
                      ],
                    ),
                  ],
                ),
                CustomContainer(width: 370, height: 117, title: 'Decor'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  const CustomContainer({
    super.key,
    required this.width,
    required this.height,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.to(() => SubCategory());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(5),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
