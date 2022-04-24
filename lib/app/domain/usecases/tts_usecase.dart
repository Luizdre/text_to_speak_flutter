import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/tts_repositores.dart';

abstract class ITTSUsecase {
  Future<List<Object?>> getLanguages();

  Future<List<Map<Object?, Object?>>> getVoices();

  List<Object> sortVoices(List<Map<Object?, Object?>> voices);

  Future setPitch(double pitch);

  Future setVoice(Map<String, String> voice);

  Future setSpeech(double peech);

  Future setLanguage(String language);

  Future speak(String text);

  void stopSpeak();
}

class TTSUsecase implements ITTSUsecase {
  final TTSRepository _ttsRepository;

  TTSUsecase(this._ttsRepository);
  @override
  Future<List<Object?>> getLanguages() async {
    try {
      return await _ttsRepository.getLanguages();
    } catch (e) {
      throw TTSError('Falha ao adquirir idiomas');
    }
  }

  @override
  Future<List<Map<Object?, Object?>>> getVoices() async {
    try {
      return await _ttsRepository.getVoices();
    } catch (e) {
      throw TTSError('Falha ao adquirir vozes');
    }
  }

  @override
  Future setLanguage(String language) async {
    try {
      if (language.isNotEmpty) {
        await _ttsRepository.setLanguage(language);
      } else {
        throw TTSError('Nenhuma linguagem recebida');
      }
    } catch (e) {
      throw TTSError('Falha ao alterar linaguem');
    }
  }

  @override
  Future setSpeech(double? peech) async {
    try {
      if (peech != null) {
        await _ttsRepository.setSpeech(peech);
      } else {
        throw TTSError('Nenhum valor de voz recebido');
      }
    } catch (e) {
      throw TTSError('Falha ao definir valor de voz');
    }
  }

  @override
  Future setPitch(double? pitch) async {
    try {
      if (pitch != null) {
        await _ttsRepository.setPitch(pitch);
      } else {
        throw TTSError('Nenhum valor de pitch recebido');
      }
    } catch (e) {
      throw TTSError('Falha ao definir valor de pitch');
    }
  }

  @override
  Future setVoice(Object? voice) async {
    try {
      if (voice != null) {
        String json = voice.toString();
        var value = json
            .replaceAll("{", "")
            .replaceAll("}", "")
            .replaceAll("locale: ", "")
            .replaceAll("name: ", "")
            .split(",");
        var voiceMap = {'name': value[0], 'locale': value[1].trim()};
        await _ttsRepository.setVoice(voiceMap);
      } else {
        throw TTSError('Nenhuma voz foi recebida');
      }
    } catch (e) {
      throw TTSError('Falha ao definir voz');
    }
  }

  @override
  List<Map<Object?, Object?>> sortVoices(List<Map<Object?, Object?>> voices) {
    try {
      voices = voices
          .where((voice) => voice['name'].toString().contains('local'))
          .toList();
      voices.sort((a, b) => a.entries.last.value
          .toString()
          .toLowerCase()
          .compareTo(b.entries.last.value.toString().toLowerCase()));

      return voices;
    } catch (e) {
      throw TTSError('Falha ao adquirir idiomas');
    }
  }

  @override
  Future speak(String text) async {
    try {
      if (text.isNotEmpty) {
        await _ttsRepository.speak(text);
      } else {
        throw TTSError('Nenhum texto identificado');
      }
    } catch (e) {
      throw TTSError('Falha ao reproduzir texto');
    }
  }

  @override
  void stopSpeak() {
    _ttsRepository.stop();
  }
}
