import 'package:flutter/material.dart';
import 'package:bet_drasha/components/phrase_item.dart';
import 'package:bet_drasha/provider/phrases_provider.dart';

class Phrasespage extends StatelessWidget {
  const Phrasespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body:  ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index){
          return PhrasesList(singlePhrase: phrasesList[index]);
        }),
    );
  }
}
