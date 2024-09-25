import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/features/cart/widgets/custom_card_container.dart';
import 'package:home_decor/features/cart/widgets/custom_title.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins-Bold',
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitle(title: 'Shipping Address'),
              const CustomCardContainer(),
              const CustomTitle(title: 'Order Summary'),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomItem(title: 'Dining Table Set', number: 1),
                      CustomItem(title: 'Bedroom Dresser', number: 2),
                      CustomItem(title: 'Adjustable Lamp', number: 3),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '\$985.00',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
              const CustomTitle(title: 'Payment Method', withIcon: false),
              Container(
                color: AppColors.mainColor.withOpacity(0.2),
                child: Column(
                  children: [
                    const CustomCheckbox(
                        label: 'Cash on Delivery', value: true),
                    const CustomCheckbox(label: 'Paypal'),
                    const CustomCheckbox(label: 'Apple Pay'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomCheckbox(label: 'Credit Card'),
                        Container(
                          color: AppColors.whiteColor,
                          child: const Text('*** *** *** 67 /00 /000'),
                        ),
                        SvgPicture.asset('assets/svgs/edit.svg'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Delivery Time',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Estimated Delivery',
                    style: TextStyle(
                      color: AppColors.secondColor,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1 Hour, 25 mins',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: MaterialButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CheckoutScreen(),
                      ),
                    );
                  },
                  color: AppColors.mainColor,
                  child: const Text(
                    'Pay Now',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final String label;
  const CustomCheckbox({
    super.key,
    this.value = false,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (newValue) {},
          shape: const CircleBorder(),
        ),
        Text(label),
      ],
    );
  }
}

class CustomItem extends StatelessWidget {
  final String title;
  final int number;
  const CustomItem({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.secondColor,
          ),
        ),
        const SizedBox(width: 50),
        Text(
          '${number.toString()} items',
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.mainColor,
          ),
        ),
      ],
    );
  }
}
