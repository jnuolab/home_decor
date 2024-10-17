import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/models/product.dart';
import 'package:home_decor/screens/user_reviews.dart';
import 'package:home_decor/widgets/custom_app_bar.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_decor/widgets/custom_list_view.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final List<String> categoriesList = [
    'Living Room',
    'Decorative Light',
    'Bed'
  ];
  final product = Product(
    rating: 4,
    image: 'assets/images/7.png',
    title: 'Trundle Bed',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    price: 420.00,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomAppBar(title: 'Bedroom'),
              const SizedBox(height: 30),
              Expanded(
                flex: 1,
                child: CustomListView(categoriesList: categoriesList),
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor.withOpacity(0.2),
                      ),
                      child: Image.asset(product.image),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      product.description,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Divider(
                      color: AppColors.mainColor,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price}',
                          style: const TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 20,
                              fontFamily: 'Poppins-Bold'),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Get.to(() => const UserReviews());
                          },
                          child: Row(
                            children: List.generate(
                              5,
                              (index) {
                                if ((5 - index) > product.rating!) {
                                  return SvgPicture.asset(
                                    'assets/svgs/empty_star.svg',
                                    width: 18,
                                  );
                                } else {
                                  return SvgPicture.asset(
                                    'assets/svgs/star.svg',
                                    width: 18,
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          color: AppColors.mainColor,
                          onPressed: () {},
                          child: const Text(
                            'Preview',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins-Bold',
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          color: AppColors.mainColor,
                          onPressed: () {},
                          child: const Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: 'Poppins-Bold',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
