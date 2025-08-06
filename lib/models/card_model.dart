class CardModel {
  final String product_name;
  final String description;
  final int sizes;
  final double price;
  final String image;

  CardModel({
    required this.product_name,
    required this.description,
    required this.sizes,
    required this.price,
    required this.image,
  });

  factory CardModel.fromJson(Map<dynamic, dynamic> json) {
    return CardModel(
      product_name: json['product_name'],
      description: json['description'],
      sizes: json['sizes'],
      price: json['price'],
      image: json['image'],
    );
  }
}