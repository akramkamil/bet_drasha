import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleLesson extends StatefulWidget {
  const SingleLesson({super.key, required this.title ,required this.videoUrl});
  final String videoUrl;
  final String title;


  @override
  State<SingleLesson> createState() => _SingleLessonState();
}

class _SingleLessonState extends State<SingleLesson> {

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
    );
  }
}