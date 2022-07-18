import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/camera_repository.dart';
import 'package:tts/app/infra/datasource/camera_datasource.dart';

class CameraRepositoryImpl implements CameraRepository {
  final CameraDatasource _cameraDatasource;

  CameraRepositoryImpl(this._cameraDatasource);
  @override
  Future<List<CameraDescription>> getAvaiableCameras() async {
    try {
      return await _cameraDatasource.getAvaiableCameras();
    } on CameraError {
      String message = 'Falha ao adquirir cameras no repositorio';
      CameraError(message).callError();
      throw CameraError(message);
    }
  }

  @override
  Future<CameraController> setCamera() async {
    try {
      return await _cameraDatasource.setCamera();
    } on CameraError {
      String message = 'Falha ao alterar camera no repositorio';
      CameraError(message).callError();
      throw CameraError(message);
    }
  }

  @override
  Future<XFile> takePicture(CameraController controller) async {
    try {
      return await _cameraDatasource.takePicture(controller);
    } on CameraError {
      String message = 'Falha ao tirar foto no repositorio';
      CameraError(message).callError();
      throw CameraError(message);
    }
  }
}
