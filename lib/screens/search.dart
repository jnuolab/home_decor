import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          'Search',
          style: TextStyle(
            color: Color.fromRGBO(243, 182, 163, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffix: const Icon(Icons.filter_alt)),
              onChanged: (value) {
                if (kDebugMode) {
                  print(value);
                }
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Top Searched',
              style: TextStyle(
                color: Color.fromRGBO(243, 182, 163, 1),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const CustomListTile(name: 'Bed'),
            const CustomListTile(name: 'Lamp'),
            const CustomListTile(name: 'Plastic Plants'),
            const CustomListTile(name: 'Carpet'),
            const CustomListTile(name: 'Safa'),
            const CustomListTile(name: 'Blue Chairs'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromRGBO(243, 182, 163, .5),
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.catching_pokemon),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.favorite),
            ),
          ]),
    );
  }
}

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
