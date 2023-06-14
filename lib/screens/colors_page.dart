import 'package:bet_drasha/components/item.dart';
import 'package:bet_drasha/provider/colors_provider.dart';
import 'package:flutter/material.dart';


class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index){
          return Item(word: colorsList[index]);
      }),
    );
  }
}