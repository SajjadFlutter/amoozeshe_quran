import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

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
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Image.asset(
                  'assets/images/qurane_karim.png',
                  width: 230.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: width,
            height: height * 0.65,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                  const SizedBox(height: 30.0),
                  Column(
                    children: [
                      const CategoryButton(title: 'آموزش روخوانی'),
                      const CategoryButton(title: 'آموزش تجوید'),
                      const CategoryButton(title: 'آموزش حفظ'),
                      GeneralButtons(primaryColor: primaryColor),
                      // Container(
                      //   width: width,
                      //   height: 60.0,
                      //   margin: const EdgeInsets.only(
                      //     right: 25.0,
                      //     left: 25.0,
                      //     bottom: 15.0,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     boxShadow: [
                      //       BoxShadow(
                      //           color: Colors.grey.shade300, blurRadius: 10.0),
                      //     ],
                      //   ),
                      //   child: ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //       backgroundColor: Colors.white,
                      //       elevation: 0,
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(50.0),
                      //         // side: BorderSide(width: 2, color: primaryColor),
                      //       ),
                      //     ),
                      //     onPressed: () {
                      //       var route = MaterialPageRoute(
                      //         builder: (context) => const AboutUsScreen(),
                      //       );
                      //       Navigator.push(context, route);
                      //     },
                      //     child: Text(
                      //       'درباره ما',
                      //       style: TextStyle(color: Colors.grey.shade800),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralButtons extends StatelessWidget {
  const GeneralButtons({
    super.key,
    required this.primaryColor,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        right: 25.0,
        left: 25.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () async {
                  // final Uri url =
                  //     Uri.parse('https://eitaa.com/application_support_1');
                  // if (!await launchUrl(url,
                  //     mode: LaunchMode.externalApplication)) {
                  //   throw 'Could not launch $url';
                  // }
                },
                child: Container(
                  width: 65.0,
                  height: 65.0,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Icon(
                    Icons.headset_mic_rounded,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                'پشتیبانی',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 65.0,
                height: 65.0,
                margin: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Icon(
                  Icons.share,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              const Text(
                'اشتراک گذاری',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              var route = MaterialPageRoute(
                builder: (context) => const AboutUsScreen(),
              );
              Navigator.push(context, route);
            },
            child: Column(
              children: [
                Container(
                  width: 65.0,
                  height: 65.0,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Icon(
                    Icons.info_outline_rounded,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'درباره ما',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
