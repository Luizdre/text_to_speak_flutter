import 'package:camera/camera.dart';
import 'package:tts/app/infra/datasource/camera_datasource.dart';

class CameraImpl implements CameraDatasource {
  @override
  Future<List<CameraDescription>> getAvaiableCameras() async {
    return await availableCameras();
  }

  @override
  Future<CameraController> setCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    CameraController controller =
        CameraController(cameras[0], ResolutionPreset.max);

    return controller;
  }

  @override
  Future<XFile> takePicture(CameraController controller) async {
    return await controller.takePicture();
  }
}
