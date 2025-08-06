import 'package:flutter/material.dart';

class CardsContainerWidget extends StatelessWidget {
  const CardsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardsWidget();
  }
}

class CardsWidget extends StatefulWidget {
  const CardsWidget({super.key});

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}