import 'package:flutter_tts/flutter_tts.dart';
import 'package:tts/app/infra/datasource/tts_datasource.dart';

class TTSImpl implements TTSDatasource {
  final FlutterTts _flutterTts;

  TTSImpl(this._flutterTts);
  @override
  Future<List<Object?>> getLanguages() async {
    return await _flutterTts.getLanguages;
  }

  @override
  Future<List<Map<Object?, Object?>>> getVoices() async {
    List<Map<Object?, Object?>> voices = [];
    await _flutterTts.getVoices.then((value) {
      for (var item in value) {
        item is Map<Object?, Object?>;
        voices.add(item);
      }
    });

    return voices;
  }

  @override
  Future setLanguage(String language) async {
    return await _flutterTts.setLanguage(language);
  }

  @override
  Future setSpeech(double? peech) async {
    return await _flutterTts.setSpeechRate(peech!);
  }

  @override
  Future setPitch(double? pitch) async {
    return await _flutterTts.setPitch(pitch!);
  }

  @override
  Future speak(String text) async {
    return await _flutterTts.speak(text);
  }

  @override
  Future setVoice(Map<String, String> voice) async {
    return await _flutterTts.setVoice(voice);
  }

  @override
  stop() async {
    await _flutterTts.stop();
  }
}
