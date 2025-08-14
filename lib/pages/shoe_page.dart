import 'package:flutter/material.dart';
import 'package:nike_app/widgets/navigation_widget.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavigationWidget(),
          SizedBox(height: 20),
          Text("Nike Shoe Name"),
        ],
      ),
    );
  }
}

// 4:50 hr