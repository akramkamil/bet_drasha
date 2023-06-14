import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/provider/progress_provider.dart';
import 'package:provider/provider.dart';
import '../models/word.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.word});
  final Word word;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        height: 100,
        child: Row(
          children: [
            Container(
                color: const Color(0xffFFF6DC),
                child: Image.asset(
                  word.imageUrl,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      word.maWord,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      word.enWord,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                final player =AudioPlayer();
                player.play(AssetSource(word.sound));
                Provider.of<ProgresProvider>(context, listen: false).progress += 1; 
                // print(Provider.of<ProgresProvider>(context, listen: false).progress);
        
            }, 
            icon: const Icon(Icons.play_arrow), color: Colors.white, iconSize: 24,)
          ],
        ),
      );
  }
}