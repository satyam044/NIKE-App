import 'package:flutter/material.dart';
import 'package:nike_app/widgets/banner_widget.dart';
import 'package:nike_app/widgets/navigation_widget.dart';
import 'package:nike_app/widgets/searchbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            NavigationWidget(),
            SizedBox(height: 20),
            Padding(padding: const EdgeInsets.all(18.0), child: SearchBarWidget()),
            Padding(padding: const EdgeInsets.all(18.0), child: BannerWidget()),
          ],
        ),
      ),
    );
  }
}
