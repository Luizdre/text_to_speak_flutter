import 'package:camera/camera.dart';

abstract class CameraRepository {
  Future<List<CameraDescription>> getAvaiableCameras();

  Future<CameraController> setCamera();

  Future<XFile> takePicture(CameraController controller);
}
