import 'package:flutter/material.dart';
import 'package:bet_drasha/screens/colors_page.dart';
import 'package:bet_drasha/screens/drasha_book.dart';
import 'package:bet_drasha/screens/family_member.dart';
import 'package:bet_drasha/screens/numbers_screen.dart';
import 'package:bet_drasha/screens/phrases_page.dart';
import 'package:bet_drasha/screens/youtuble_lesson.dart';

import '../components/container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "Home Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Componant(
            title: 'Numbers',
            color: Colors.white,
            ontap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Numbers()));
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
            color: Colors.amber,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorPage()));
            },
          ),
          Componant(
            title: 'phrases',
            color: Colors.white,
            ontap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const Phrasespage()));
            },
          ),
          Componant(
            title: 'Mandaic lesson',
            color: Colors.white,
            ontap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const OnlineLesson()));
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
    );
  }
}
