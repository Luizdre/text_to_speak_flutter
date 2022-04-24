import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/camera_repository.dart';

abstract class ICameraUsecase {
  Future<List<CameraDescription>> getAvaiableCameras();
  Future<CameraController> setCamera();
  Future<XFile> takePicture();
}

class CameraUsecase implements ICameraUsecase {
  final CameraRepository _cameraRepository;

  CameraUsecase(this._cameraRepository);

  @override
  Future<List<CameraDescription>> getAvaiableCameras() async {
    try {
      return await _cameraRepository.getAvaiableCameras();
    } catch (e) {
      throw CameraError('Falha ao consultar cameras');
    }
  }

  @override
  Future<CameraController> setCamera() async {
    try {
      return await _cameraRepository.setCamera();
    } catch (e) {
      throw CameraError('Falha ao definir camera');
    }
  }

  @override
  Future<XFile> takePicture() async {
    try {
      return await _cameraRepository.takePicture();
    } catch (e) {
      throw CameraError('Falha ao tirar foto');
    }
  }
}
