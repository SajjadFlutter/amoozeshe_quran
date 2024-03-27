import 'package:amoozeshe_quran/config/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/feature_intro/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.theme,
      title: 'آموزش قرآن کریم',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('fa'),
      supportedLocales: const [
        Locale('fa'), // farsi
        Locale('en'), // English
      ],
      home: const SplashScreen(),
    );
  }

  static void changeColor(
    Color color,
    Brightness brightness,
    Color navColor,
    Brightness navBrightness,
  ) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: brightness,
      systemNavigationBarColor: navColor,
      systemNavigationBarIconBrightness: navBrightness,
    ));
  }
}
