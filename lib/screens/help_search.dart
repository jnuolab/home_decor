import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/csutom_list_tile_with_divider.dart';
import 'package:home_decor/widgets/custom_button.dart';
import 'package:home_decor/widgets/custom_divider.dart';
import 'package:home_decor/widgets/custom_list_tile.dart';

class HelpSearch extends StatelessWidget {
  const HelpSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Help & FAQS',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'How Can We Help You?',
                  style: TextStyle(fontSize: 17, color: AppColors.secondColor),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: CustomButton(text: 'FAQ')),
                    SizedBox(width: 20),
                    Expanded(
                        child:
                            CustomButton(text: 'Contact US', isActive: true)),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: CustomButton(text: 'General', isActive: true)),
                    SizedBox(width: 20),
                    Expanded(child: CustomButton(text: 'Account')),
                    SizedBox(width: 20),
                    Expanded(child: CustomButton(text: 'Services')),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: AppColors.mainColor.withOpacity(0.3),
                    contentPadding: const EdgeInsets.only(left: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          'assets/svgs/filter.svg',
                        ),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const CustomDivider(),
                const CustomListTile(title: 'Lorem ipsum dolor sit amet?'),
                const CustomDivider(),
                const SizedBox(height: 15),
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.'),
                const SizedBox(height: 5),
                const CustomDivider(),
                const CustomListTileWithDivider(),
                const CustomListTileWithDivider(),
                const CustomListTileWithDivider(),
                const CustomListTileWithDivider(),
                const CustomListTileWithDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
