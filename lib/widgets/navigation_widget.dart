import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 12.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.menu, size: 30, color: Colors.black),
          ),
        ),
        title: Image.asset('assets/images/logo.png', height: 140,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              top: 12.0,
            ),
            child: Container(
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
