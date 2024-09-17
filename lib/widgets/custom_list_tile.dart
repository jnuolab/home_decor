import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  const CustomListTile({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
