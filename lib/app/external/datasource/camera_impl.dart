import 'package:camera/camera.dart';
import 'package:tts/app/infra/datasource/camera_datasource.dart';

class CameraImpl implements CameraDatasource {
  late CameraController _controller;
  @override
  Future<List<CameraDescription>> getAvaiableCameras() async {
    return await availableCameras();
  }

  @override
  Future<CameraController> setCamera() async {
    List<CameraDescription> cameras = await getAvaiableCameras();
    CameraController _controller =
        CameraController(cameras[0], ResolutionPreset.max);
    if (!_controller.value.isInitialized) await _controller.initialize();
    return _controller;
  }

  @override
  Future<XFile> takePicture() async {
    return await _controller.takePicture();
  }
}
