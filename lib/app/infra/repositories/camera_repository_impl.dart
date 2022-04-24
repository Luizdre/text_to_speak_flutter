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
      throw CameraError('Falha ao adquirir cameras no repositorio');
    }
  }

  @override
  Future<CameraController> setCamera() async {
    try {
      return await _cameraDatasource.setCamera();
    } on CameraError {
      throw CameraError('Falha ao alterar camera no repositorio');
    }
  }

  @override
  Future<XFile> takePicture() async {
    try {
      return await _cameraDatasource.takePicture();
    } on CameraError {
      throw CameraError('Falha ao tirar foto no repositorio');
    }
  }
}
