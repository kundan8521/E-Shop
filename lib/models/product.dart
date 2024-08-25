class Product {
  final int id;
  final String title;
  final double price;
  final double discountPercentage;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.discountPercentage,
    required this.imageUrl,
  });

  double get discountedPrice {
    return price - (price * discountPercentage / 100);
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      discountPercentage: json['discountPercentage'].toDouble(),
      imageUrl: json['thumbnail'],
    );
  }
}
