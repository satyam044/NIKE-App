import 'package:flutter/material.dart';
import 'package:nike_app/pages/home_page.dart';
import 'package:nike_app/pages/shoe_page.dart';

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
                Image.asset('assets/images/splashShoes.webp'),
                Container(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.black,
                      ),
                      child: Text(
                        'Go',
                        style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400),
                      ), // Explicitly set text color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
