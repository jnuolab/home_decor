import 'package:flutter/material.dart';
import 'package:home_decor/core/app_colors.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';

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
                  CustomButton(text: 'FAQ'),
                  SizedBox(width: 20),
                  CustomButton(text: 'Contact US', isActive: true),
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

class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  const CustomListTile({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.mainColor,
        ),
        child: Image.asset(image),
      ),
      // leading: Icon(Icons.favorite),
      title: Text(title),
      trailing: const Icon(Icons.keyboard_arrow_down_outlined),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isActive;
  const CustomButton({
    super.key,
    required this.text,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: isActive
          ? AppColors.mainColor.withOpacity(.8)
          : AppColors.mainColor.withOpacity(0.5),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
      clipBehavior: Clip.none,
      child: Text(
        text,
        style: TextStyle(
          color: isActive
              ? AppColors.mainColor
              : AppColors.secondColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
