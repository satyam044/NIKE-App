import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70),
              SvgPicture.asset('assets/images/logo.svg', height: 100),
              Text(
                "NIKE",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              FittedBox(
                child: Text(
                  "JUST DO IT.",
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 10,
                    fontWeight: FontWeight.w200,
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
