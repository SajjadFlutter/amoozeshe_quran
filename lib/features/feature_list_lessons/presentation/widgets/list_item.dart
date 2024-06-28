// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../feature_lesson/presentation/screens/lesson_screen.dart';
import '../../../feature_lesson/presentation/screens/page_veiw_lesson.dart';
import '../screens/list_lessons_screen.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    // theme
    var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        LessonScreen.lessonIndex = index;
        // check internet connection
        checkInternetConnection(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/star.svg',
                        fit: BoxFit.cover,
                        // ignore: deprecated_member_use
                        color: primaryColor,
                        width: 45.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(fontFamily: 'Yekan'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ListLessonsScreen.dataList[index]['title'],
                        style: textTheme.labelMedium),
                    const SizedBox(height: 8.0),
                    Text(
                      ListLessonsScreen.dataList[index]['subject'].length > 40
                          ? ListLessonsScreen.dataList[index]['subject']
                                  .substring(0, 20) +
                              ' ...'
                          : ListLessonsScreen.dataList[index]['subject'],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey,
              size: 14.0,
            ),
          ],
        ),
      ),
    );
  }

  // check internet connection
  Future<void> checkInternetConnection(BuildContext context) async {
    // device size
    var width = MediaQuery.of(context).size.width;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        var route = MaterialPageRoute(
          builder: (context) => PageViewLesson(),
        );
        Navigator.push(context, route);
      }
    } on SocketException catch (_) {
      ElegantNotification.error(
        title: const Text(
          "به اینترنت متصل نیستید!",
        ),
        position: Alignment.center,
        description: const Text(
          'لطفا اتصال خود به اینترنت را چک کنید...',
          style: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
        dismissDirection: DismissDirection.horizontal,
        width: width,
      ).show(context);
    }
  }
}
