import 'package:flutter/material.dart';

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
      const Duration(seconds: 3),
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
      backgroundColor: primaryColor,
      body: SizedBox(
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
                  width: 250.0,
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
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                'لطفا صبر کنید...',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
