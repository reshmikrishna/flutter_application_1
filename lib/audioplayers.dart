import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Music Player'),
        ),
        body: MusicPlayer(),
      ),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  AudioPlayer audioPlayer = AudioPlayer();
  String audioUrl = 'https://example.com/your-audio-file.mp3';
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
      if (s == PlayerState.COMPLETED) {
        setState(() {
          isPlaying = false;
        });
      }
    });
  }

  void playPause() async {
    if (isPlaying) {
      await audioPlayer.pause();
      setState(() {
        isPlaying = false;
      });
    } else {
      await audioPlayer.play(audioUrl);
      setState(() {
        isPlaying = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
            iconSize: 64.0,
            onPressed: playPause,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}