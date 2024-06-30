import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../main.dart';
import '../../../feature_home/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        var route = MaterialPageRoute(builder: (context) => const HomeScreen());
        Navigator.pushReplacement(context, route);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // device size
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    // theme
    // var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;
    // change color navbar status
    MyApp.changeColor(
        Colors.transparent, Brightness.light, primaryColor, Brightness.light);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5534a5),
              Color(0xFF963AF8),
            ],
          ),
        ),
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Column(
              children: [
                Image.asset(
                  'assets/images/qurane_karim.png',
                  width: 230.0,
                  color: Colors.white,
                ),
                const SizedBox(height: 35.0),
                const Text(
                  'آموزش قرآن کریم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Nabi',
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: LoadingAnimationWidget.hexagonDots(
                  color: Colors.white, size: 38.0),
            ),
          ],
        ),
      ),
    );
  }
}
