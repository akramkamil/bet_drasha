import 'package:flutter/material.dart';
import 'package:bet_drasha/components/lesson_video.dart';
import 'package:bet_drasha/provider/lesson_provider.dart';

class OnlineLesson extends StatelessWidget {
  const OnlineLesson({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('online lessons'),
      ),
      body: ListView.builder(
        itemCount: lessonList.length,
        itemBuilder: (context, index){
          return SingleLessonItem(lesson: lessonList[index]);
      })
    );
  }
}
