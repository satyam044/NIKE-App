import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/card_model.dart';

class CardsContainerWidget extends StatefulWidget {
  const CardsContainerWidget({super.key});

  @override
  State<CardsContainerWidget> createState() => _CardsContainerWidgetState();
}

class _CardsContainerWidgetState extends State<CardsContainerWidget> {
  Future<List<CardModel>> loadCardData() async {
    final String response = await rootBundle.loadString(
      'lib/data/nike_data.json',
    );
    final List<dynamic> data = jsonDecode(response);
    return data.map((json) => CardModel.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CardModel>>(
      future: loadCardData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("No cards available"));
        }

        final cards = snapshot.data!;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cards.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemBuilder: (context, index) => CardWidget(card: cards[index]),
        );
      },
    );
  }
}

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
