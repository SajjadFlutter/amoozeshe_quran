import 'package:flutter/material.dart';

import '../widgets/list_item.dart';

class ListLessonsScreen extends StatelessWidget {
  const ListLessonsScreen({super.key});

  static String title = '';
  static List dataList = [];

  @override
  Widget build(BuildContext context) {
    // theme
    var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(title, style: textTheme.labelLarge),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return LessonItem(index: index);
        },
        separatorBuilder: (context, index) => const Divider(height: 0.0),
        itemCount: dataList.length,
      ),
    );
  }
}
