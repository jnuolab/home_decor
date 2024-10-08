import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  // FilterScreen
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> _items = ['Living Room', 'Decorative Light', 'Bed Room'];
  double value = 1;
  // int? _sliding = 0;
  final List _categories = [
    'Bedroom',
    'Living Room',
    'Kitchen',
    'Office',
    'Dining Room'
  ];
  final List _products = [
    'Safa',
    'Tables',
    'Cupboards',
    'Office Chairs',
    'Desktop Lamp',
    'Puff Chair',
    'Decor',
    'Nightstand'
  ];
  final List _colors = [
    const Color.fromRGBO(179, 161, 254, 1),
    const Color.fromRGBO(160, 192, 254, 1),
    const Color.fromRGBO(90, 189, 211, 1),
    const Color.fromRGBO(236, 111, 27, 1),
    const Color.fromRGBO(44, 44, 44, 1),
    const Color.fromRGBO(225, 214, 214, 1),
  ];

  void _onPressed() {
    showModalBottomSheet(
        context: context,
        constraints: const BoxConstraints(
          minWidth: 400,
        ),
        builder: (ctx) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 15),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: const Text(
                          'Filter',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(243, 182, 163, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  const Text(
                    'Price Range',
                    style: TextStyle(
                      color: Color.fromRGBO(243, 182, 163, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  CupertinoSlider(
                    value: value,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    onChanged: (newRating) {
                      setState(() {
                        if (kDebugMode) {
                          print(newRating);
                        }
                        value = newRating;
                      });
                    },
                    // label: "$minValue",
                  ),
                  // Build Slider
                  const Text(
                    'Categories',
                    style: TextStyle(
                      color: Color.fromRGBO(243, 182, 163, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Wrap(
                    spacing: 5,
                    children: List.generate(
                      _categories.length,
                      (index) => ChoiceChip(
                          label: Text(_categories[index]), selected: false),
                    ),
                  ),
                  // Build Categories
                  const Text(
                    'Products',
                    style: TextStyle(
                      color: Color.fromRGBO(243, 182, 163, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Wrap(
                    spacing: 5,
                    children: List.generate(
                      _products.length,
                      (index) => ChoiceChip(
                          label: Text(_products[index]), selected: false),
                    ),
                  ),
                  // Build Products
                  const Text(
                    'Colors',
                    style: TextStyle(
                      color: Color.fromRGBO(243, 182, 163, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: List.generate(
                      _colors.length,
                      (index) => CustomBuildColor(
                        color: _colors[index],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  Center(
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      onPressed: () {},
                      color: const Color.fromRGBO(243, 182, 163, 1),
                      child: const Text(
                        'Apply',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Color.fromRGBO(243, 182, 163, 1),
        ),
        title: const Text(
          'Auxiliary Furniture',
          style: TextStyle(
            color: Color.fromRGBO(243, 182, 163, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            // padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 182, 163, 1),
              borderRadius: BorderRadius.circular(35),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.search),
              onPressed: _onPressed,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                constraints: const BoxConstraints(maxHeight: 50),
                child: ListView.builder(
                  itemCount: _items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(
                          _items[index],
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(243, 182, 163, .5),
                          ),
                        ),
                        const SizedBox(width: 20),
                        _items.length - 1 == index
                            ? const SizedBox()
                            : const Text('|'),
                        const SizedBox(width: 20),
                      ],
                    );
                  },
                ),
              ),
            ),
            // Expanded(child: Text('hello'))

            // ChoiceChip(label: Text("label"), selected: true),
          ],
        ),
      ),
      // body:
    );
  }
}

class CustomBuildColor extends StatelessWidget {
  final Color color;
  const CustomBuildColor({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        // border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}
