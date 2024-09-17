import 'package:flutter/material.dart';
import 'package:home_decor/screens/user_reviews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      // home: SearchScreen(),
      // home: FilterScreen(),
      // TODO: Tasks-week-2
      // home: CategoriesScreen(),
      // home: SubCategory(),
      // home: ProductScreen(),
      home: UserReviews(),
    );
  }
}
