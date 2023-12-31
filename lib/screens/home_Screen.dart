import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/screens/colors_screen.dart';
import 'package:bet_drasha/screens/drasha_book.dart';
import 'package:bet_drasha/screens/family_member.dart';
import 'package:bet_drasha/screens/numbers_screen.dart';
import 'package:bet_drasha/screens/phrases_page.dart';
import 'package:bet_drasha/screens/youtuble_lesson.dart';

import '../components/container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key,});
  static String id = "Home Screen";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:  kPrimaryColor,
        title: const Text(
          'Bet Edrasha',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
          children: [
            Componant(
              title: 'Numbers',
              color: Colors.white,
              ontap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const NumbersScreen()));
              },
            ),
            Componant(
              title: 'Family Members',
              color: Colors.white,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FamilyMember()));
              },
            ),
            Componant(
              title: 'Colors',
              color: Colors.white,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorScreen()));
              },
            ),
            Componant(
              title: 'phrases',
              color: Colors.white,
              ontap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const PhrasesScreen()));
              },
            ),
            Componant(
              title: 'Mandaic lesson',
              color: Colors.white,
              ontap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const OnlineLessonScreen()));
              }
            ),
            Componant(
              title: 'Drasha ed yahya book',
              color: Colors.white,
              ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DrashaBook()));
              },
            )
          ],
        ),
      
      bottomNavigationBar: BottomNavigation(currentIndex: 0,)
    );
  }
}
