import 'package:flutter/material.dart';
import 'package:nike_app/widgets/navigation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NavigationWidget(),
      ),
    );
  }
}
