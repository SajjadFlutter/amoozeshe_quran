import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // ارتفاع AppBar را تنظیم می‌کند
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple], // رنگ‌های گرادینت
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            title: const Text('Gradient AppBar'),
            backgroundColor: Colors.transparent, // پس‌زمینه شفاف
            elevation: 0, // بدون سایه
          ),
        ),
      ),
      body: const Center(
        child: Text('Content goes here'),
      ),
    );
  }
}