import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/components/phrase_item.dart';
import 'package:bet_drasha/provider/phrases_provider.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phrases'),
        backgroundColor: kPrimaryColor,
      ),
      body:  ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index){
          return PhrasesList(singlePhrase: phrasesList[index]);
        }),
        bottomNavigationBar: BottomNavigation(),
    );
  }
}
