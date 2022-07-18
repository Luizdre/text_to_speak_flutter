import 'package:camera/camera.dart';

abstract class TextDatasource{
  Future<String> imageToText(XFile? file);
}