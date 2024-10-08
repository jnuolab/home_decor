import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_decor/widgets/custom_button.dart';
import 'package:home_decor/widgets/custom_list_tile.dart';

class HelpAndFaqs extends StatelessWidget {
  const HelpAndFaqs({super.key});

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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'How Can We Help You?',
                style: TextStyle(fontSize: 17, color: AppColors.secondColor),
              ),
              SizedBox(height: 15),
              Divider(color: AppColors.mainColor, height: 3),
              SizedBox(height: 10),
              Row(
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
              ),
              CustomListTile(
                image: 'assets/images/website.png',
                title: 'Website',
              ),
              CustomListTile(
                image: 'assets/images/facebook.png',
                title: 'Facebook',
              ),
              CustomListTile(
                image: 'assets/images/whatsapp.png',
                title: 'Whatsapp',
              ),
              CustomListTile(
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
