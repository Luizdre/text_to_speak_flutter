import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/camera_repository.dart';

abstract class ICameraUsecase {
  Future<List<CameraDescription>> getAvaiableCameras();
  Future<CameraController> setCamera();
  Future<XFile> takePicture(CameraController controller);
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
      String message = 'Falha ao definir camera';
      CameraError(message).callError();
      throw CameraError(message);
    }
  }

  @override
  Future<XFile> takePicture(CameraController controller) async {
    try {
      return await _cameraRepository.takePicture(controller);
    } catch (e) {
      String message = 'Falha ao tirar foto';
      CameraError(message).callError();
      throw CameraError(message);
    }
  }
}
