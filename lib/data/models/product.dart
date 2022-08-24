class Product {
  final String name;
  final String image;
  final num price;
  final String? description;
  final String category;
  final num rating;
  final bool isReady;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.description,
    required this.category,
    required this.rating,
    required this.isReady,
  });
}
