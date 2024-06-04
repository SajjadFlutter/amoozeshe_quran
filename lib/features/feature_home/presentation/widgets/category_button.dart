import 'package:flutter/material.dart';

import '../../../feature_list_lessons/data/hefz_data_list.dart';
import '../../../feature_list_lessons/data/rookhani_data_list.dart';
import '../../../feature_list_lessons/data/tajvid_data_list.dart';
import '../../../feature_list_lessons/presentation/screens/list_lessons_screen.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    // device size
    // var width = MediaQuery.of(context).size.width;
    // theme
    var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;

    return Container(
      height: 65.0,
      margin: const EdgeInsets.only(
        right: 25.0,
        left: 25.0,
        bottom: 15.0,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 10.0),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
        ),
        onPressed: () {
          switch (title) {
            case 'آموزش روخوانی':
              ListLessonsScreen.title = 'آموزش روخوانی و روان خوانی';
              ListLessonsScreen.dataList = rookhaniDataList;
              break;
            case 'آموزش تجوید':
              ListLessonsScreen.title = 'آموزش قرائت قرآن کریم (تجوید)';
              ListLessonsScreen.dataList = tajvidDataList;
              break;
            case 'آموزش حفظ':
              ListLessonsScreen.title = 'آموزش گام به گام جزء 30  قرآن';
              ListLessonsScreen.dataList = hefzDataList;
              break;
            default:
          }

          var route = MaterialPageRoute(
            builder: (context) => const ListLessonsScreen(),
          );
          Navigator.push(context, route);
        },
        child: Center(
          child: Text(
            title,
            style: textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
