import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/features/cart/screens/cart_details.dart';

import '../../../common/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins-Bold',
            color: AppColors.mainColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const CartDetails());
            },
            icon: SvgPicture.asset(
              'assets/svgs/edit.svg',
              fit: BoxFit.fill,
            ),
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
            child: Image.asset('assets/images/cart.png'),
          ),
          const Text(
            'There are no items \nin your cart',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
