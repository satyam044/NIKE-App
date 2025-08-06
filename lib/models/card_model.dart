class CardModel {
  final String product_name;
  final String description;
  final List<int> sizes;
  final double price;
  final String image;

  CardModel({
    required this.product_name,
    required this.description,
    required this.sizes,
    required this.price,
    required this.image,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      product_name: json['product_name'],
      description: json['description'],
      sizes: List<int>.from(json['sizes']),
      price: (json['price'] as num).toDouble(),
      image: json['image'],
    );
  }

}