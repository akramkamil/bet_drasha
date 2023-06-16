import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/models/book.dart';

class SingleBook extends StatelessWidget {
  const SingleBook({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(book.title, 
            style: const TextStyle(
              fontSize: 25,
              fontFamily: "akk-4"
            ),
            textAlign: TextAlign.center,
            ),
            Text(
              book.context,
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

