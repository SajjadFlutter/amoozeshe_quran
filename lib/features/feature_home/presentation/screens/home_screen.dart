import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../widgets/category_button.dart';
import 'about_us_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // device size
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    // theme
    // var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;

    MyApp.changeColor(
      Colors.transparent,
      Brightness.light,
      Colors.transparent,
      Brightness.dark,
    );
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: width,
            height: height,
            color: primaryColor,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/patern.png',
                color: Colors.white.withOpacity(0.25),
              ),
            ),
          ),
          Container(
            width: width,
            height: height * 0.63,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40.0),
                const Text(
                  'دوره های آموزش قرآن کریم',
                  style: TextStyle(
                    fontFamily: 'Nabi',
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(height: 35.0),
                Column(
                  children: [
                    const CategoryButton(title: 'روخوانی'),
                    const CategoryButton(title: 'تجوید'),
                    const CategoryButton(title: 'حفظ'),
                    const SizedBox(height: 8.0),
                    Container(
                      width: width,
                      height: 60.0,
                      margin: const EdgeInsets.only(
                        right: 25.0,
                        left: 25.0,
                        bottom: 15.0,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(width: 1.2, color: primaryColor),
                          ),
                        ),
                        onPressed: () {
                          var route = MaterialPageRoute(
                            builder: (context) => const AboutUsScreen(),
                          );

                          Navigator.push(context, route);
                        },
                        child: Text(
                          'درباره ما',
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 46.0),
              child: Image.asset(
                'assets/images/qurane_karim.png',
                width: 230.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
