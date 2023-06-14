
import 'package:bet_drasha/models/online_lessone.dart';
import 'package:flutter/material.dart';

import '../screens/single_lesson.dart';

class SingleLessonItem extends StatelessWidget {
  const SingleLessonItem({super.key, required this.lesson});
  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.amber,
            height: 100,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>  SingleLesson(title: lesson.title,videoUrl: lesson.videoUrl)));
              },
              child: Row(
                children:  [
                  Text(
                    lesson.title,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const Text(
                    ': letters',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          );
  }
}