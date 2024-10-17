import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/common/app_colors.dart';
import 'package:home_decor/models/product.dart';
import 'package:home_decor/screens/product.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.categoriesList,
  });

  final List<String> categoriesList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            ' | ',
            style: TextStyle(color: AppColors.mainColor),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: categoriesList.length,
      itemBuilder: (context, index) {
        return Text(
          categoriesList[index],
          style: const TextStyle(fontSize: 16, color: AppColors.mainColor),
        );
      },
    );
  }
}

class CustomSubCategoryItem extends StatelessWidget {
  final Product product;
  const CustomSubCategoryItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.to(() => ProductScreen());
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.mainColor.withOpacity(0.2),
            ),
            child: Image.asset(
              product.image,
              width: 160,
              height: 160,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 15,
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
                const SizedBox(height: 5),
                const Divider(
                  color: AppColors.mainColor,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 15,
                          fontFamily: 'Poppins-Bold'),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.mainColor,
                          ),
                          padding: const EdgeInsets.all(3),
                          child: const Icon(
                            Icons.favorite,
                            size: 20,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.mainColor,
                          ),
                          padding: const EdgeInsets.all(3),
                          child: const Icon(
                            Icons.add,
                            size: 20,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
