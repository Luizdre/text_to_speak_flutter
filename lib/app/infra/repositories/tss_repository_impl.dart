import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/tts_repositores.dart';
import 'package:tts/app/infra/datasource/tts_datasource.dart';

class TTSRepositoryImpl implements TTSRepository {
  final TTSDatasource _ttsDatasource;

  TTSRepositoryImpl(this._ttsDatasource);
  @override
  Future<List<Object?>> getLanguages() async {
    try {
      return await _ttsDatasource.getLanguages();
    } on TTSError {
      String message = 'Falha ao adquirir linguagens no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future<List<Map<Object?, Object?>>> getVoices() async {
    try {
      return await _ttsDatasource.getVoices();
    } on TTSError {
      String message = 'Falha ao adquirir vozes no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setLanguage(String language) async {
    try {
      return await _ttsDatasource.setLanguage(language);
    } on TTSError {
      String message = 'Falha ao definir linguagem no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setSpeech(double? peech) async {
    try {
      return await _ttsDatasource.setSpeech(peech);
    } on TTSError {
      String message = 'Falha ao definir velocidade no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setPitch(double? pitch) async {
    try {
      return await _ttsDatasource.setPitch(pitch);
    } on TTSError {
      String message = 'Falha ao definir tom de voz no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future setVoice(Map<String, String> voice) async {
    try {
      return await _ttsDatasource.setVoice(voice);
    } on TTSError {
      String message = 'Falha ao definir voz no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  Future speak(String text) async {
    try {
      return await _ttsDatasource.speak(text);
    } on TTSError {
      String message = 'Falha ao reproduzir texto no repositorio';
      TTSError(message).callError();
      throw TTSError(message);
    }
  }

  @override
  void stop() {
    _ttsDatasource.stop();
  }
}
