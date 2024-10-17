import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/screens/filter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Material App',
      // Logic Task
      // Tasks #1
      home: FilterScreen(),
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
      // TODO: Not Found item to take the help page
      // home: HelpAndFaqs(),
      // home: HelpSearch(),
      // home: CustomerService(),
      // TODO: Not Found item to take the help page
      // home: Assistant(),
      // home: Profile(),
    );
  }
}
