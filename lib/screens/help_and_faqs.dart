import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/screens/customer_service.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_decor/widgets/custom_button.dart';
import 'package:home_decor/widgets/custom_list_tile.dart';

class HelpAndFaqs extends StatelessWidget {
  const HelpAndFaqs({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'How Can We Help You?',
                style: TextStyle(fontSize: 17, color: AppColors.secondColor),
              ),
              const SizedBox(height: 15),
              const Divider(color: AppColors.mainColor, height: 3),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: CustomButton(text: 'FAQ')),
                  SizedBox(width: 20),
                  Expanded(
                      child: CustomButton(text: 'Contact US', isActive: true)),
                ],
              ),
              CustomListTile(
                image: 'assets/images/customer_service.png',
                title: 'Customer Service',
                onPressed: () => Get.to(
                  () => const CustomerService(),
                ),
              ),
              const CustomListTile(
                image: 'assets/images/website.png',
                title: 'Website',
              ),
              const CustomListTile(
                image: 'assets/images/facebook.png',
                title: 'Facebook',
              ),
              const CustomListTile(
                image: 'assets/images/whatsapp.png',
                title: 'Whatsapp',
              ),
              const CustomListTile(
                image: 'assets/images/instagram.png',
                title: 'Instagram',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
