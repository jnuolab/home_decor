import 'package:flutter/material.dart';
import 'package:home_decor/screens/categories.dart';
import 'package:home_decor/screens/filter.dart';
import 'package:home_decor/screens/product.dart';
import 'package:home_decor/screens/search.dart';
import 'package:home_decor/screens/sub_category.dart';
import 'package:home_decor/screens/user_reviews.dart';
import 'package:home_decor/features/cart/screens/cart.dart';
import 'package:home_decor/screens/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // Tasks #1
      // home: FilterScreen(),
      // home: SearchScreen(),
      // Tasks #2
      // home: CategoriesScreen(),
      // home: SubCategory(),
      // home: ProductScreen(),
      home: UserReviews(),
      // Tasks #3
      // Tasks #4
    );
  }
}
