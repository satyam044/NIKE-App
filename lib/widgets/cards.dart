import 'package:flutter/material.dart';
import 'package:nike_app/models/card_model.dart';

class CardWidget extends StatelessWidget {
  final CardModel card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            card.image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  card.product_name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(card.description),
                const SizedBox(height: 8),
                Text("Available Sizes: ${card.sizes.join(', ')}"),
                const SizedBox(height: 4),
                Text("Price: \$${card.price.toStringAsFixed(2)}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
