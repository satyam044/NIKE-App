import 'package:flutter/material.dart';
import 'package:nike_app/widgets/navigation_widget.dart';

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
            Padding(padding: const EdgeInsets.all(18.0), child: SearchBar()),
            Padding(padding: const EdgeInsets.all(18.0), child: Banner()),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ClipRRect(
        child: Image.asset('assets/images/NIKE BANNER.jpg'),
        borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
      ),
    );
  }
}
