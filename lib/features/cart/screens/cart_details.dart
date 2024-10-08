import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/features/cart/screens/checkout.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'My Cart',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomCart(
                image: 'assets/images/alejandrao_2.png',
                title: 'Serenity Nightstand',
              ),
              const CustomCart(
                image: 'assets/images/alejandrao_1.png',
                title: 'Bedroom Dresser',
              ),
              const CustomCart(
                image: 'assets/images/alejandrao_3.png',
                title: 'Blue Table Lamp',
              ),
              const Divider(
                color: AppColors.mainColor,
                height: 3,
              ),
              const SizedBox(height: 20),
              const CustomItem(
                title: 'Subtotal',
                price: 130.50,
              ),
              const CustomItem(
                title: 'Tax and Fees',
                price: 22.50,
              ),
              const CustomItem(
                title: 'Delivery',
                price: 0.0,
              ),
              const Divider(
                color: AppColors.mainColor,
                height: 3,
              ),
              const CustomItem(
                title: 'Total',
                price: 153.0,
                isBold: true,
              ),
              const Spacer(),
              MaterialButton(
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
                  'Check Out',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontFamily: 'Poppins',
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

class CustomItem extends StatelessWidget {
  final String title;
  final double price;
  final bool isBold;
  const CustomItem({
    super.key,
    required this.title,
    required this.price,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: AppColors.secondColor,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            '\$${price.toString()}',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.mainColor,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCart extends StatelessWidget {
  final String image;
  final String title;
  const CustomCart({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFFF2F2F2),
      width: double.infinity,
      height: 120,
      child: Row(
        children: [
          Image.asset(image, width: 80),
          const SizedBox(width: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 5),
                  const Text('1'),
                  const SizedBox(width: 5),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 70, height: 20),
          const Text('51\$'),
        ],
      ),
    );
  }
}
