import 'package:flutter/material.dart';
import 'package:home_decor/models/product.dart';
import 'package:home_decor/widgets/custom_app_bar.dart';
import 'package:home_decor/widgets/custom_bottom_navigation_bar.dart';
import 'package:home_decor/widgets/custom_list_view.dart';

class SubCategory extends StatelessWidget {
  SubCategory({super.key});

  final List<String> categoriesList = [
    'Living Room',
    'Decorative Light',
    'Bed'
  ];

  final List<Product> products = [
    Product(
      image: 'assets/images/1.png',
      title: 'Single Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 294.00,
    ),
    Product(
      image: 'assets/images/2.png',
      title: 'Green Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 285.00,
    ),
    Product(
      image: 'assets/images/3.png',
      title: 'Brwon Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 280.00,
    ),
    Product(
      image: 'assets/images/4.png',
      title: 'King Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 405.00,
    ),
    Product(
      image: 'assets/images/1.png',
      title: 'Single Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 294.00,
    ),
    Product(
      image: 'assets/images/2.png',
      title: 'Green Bed',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      price: 285.00,
    ),
  ];

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
                  child: CustomListView(categoriesList: categoriesList)),
              const SizedBox(height: 20),
              Expanded(
                flex: 9,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 3 / 5,
                  ),
                  itemBuilder: (ctx, index) {
                    return CustomSubCategoryItem(
                      product: products[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
