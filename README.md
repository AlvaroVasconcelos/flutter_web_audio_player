# Flutter web audio player
[![pub package](https://img.shields.io/badge/Pub-v0.0.1-red)](https://pub.dev/packages/flutter_web_audio_player)

A package designed for audio playback on web flutter using html5.

## Usage example

![](https://github.com/AlvaroVasconcelos/flutter_web_audio_player/raw/master/screenshots/0.jpg)


``` dart 
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            child: WebAudioPlayer(
              src: 'https://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_480_1_5MG.mp4',
            ),
          ),
        ),
      ),
    );
  }
}

```
##### Issues and feedback 
Please file issues to send feedback or report a bug. Thank you!

