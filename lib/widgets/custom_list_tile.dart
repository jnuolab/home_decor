import 'package:flutter/material.dart';
<<<<<<< HEAD

class CustomListTile extends StatelessWidget {
  final String name;
  const CustomListTile({
    super.key,
    required this.name,
=======
import 'package:home_decor/core/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final String? image;
  final String title;
  final bool? withArrow;
  const CustomListTile({
    super.key,
    this.image,
    required this.title,
    this.withArrow = true,
>>>>>>> tasks-week-4
  });

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        tileColor: const Color.fromRGBO(243, 182, 163, .5),
        leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(243, 182, 163, 1),
                borderRadius: BorderRadius.circular(35)),
            child: const Icon(Icons.search_rounded)),
        title: Text(name),
      ),
=======
    return ListTile(
      leading: (image == null)
          ? null
          : Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.mainColor,
              ),
              child: Image.asset(image!),
            ),
      // leading: Icon(Icons.favorite),
      title: Text(title),
      trailing:
          withArrow! ? const Icon(Icons.keyboard_arrow_down_outlined) : null,
>>>>>>> tasks-week-4
    );
  }
}
