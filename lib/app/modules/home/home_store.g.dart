// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$camerasAtom =
      Atom(name: 'HomeStoreBase.cameras', context: context);

  @override
  List<CameraDescription> get cameras {
    _$camerasAtom.reportRead();
    return super.cameras;
  }

  @override
  set cameras(List<CameraDescription> value) {
    _$camerasAtom.reportWrite(value, super.cameras, () {
      super.cameras = value;
    });
  }

  late final _$textcontrollerAtom =
      Atom(name: 'HomeStoreBase.textcontroller', context: context);

  @override
  TextEditingController get textcontroller {
    _$textcontrollerAtom.reportRead();
    return super.textcontroller;
  }

  @override
  set textcontroller(TextEditingController value) {
    _$textcontrollerAtom.reportWrite(value, super.textcontroller, () {
      super.textcontroller = value;
    });
  }

  late final _$languageAtom =
      Atom(name: 'HomeStoreBase.language', context: context);

  @override
  String get language {
    _$languageAtom.reportRead();
    return super.language;
  }

  @override
  set language(String value) {
    _$languageAtom.reportWrite(value, super.language, () {
      super.language = value;
    });
  }

  late final _$languagesAtom =
      Atom(name: 'HomeStoreBase.languages', context: context);

  @override
  List<Object?> get languages {
    _$languagesAtom.reportRead();
    return super.languages;
  }

  @override
  set languages(List<Object?> value) {
    _$languagesAtom.reportWrite(value, super.languages, () {
      super.languages = value;
    });
  }

  late final _$voicesAtom =
      Atom(name: 'HomeStoreBase.voices', context: context);

  @override
  List<Map<Object?, Object?>> get voices {
    _$voicesAtom.reportRead();
    return super.voices;
  }

  @override
  set voices(List<Map<Object?, Object?>> value) {
    _$voicesAtom.reportWrite(value, super.voices, () {
      super.voices = value;
    });
  }

  late final _$filteredVoicesAtom =
      Atom(name: 'HomeStoreBase.filteredVoices', context: context);

  @override
  List<Map<Object?, Object?>> get filteredVoices {
    _$filteredVoicesAtom.reportRead();
    return super.filteredVoices;
  }

  @override
  set filteredVoices(List<Map<Object?, Object?>> value) {
    _$filteredVoicesAtom.reportWrite(value, super.filteredVoices, () {
      super.filteredVoices = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'HomeStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$pitchAtom = Atom(name: 'HomeStoreBase.pitch', context: context);

  @override
  double get pitch {
    _$pitchAtom.reportRead();
    return super.pitch;
  }

  @override
  set pitch(double value) {
    _$pitchAtom.reportWrite(value, super.pitch, () {
      super.pitch = value;
    });
  }

  late final _$voiceAtom = Atom(name: 'HomeStoreBase.voice', context: context);

  @override
  String get voice {
    _$voiceAtom.reportRead();
    return super.voice;
  }

  @override
  set voice(String value) {
    _$voiceAtom.reportWrite(value, super.voice, () {
      super.voice = value;
    });
  }

  late final _$presenterVoicesAtom =
      Atom(name: 'HomeStoreBase.presenterVoices', context: context);

  @override
  List<Map<String, Map<Object?, Object?>>> get presenterVoices {
    _$presenterVoicesAtom.reportRead();
    return super.presenterVoices;
  }

  @override
  set presenterVoices(List<Map<String, Map<Object?, Object?>>> value) {
    _$presenterVoicesAtom.reportWrite(value, super.presenterVoices, () {
      super.presenterVoices = value;
    });
  }

  late final _$actualSpeechAtom =
      Atom(name: 'HomeStoreBase.actualSpeech', context: context);

  @override
  double get actualSpeech {
    _$actualSpeechAtom.reportRead();
    return super.actualSpeech;
  }

  @override
  set actualSpeech(double value) {
    _$actualSpeechAtom.reportWrite(value, super.actualSpeech, () {
      super.actualSpeech = value;
    });
  }

  late final _$maxSpeechAtom =
      Atom(name: 'HomeStoreBase.maxSpeech', context: context);

  @override
  int? get maxSpeech {
    _$maxSpeechAtom.reportRead();
    return super.maxSpeech;
  }

  @override
  set maxSpeech(int? value) {
    _$maxSpeechAtom.reportWrite(value, super.maxSpeech, () {
      super.maxSpeech = value;
    });
  }

  late final _$speakAsyncAction =
      AsyncAction('HomeStoreBase.speak', context: context);

  @override
  Future<dynamic> speak() {
    return _$speakAsyncAction.run(() => super.speak());
  }

  late final _$setVoiceAsyncAction =
      AsyncAction('HomeStoreBase.setVoice', context: context);

  @override
  Future<dynamic> setVoice(Object? voice) {
    return _$setVoiceAsyncAction.run(() => super.setVoice(voice));
  }

  late final _$setSpeechAsyncAction =
      AsyncAction('HomeStoreBase.setSpeech', context: context);

  @override
  Future setSpeech(double value) {
    return _$setSpeechAsyncAction.run(() => super.setSpeech(value));
  }

  late final _$setLanguagueAsyncAction =
      AsyncAction('HomeStoreBase.setLanguague', context: context);

  @override
  Future setLanguague(String lan) {
    return _$setLanguagueAsyncAction.run(() => super.setLanguague(lan));
  }

  late final _$getLanguagesAsyncAction =
      AsyncAction('HomeStoreBase.getLanguages', context: context);

  @override
  Future<dynamic> getLanguages() {
    return _$getLanguagesAsyncAction.run(() => super.getLanguages());
  }

  late final _$getCamerasAsyncAction =
      AsyncAction('HomeStoreBase.getCameras', context: context);

  @override
  Future<dynamic> getCameras() {
    return _$getCamerasAsyncAction.run(() => super.getCameras());
  }

  late final _$getVoicesAsyncAction =
      AsyncAction('HomeStoreBase.getVoices', context: context);

  @override
  Future<dynamic> getVoices() {
    return _$getVoicesAsyncAction.run(() => super.getVoices());
  }

  late final _$getPictureFromGalleryAsyncAction =
      AsyncAction('HomeStoreBase.getPictureFromGallery', context: context);

  @override
  Future<dynamic> getPictureFromGallery() {
    return _$getPictureFromGalleryAsyncAction
        .run(() => super.getPictureFromGallery());
  }

  late final _$getPictureFromCameraAsyncAction =
      AsyncAction('HomeStoreBase.getPictureFromCamera', context: context);

  @override
  Future<dynamic> getPictureFromCamera() {
    return _$getPictureFromCameraAsyncAction
        .run(() => super.getPictureFromCamera());
  }

  late final _$pictureToTextAsyncAction =
      AsyncAction('HomeStoreBase.pictureToText', context: context);

  @override
  Future<dynamic> pictureToText(XFile file) {
    return _$pictureToTextAsyncAction.run(() => super.pictureToText(file));
  }

  late final _$getInformationAsyncAction =
      AsyncAction('HomeStoreBase.getInformation', context: context);

  @override
  Future<dynamic> getInformation() {
    return _$getInformationAsyncAction.run(() => super.getInformation());
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  void stopSpeak() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.stopSpeak');
    try {
      return super.stopSpeak();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cameras: ${cameras},
textcontroller: ${textcontroller},
language: ${language},
languages: ${languages},
voices: ${voices},
filteredVoices: ${filteredVoices},
loading: ${loading},
pitch: ${pitch},
voice: ${voice},
presenterVoices: ${presenterVoices},
actualSpeech: ${actualSpeech},
maxSpeech: ${maxSpeech}
    ''';
  }
}
