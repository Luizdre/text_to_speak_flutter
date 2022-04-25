import 'package:camera/camera.dart';

abstract class CameraDatasource{
    Future<List<CameraDescription>> getAvaiableCameras();

  Future<CameraController> setCamera();

  Future<XFile> takePicture(CameraController controller);
}