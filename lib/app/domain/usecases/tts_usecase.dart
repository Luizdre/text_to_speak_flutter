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
      String message = 'Falha ao adquirir idiomas';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future<List<Map<Object?, Object?>>> getVoices() async {
    try {
      return await _ttsRepository.getVoices();
    } catch (e) {
      String message = 'Falha ao adquirir vozes';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setLanguage(String language) async {
    try {
      if (language.isNotEmpty) {
        await _ttsRepository.setLanguage(language);
      } else {
        String message = 'Nenhuma linguagem recebida';
        TTSError(message).callError();
        throw TTSError(message);
      }
    } catch (e) {
      String message = 'Falha ao alterar linaguem';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setSpeech(double? peech) async {
    try {
      if (peech != null) {
        await _ttsRepository.setSpeech(peech);
      } else {
        String message = 'Nenhum valor de voz recebido';
        TTSError(message).callError();
        throw TTSError(message);
      }
    } catch (e) {
      String message = 'Falha ao definir valor de voz';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setPitch(double? pitch) async {
    try {
      if (pitch != null) {
        await _ttsRepository.setPitch(pitch);
      } else {
        String message = 'Nenhum valor de tom recebido';
        TTSError(message).callError();
        throw TTSError(message);
      }
    } catch (e) {
      String message = 'Falha ao definir tom de voz';
      TTSError(message).callError();
      throw TTSError(message);
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
        String message = 'Nenhuma voz foi recebida';
        TTSError(message).callError();
        throw TTSError(message);
      }
    } catch (e) {
      String message = 'Falha ao definir voz';
      TTSError(message).callError();
      throw TTSError(message);
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
      String message = 'Falha ao adquirir idiomas';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future speak(String text) async {
    try {
      if (text.isNotEmpty) {
        await _ttsRepository.speak(text);
      } else {
        String message = 'Nenhum texto identificado';
        TTSError(message).callError();
        throw TTSError(message);
      }
    } catch (e) {
      String message = 'Falha ao reproduzir texto';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  void stopSpeak() {
    _ttsRepository.stop();
  }
}
