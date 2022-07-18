import 'package:camera/camera.dart';

abstract class TextRepository {
  Future<String> imageToText(XFile? file);
}
