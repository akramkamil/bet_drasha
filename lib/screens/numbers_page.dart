import 'package:flutter/material.dart';
import 'package:bet_drasha/components/item.dart';

import '../provider/number_provider.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('numbers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index){
        return Item(word: numbersList[index]);
      }),
    );
  }
}




