import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../feature_list_lessons/presentation/screens/list_lessons_screen.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({
    super.key,
    required this.pageController,
    required this.index,
  });

  static String title = '';
  static int lessonIndex = 0;

  final PageController pageController;
  final int index;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
      ListLessonsScreen.dataList[widget.index]['videoUrl'],
    ));
    await _videoPlayerController.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      allowFullScreen: true,
      allowMuting: true,
      allowPlaybackSpeedChanging: true,
      autoPlay: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: const Color(0xffed145b),
        bufferedColor: const Color(0xffcccccc),
        handleColor: const Color(0xffed145b),
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // theme
    var textTheme = Theme.of(context).textTheme;
    var primaryColor = Theme.of(context).primaryColor;

    // device size
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              ListLessonsScreen.dataList[widget.index]['title'],
              style: textTheme.labelLarge,
            ),
            const SizedBox(width: 10.0),
            Text(
              '( ${ListLessonsScreen.title} )',
              style: const TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
        backgroundColor: primaryColor,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  // besmellah
                  Center(
                      child: Text('بسم الله الرحمن الرحیم',
                          style: textTheme.titleLarge)),
                  const SizedBox(height: 25.0),
                  // video
                  _videoPlayerController.value.isInitialized
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              // border: Border.all(color: Colors.grey),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: Colors.grey.shade300,
                                ),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: AspectRatio(
                                aspectRatio:
                                    _videoPlayerController.value.aspectRatio,
                                child: Chewie(controller: _chewieController),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: double.infinity,
                          height: height * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xffed145b),
                            ),
                          ),
                        ),

                  const SizedBox(height: 35.0),
                  // subject
                  Text(
                    '${ListLessonsScreen.dataList[widget.index]['subject']}',
                    style: textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20.0),
                  // description
                  Text(
                    textAlign: TextAlign.justify,
                    '${ListLessonsScreen.dataList[widget.index]['description']}',
                    style: textTheme.labelMedium,
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
          // Buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70.0,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -15),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140.0,
                      height: 48.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding:
                              const EdgeInsets.only(right: 20.0, left: 25.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {
                          if (widget.index != 0) {
                            widget.pageController.jumpToPage(widget.index - 1);
                          }
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: 14.0,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              'جلسه قبلی',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140.0,
                      height: 48.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding:
                              const EdgeInsets.only(right: 25.0, left: 20.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        onPressed: () {
                          if (widget.index !=
                              (ListLessonsScreen.dataList.length - 1)) {
                            widget.pageController.jumpToPage(widget.index + 1);
                          }
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'جلسه بعدی',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                            SizedBox(width: 5.0),
                            Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
