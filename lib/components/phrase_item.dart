import 'package:audioplayers/audioplayers.dart';
import 'package:bet_drasha/models/phrases.dart';
import 'package:flutter/material.dart';


class PhrasesList extends StatelessWidget {
  const PhrasesList({super.key, required this.singlePhrase});
  final Phrase singlePhrase;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
            color: Colors.orange,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        singlePhrase.maSentence,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        singlePhrase.enSentence,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(singlePhrase.sound));
                }, icon: const Icon(Icons.play_arrow,
                color: Colors.white,),),
              ],
            ),
          )
        ;
  }
}