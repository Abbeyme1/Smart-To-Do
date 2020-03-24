import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:texttospeech/settings.dart';

class TextToSpeech extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  static String text;
  static const id = 'speech';

  Future _speak() async {
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setSpeechRate(1.0);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    print(await flutterTts.getLanguages);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Enter Text'),
              onPressed: () async => _speak(),
            ),
            TextField(
              onChanged: (value) {
                text = value;
              },
            )
          ],
        ));
  }
}
