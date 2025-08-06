import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

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
