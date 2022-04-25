// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$camerasAtom = Atom(name: 'HomeStoreBase.cameras');

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

  final _$textcontrollerAtom = Atom(name: 'HomeStoreBase.textcontroller');

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

  final _$languageAtom = Atom(name: 'HomeStoreBase.language');

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

  final _$languagesAtom = Atom(name: 'HomeStoreBase.languages');

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

  final _$voicesAtom = Atom(name: 'HomeStoreBase.voices');

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

  final _$filteredVoicesAtom = Atom(name: 'HomeStoreBase.filteredVoices');

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

  final _$loadingAtom = Atom(name: 'HomeStoreBase.loading');

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

  final _$pitchAtom = Atom(name: 'HomeStoreBase.pitch');

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

  final _$voiceAtom = Atom(name: 'HomeStoreBase.voice');

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

  final _$presenterVoicesAtom = Atom(name: 'HomeStoreBase.presenterVoices');

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

  final _$actualSpeechAtom = Atom(name: 'HomeStoreBase.actualSpeech');

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

  final _$maxSpeechAtom = Atom(name: 'HomeStoreBase.maxSpeech');

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

  final _$speakAsyncAction = AsyncAction('HomeStoreBase.speak');

  @override
  Future<dynamic> speak() {
    return _$speakAsyncAction.run(() => super.speak());
  }

  final _$setVoiceAsyncAction = AsyncAction('HomeStoreBase.setVoice');

  @override
  Future<dynamic> setVoice(Object? voice) {
    return _$setVoiceAsyncAction.run(() => super.setVoice(voice));
  }

  final _$setSpeechAsyncAction = AsyncAction('HomeStoreBase.setSpeech');

  @override
  Future setSpeech(double value) {
    return _$setSpeechAsyncAction.run(() => super.setSpeech(value));
  }

  final _$setLanguagueAsyncAction = AsyncAction('HomeStoreBase.setLanguague');

  @override
  Future setLanguague(String lan) {
    return _$setLanguagueAsyncAction.run(() => super.setLanguague(lan));
  }

  final _$getLanguagesAsyncAction = AsyncAction('HomeStoreBase.getLanguages');

  @override
  Future<dynamic> getLanguages() {
    return _$getLanguagesAsyncAction.run(() => super.getLanguages());
  }

  final _$getCamerasAsyncAction = AsyncAction('HomeStoreBase.getCameras');

  @override
  Future<dynamic> getCameras() {
    return _$getCamerasAsyncAction.run(() => super.getCameras());
  }

  final _$getVoicesAsyncAction = AsyncAction('HomeStoreBase.getVoices');

  @override
  Future<dynamic> getVoices() {
    return _$getVoicesAsyncAction.run(() => super.getVoices());
  }

  final _$getPictureFromGalleryAsyncAction =
      AsyncAction('HomeStoreBase.getPictureFromGallery');

  @override
  Future<dynamic> getPictureFromGallery() {
    return _$getPictureFromGalleryAsyncAction
        .run(() => super.getPictureFromGallery());
  }

  final _$getPictureFromCameraAsyncAction =
      AsyncAction('HomeStoreBase.getPictureFromCamera');

  @override
  Future<dynamic> getPictureFromCamera() {
    return _$getPictureFromCameraAsyncAction
        .run(() => super.getPictureFromCamera());
  }

  final _$pictureToTextAsyncAction = AsyncAction('HomeStoreBase.pictureToText');

  @override
  Future<dynamic> pictureToText(XFile file) {
    return _$pictureToTextAsyncAction.run(() => super.pictureToText(file));
  }

  final _$getInformationAsyncAction =
      AsyncAction('HomeStoreBase.getInformation');

  @override
  Future<dynamic> getInformation() {
    return _$getInformationAsyncAction.run(() => super.getInformation());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

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
