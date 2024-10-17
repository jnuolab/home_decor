import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/custom_divider.dart';
import 'package:home_decor/widgets/custom_list_tile_with_subtitle.dart';

class CustomerService extends StatelessWidget {
  const CustomerService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Customer Service',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello! I\'m here to assist you',
              style: TextStyle(fontSize: 17, color: AppColors.secondColor),
            ),
            SizedBox(height: 5),
            CustomDivider(),
            SizedBox(height: 5),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.'),
            SizedBox(height: 5),
            CustomDivider(),
            CustomListTileWithSubtitle(
              title: 'How can we help you?',
              subTitle: 'Support',
            ),
            CustomDivider(),
            CustomListTileWithSubtitle(
              title: 'Help center',
              subTitle: 'General Information',
            ),
          ],
        ),
      ),
    );
  }
}
