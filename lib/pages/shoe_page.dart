import 'package:flutter/material.dart';
import 'package:nike_app/models/card_model.dart';
import 'package:nike_app/widgets/navigation_widget.dart';

class ShoePage extends StatelessWidget {
  final CardModel card;
  ShoePage(this.card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                      children: [
                        Text(
                          card.product_name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        Text(card.description, 
                        style: TextStyle(
                        fontSize: 30,
                      ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$' + card.price.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF2193b0),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// 4:50 hr
