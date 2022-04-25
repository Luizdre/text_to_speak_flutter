import 'dart:io';

import 'package:tts/app/infra/datasource/text_image_datasource.dart';
import 'package:camera/camera.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class TextImpl implements TextDatasource {
  @override
  Future<String> imageToText(XFile? file) async {
    String finalText = '';
    final detector = GoogleMlKit.vision.textDetector();
    File newFile = File(file!.path);

    InputImage image = InputImage.fromFile(newFile);

    RecognisedText text = await detector.processImage(image);
    for (var block in text.blocks) {
      finalText += block.text.replaceAll('\n', ' ');
    }
    return finalText;
  }
}
