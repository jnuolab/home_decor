import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/custom_button_list.dart';
import 'package:home_decor/widgets/custom_divider.dart';
import 'package:home_decor/widgets/custom_divider_vertical.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 5),
            Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.mainColor,
              ),
            ),
            CustomDivider(),
          ],
        ),
        actions: [
          // TODO: change image to edit
          Image.asset('assets/images/edit.png'),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.asset('assets/images/profile.png'),
            ),
            const Text(
              'Madison Smith',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                      text: 'ID: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: AppColors.secondColor,
                        decoration: TextDecoration.none,
                      )),
                  TextSpan(
                    text: '25030024',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: AppColors.secondColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomVerticalItem(
                    image: 'assets/images/profile-icon.png',
                    text: 'Profile',
                  ),
                  CustomDividerVertical(),
                  CustomVerticalItem(
                    image: 'assets/images/wishlist.png',
                    text: 'Wishlist',
                  ),
                  CustomDividerVertical(),
                  CustomVerticalItem(
                    image: 'assets/images/orders.png',
                    text: 'My Orders',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const CustomButtonList(
              title: 'Privacy Policy',
              icon: 'assets/images/privacy.png',
            ),
            const CustomButtonList(
              title: 'Payment Methods',
              icon: 'assets/images/credit-card.png',
            ),
            const CustomButtonList(
              title: 'Notifications',
              icon: 'assets/images/notifications.png',
            ),
            const CustomButtonList(
              title: 'Settings',
              icon: 'assets/images/settings.png',
            ),
            const CustomButtonList(
              title: 'Help',
              icon: 'assets/images/help.png',
            ),
            CustomButtonList(
              title: 'Logout',
              icon: 'assets/images/logout.png',
              onPressed: () {
                print('Hello!, I am onPressed Function');
                // TODO: write function show dialog Are you sure you want to log out? cancel and logout
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomVerticalItem extends StatelessWidget {
  final String image;
  final String text;
  const CustomVerticalItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 10),
        Text(text),
      ],
    );
  }
}
