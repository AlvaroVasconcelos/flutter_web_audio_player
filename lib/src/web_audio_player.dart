import 'package:flutter/widgets.dart';

import 'web_audio_element.dart';

class WebAudioPlayer extends StatelessWidget {
  const WebAudioPlayer({
    Key key,
    @required this.src,
    this.startAt = 000,
    this.autoPlay = false,
    this.controls = true,
  }) : super(key: key);

  final String src;
  final double startAt;
  final bool autoPlay;
  final bool controls;

  @override
  Widget build(BuildContext context) {
    return WebAudioElement(
      src: src,
      startAt: startAt,
      autoplay: autoPlay,
      controls: controls,
    );
  }
}
