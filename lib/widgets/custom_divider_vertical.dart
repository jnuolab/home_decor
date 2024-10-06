import 'package:flutter/material.dart';

class CustomDividerVertical extends StatelessWidget {
  const CustomDividerVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: 1,
        height: 50,
        color: Colors.white,
      ),
    );
  }
}
