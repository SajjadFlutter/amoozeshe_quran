import 'package:flutter/material.dart';

import '../../../feature_list_lessons/presentation/screens/list_lessons_screen.dart';
import 'lesson_screen.dart';

class PageViewLesson extends StatelessWidget {
  PageViewLesson({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      itemCount: ListLessonsScreen.dataList.length,
      itemBuilder: (context, index) {
        return LessonScreen(pageController: _pageController, index: index);
      },
    );
  }
}
