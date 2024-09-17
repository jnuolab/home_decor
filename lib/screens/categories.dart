import 'package:flutter/material.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/widgets/custom_app_bar.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width);
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
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomContainer(
                            width: 190, height: 86, title: 'Decorative Light'),
                        CustomContainer(width: 190, height: 256, title: 'Beds'),
                        CustomContainer(
                            width: 190, height: 140, title: 'Chairs'),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CustomContainer(width: 170, height: 145, title: 'Safa'),
                        CustomContainer(
                            width: 170, height: 137, title: 'Tables'),
                        CustomContainer(
                            width: 170, height: 204, title: 'Cupboard'),
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
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
          style: const TextStyle(fontSize: 26, color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
