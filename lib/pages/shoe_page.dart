import 'package:flutter/material.dart';
import 'package:nike_app/models/card_model.dart';
import 'package:nike_app/widgets/navigation_widget.dart';

class ShoePage extends StatelessWidget {
  final CardModel card;
  ShoePage(this.card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      label: Icon(Icons.arrow_back, size: 40),
                    ),
                  ],
                ),
                Image.network(card.image),
                Padding(
                  padding: EdgeInsetsGeometry.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(card.product_name), Text(card.description)],
                  ),
                ),
                BottomAppBar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(card.price.toString()),
                      Icon(Icons.shopping_cart_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// 4:50 hr
