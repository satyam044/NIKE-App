import 'package:flutter/material.dart';
import 'package:nike_app/models/card_model.dart';
import 'package:nike_app/pages/shoe_page.dart';

class CardWidget extends StatelessWidget {
  final CardModel card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push((context), MaterialPageRoute(builder: (context) => ShoePage(card)));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              // Product image
              Positioned.fill(
                child: Image.network(
                  card.image,
                  fit: BoxFit.cover,
                ),
              ),

              // Gradient overlay
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),

              // Product info
              Positioned(
                bottom: 12,
                left: 12,
                right: 12,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      // Text info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            card.product_name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "\$${card.price}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
