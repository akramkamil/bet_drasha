import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/components/lesson_video.dart';
import 'package:bet_drasha/provider/lesson_provider.dart';

class OnlineLessonScreen extends StatelessWidget {
  const OnlineLessonScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('online lessons'),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: lessonList.length,
        itemBuilder: (context, index){
          return SingleLessonItem(lesson: lessonList[index]);
      }),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
