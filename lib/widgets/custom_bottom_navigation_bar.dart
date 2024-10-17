import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:home_decor/features/cart/screens/cart.dart';
import 'package:home_decor/screens/categories.dart';
import 'package:home_decor/screens/filter.dart';
import 'package:home_decor/screens/profile.dart';
import 'package:home_decor/screens/sub_category.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const FilterScreen(),
    SubCategory(),
    const CartScreen(),
    const CategoriesScreen(),
    const Profile(),
  ];

  _onTap() {
    return Get.to(() => _children[_currentIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _onTap();
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/svgs/home.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/svgs/categories.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/svgs/cart.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/svgs/wishlist.svg',
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              'assets/svgs/profile.svg',
              width: 24,
            ),
          ),
        ]);
  }
}
