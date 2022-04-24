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
      throw TTSError('Falha ao adquirir linguagens no repositorio');
    }
  }

  @override
  Future<List<Map<Object?, Object?>>> getVoices() async {
    try {
      return await _ttsDatasource.getVoices();
    } on TTSError {
      throw TTSError('Falha ao adquirir vozes no repositorio');
    }
  }

  @override
  Future setLanguage(String language) async {
    try {
      return await _ttsDatasource.setLanguage(language);
    } on TTSError {
      throw TTSError('Falha ao definir linguagem no repositorio');
    }
  }

  @override
  Future setSpeech(double? peech) async {
    try {
      return await _ttsDatasource.setSpeech(peech);
    } on TTSError {
      throw TTSError('Falha ao definir peech no repositorio');
    }
  }

  @override
  Future setPitch(double? pitch) async {
    try {
      return await _ttsDatasource.setPitch(pitch);
    } on TTSError {
      throw TTSError('Falha ao definir pitch no repositorio');
    }
  }

  @override
  Future setVoice(Map<String, String> voice) async {
    try {
      return await _ttsDatasource.setVoice(voice);
    } on TTSError {
      throw TTSError('Falha ao definir voz no repositorio');
    }
  }

  @override
  Future speak(String text) async {
    try {
      return await _ttsDatasource.speak(text);
    } on TTSError {
      throw TTSError('Falha ao reproduzir texto no repositorio');
    }
  }

  @override
  void stop() {
    _ttsDatasource.stop();
  }
}
