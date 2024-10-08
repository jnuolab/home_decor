class Product {
  final String image;
  final String title;
  final String description;
  final double price;
  final int? rating;

  Product({
    this.rating,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}
