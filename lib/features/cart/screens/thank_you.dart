import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/features/cart/screens/ooops.dart';
import 'package:home_decor/features/cart/screens/track_order.dart';
import 'package:home_decor/screens/filter.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.to(() => Get.back());
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Thank You',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins-Bold',
            color: AppColors.mainColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/svgs/edit.svg',
            fit: BoxFit.fill,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.asset('assets/images/check_progress.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Thank You',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.mainColor,
            ),
          ),
          const Text(
            'Your order is complete',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              // fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 100),
          Row(
            children: [
              MaterialButton(
                onPressed: () {
                  Get.to(() => const FilterScreen());
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.secondColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text('Return Home'),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(() => const TrackOrder());
                },
                color: AppColors.mainColor,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Track Order',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
