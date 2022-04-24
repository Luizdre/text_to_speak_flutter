import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:tts/app/domain/usecases/camera_usecase.dart';
import 'package:tts/app/domain/usecases/gallery_usecase.dart';
import 'package:tts/app/domain/usecases/text_image_usecase.dart';
import 'package:tts/app/domain/usecases/tts_usecase.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final CameraUsecase _cameraUsecase;
  final TextUsecase _textUsecase;
  final GalleryUsecase _galleryUsecase;
  final TTSUsecase _ttsUsecase;

  HomeStoreBase(this._cameraUsecase, this._textUsecase, this._galleryUsecase,
      this._ttsUsecase);

  late CameraController controller;

  @observable
  late List<CameraDescription> cameras = [];

  @observable
  TextEditingController textcontroller = TextEditingController();

  @observable
  String language = '';

  @observable
  List<Object?> languages = [];

  @observable
  List<Map<Object?, Object?>> voices = [];

  @observable
  List<Map<Object?, Object?>> filteredVoices = [];

  @observable
  bool loading = false;

  @observable
  double pitch = 1;

  @observable
  String voice = '';

  @observable
  List<Map<String, Map<Object?, Object?>>> presenterVoices = [];

  @observable
  double actualSpeech = 0.5;

  @observable
  int? maxSpeech = 0;

  @action
  Future speak() async {
    await _ttsUsecase.speak(textcontroller.text);
  }

  @action
  void stopSpeak() {
    _ttsUsecase.stopSpeak();
  }

  Future setPitch(double newPitch) async {
    await _ttsUsecase.setPitch(newPitch);
  }

  @action
  Future setVoice(Object? voice) async {
    await _ttsUsecase.setVoice(voice);
  }

  @action
  setSpeech(double value) async {
    await _ttsUsecase.setSpeech(value);
    actualSpeech = value;
  }

  setLanguague(String lan) async {
    loading = true;
    await _ttsUsecase.setLanguage(lan).then((value) => loading = false);
    language = lan;
    filteredVoices =
        voices.where((element) => element['locale'] == language).toList();
    voice = filteredVoices[0].toString();

    presenterVoices.clear();

    for (var item in filteredVoices) {
      int i = filteredVoices.indexWhere((element) => element == item);
      presenterVoices.add({'Voz': filteredVoices[i]});
    }
  }

  Future getLanguages() async {
    languages = await _ttsUsecase.getLanguages();
    language = languages[0].toString();
    language = languages
        .firstWhere((element) => element.toString() == 'pt-BR')
        .toString();
  }

  Future getCameras() async {
    controller = await _cameraUsecase.setCamera();
  }

  Future getVoices() async {
    voices = await _ttsUsecase.getVoices();
    voices = _ttsUsecase.sortVoices(voices);
    filteredVoices = voices;
    setLanguague(language);
  }

  Future getPictureFromGallery() async {
    XFile? file = await _galleryUsecase.getPictureFromGallery();
    pictureToText(file!);
  }

  Future getPictureFromCamera() async {
    XFile file = await controller.takePicture();
    pictureToText(file);
  }

  Future pictureToText(XFile file) async {
    textcontroller.text = await _textUsecase.imageToText(file);
  }

  Future getInformation() async {
    try {
      getCameras();
      getLanguages();
      getVoices();
    } catch (e) {
      throw '';
    }
  }
}
