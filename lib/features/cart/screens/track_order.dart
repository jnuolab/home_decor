import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/features/cart/widgets/custom_card_container.dart';
import 'package:home_decor/features/cart/widgets/custom_title.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Track Order',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitle(title: 'Shipping Address'),
              const CustomCardContainer(),
              Image.asset(
                'assets/images/map.png',
                width: double.infinity,
              ),
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
              const SizedBox(height: 20),
              const Divider(
                color: AppColors.mainColor,
                height: 3,
              ),
              const SizedBox(height: 20),
              const CustomTimline(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTimline extends StatelessWidget {
  const CustomTimline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTimelineItem(
            title: 'Your order has been accepted', number: 2),
        const CustomTimelineItem(
            title: 'Order has been processed and is ready to \nbe shipped',
            number: 21),
        const CustomTimelineItem(
            title: 'The delivery is on his way', number: 23),
        const CustomTimelineItem(
            title: 'Your order has been delivered', number: 15),
        const SizedBox(height: 20),
        MaterialButton(
          onPressed: () {},
          color: AppColors.mainColor,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text(
              'Return home',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTimelineItem extends StatelessWidget {
  final String title;
  final int number;
  const CustomTimelineItem({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                softWrap: false,
                style:
                    const TextStyle(fontSize: 13, color: AppColors.secondColor),
              ),
            ],
          ),
          Text(
            '$number min',
            style: const TextStyle(fontSize: 14, color: AppColors.mainColor),
          ),
        ],
      ),
    );
  }
}
