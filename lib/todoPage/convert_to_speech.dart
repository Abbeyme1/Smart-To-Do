import 'package:flutter_tts/flutter_tts.dart';

class ConvertToSpeech {
  final FlutterTts flutterTts = FlutterTts();
  static const id = 'speech';

  final String text;

  ConvertToSpeech(this.text);

  void toSpeech() async {
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setSpeechRate(1.0);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
    await flutterTts.speak("You have to " + text);
  }
}
