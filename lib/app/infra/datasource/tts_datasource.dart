abstract class TTSDatasource {
  Future<List<Object?>> getLanguages();

  Future<List<Map<Object?, Object?>>> getVoices();

  Future setPitch(double? pitch);

  Future setVoice(Map<String, String> voice);

  Future setSpeech(double? peech);

  Future setLanguage(String language);

  Future speak(String text);

  void stop();
}
