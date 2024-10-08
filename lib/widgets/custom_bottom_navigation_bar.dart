import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex: 1, items: [
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          'assets/svgs/home.svg',
          width: 24,
          // height: 24,
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          'assets/svgs/categories.svg',
          width: 24,
          // height: 24,
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          'assets/svgs/cart.svg',
          width: 24,
          // height: 24,
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          'assets/svgs/wishlist.svg',
          width: 24,
          // height: 24,
        ),
      ),
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          'assets/svgs/profile.svg',
          width: 24,
          // height: 24,
        ),
      ),
    ]);
  }
}
