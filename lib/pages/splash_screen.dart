import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2193b0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset('assets/images/logo.png', height: 100),
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
                ImageTransition(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageTransition extends StatefulWidget {
  const ImageTransition({super.key});

  @override
  State<ImageTransition> createState() => _ImageTransitionState();
}

class _ImageTransitionState extends State<ImageTransition> {
  final List<String> _imagePaths = [
    'assets/images/splashShoes.webp',
    'assets/images/splashClothes.png',
    'assets/images/logo.png',
  ];

  int _currentIdx = 0;

  @override
  void initState() {
    super.initState();
    _startImageTransition();
  }

  void _startImageTransition() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_currentIdx < _imagePaths.length - 1) {
        setState(() {
          _currentIdx++;
        });
      } else {
        timer.cancel();
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: Image.asset(
        _imagePaths[_currentIdx],
        key: ValueKey<int>(_currentIdx),
      ),
    );
  }
}
