import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/components/item.dart';

import '../provider/number_provider.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('numbers'),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index){
        return Item(word: numbersList[index]);
      }),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}




