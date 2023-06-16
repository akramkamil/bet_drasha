import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleLessonScreen extends StatefulWidget {
  const SingleLessonScreen({super.key, required this.title ,required this.videoUrl});
  final String videoUrl;
  final String title;


  @override
  State<SingleLessonScreen> createState() => _SingleLessonScreenState();
}

class _SingleLessonScreenState extends State<SingleLessonScreen> {

  late YoutubePlayerController _controller; 

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);

    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          YoutubePlayer(controller: _controller,
          showVideoProgressIndicator: true,
          onReady: () => debugPrint('Redy'),
          bottomActions: [
            CurrentPosition(),
            ProgressBar(
              isExpanded: true,
              colors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.white
              ),),
              const PlaybackSpeedButton(),

          ],)
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}