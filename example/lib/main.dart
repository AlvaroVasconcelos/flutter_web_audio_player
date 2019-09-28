import 'package:flutter/material.dart';
import 'package:flutter_web_audio_player/flutter_web_audio_player.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 100,
          child: WebAudioPlayer(
            src:
                'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3',
          ),
        ),
      ),
    );
  }
}
