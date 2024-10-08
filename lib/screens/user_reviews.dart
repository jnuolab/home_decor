import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/widgets/custom_app_bar.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';

class UserReviews extends StatelessWidget {
  const UserReviews({super.key});

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
                CustomAppBar(title: 'User Reviews'),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '630 Reviews',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.secondColor,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.secondColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                CustomCard(),
                CustomCard(),
                CustomCard(),
                CustomCard(),
                CustomCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.mainColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/p1.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wade',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins-Bold',
                  ),
                ),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Tortor aenean suspendisse pretium nunc non facilisi.',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const Text('5'),
                        SvgPicture.asset('assets/svgs/star.svg')
                      ],
                    ),
                    Row(
                      children: [
                        const Text('654'),
                        SvgPicture.asset('assets/svgs/eye.svg')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
          //
        ],
      ),
    );
  }
}
