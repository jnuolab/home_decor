import 'package:flutter/material.dart';
import 'package:home_decor/features/cart/screens/cart_details.dart';
import 'package:home_decor/features/cart/screens/checkout.dart';
import 'package:home_decor/features/cart/screens/ooops.dart';
import 'package:home_decor/features/cart/screens/thank_you.dart';
import 'package:home_decor/features/cart/screens/track_order.dart';
import 'package:home_decor/screens/assistant.dart';
import 'package:home_decor/screens/categories.dart';
import 'package:home_decor/screens/customer_service.dart';
import 'package:home_decor/screens/filter.dart';
import 'package:home_decor/screens/help_and_faqs.dart';
import 'package:home_decor/screens/help_search.dart';
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
      // home: UserReviews(),
      // Tasks #3
      // home: CartScreen(),
      // home: CartDetails(),
      // home: CheckoutScreen(),
      // home: ThankYou(),
      // home: OoopsScreen(),
      // home: TrackOrder(),
      // Tasks #4
      // home: HelpAndFaqs(),
      // home: HelpSearch(),
      // home: CustomerService(),
      // home: Assistant(),
      // home: Profile(),
    );
  }
}
