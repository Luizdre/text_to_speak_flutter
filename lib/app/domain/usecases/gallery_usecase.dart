import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/gallery_repository.dart';

abstract class IGalleryUsecase {
  Future<XFile?> getPictureFromGallery();
  Future<XFile?> getPictureFromCamera();
}

class GalleryUsecase implements IGalleryUsecase {
  final GalleryRepository _galleryRepository;
  GalleryUsecase(this._galleryRepository);
  @override
  Future<XFile?> getPictureFromGallery() async {
    try {
      return await _galleryRepository.getPictureFromGallery();
    } catch (e) {
      String message = 'Falha ao adquirir foto da galeria';
      GalleryError(message).callError();
      throw GalleryError(message);
    }
  }

  @override
  Future<XFile?> getPictureFromCamera() async {
    try {
      return await _galleryRepository.getPictureFromCamera();
    } catch (e) {
      String message = 'Falha ao adquirir foto da camera';
      GalleryError(message).callError();
      throw GalleryError(message);
    }
  }
}
