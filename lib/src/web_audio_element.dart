import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter/material.dart';

class WebAudioElement extends StatefulWidget {
  const WebAudioElement({
    Key key,
    this.src,
    this.startAt,
    this.autoplay,
    this.controls,
  }) : super(key: key);

  final String src;
  final double startAt;
  final bool autoplay;
  final bool controls;

  @override
  _WebAudioElementState createState() => _WebAudioElementState();
}

class _WebAudioElementState extends State<WebAudioElement> {
  @override
  void initState() {
    super.initState();
    ui.platformViewRegistry.registerViewFactory(widget.src, (int viewId) {
      final video = AudioElement()
        ..src = widget.src + '#t=${widget.startAt}'
        ..autoplay = widget.autoplay
        ..controls = widget.controls
        ..style.border = 'none';
      return video;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: HtmlElementView(viewType: widget.src),
    );
  }
}
