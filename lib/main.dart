import 'package:flutter/material.dart';
import 'package:home_decor/screens/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      // home: HelpAndFaqs(),
      // home: HelpSearch(),
      // home: CustomerService(),
      // home: Assistant(),
      home: Profile(),
    );
  }
}
