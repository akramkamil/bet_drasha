import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/components/item.dart';
import 'package:bet_drasha/constants.dart';
import 'package:bet_drasha/provider/colors_provider.dart';
import 'package:flutter/material.dart';


class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index){
          return Item(word: colorsList[index]);
      }),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}