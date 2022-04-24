import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/gallery_repository.dart';

abstract class IGalleryUsecase {
  Future<XFile?> getPictureFromGallery();
}

class GalleryUsecase implements IGalleryUsecase {
  final GalleryRepository _galleryRepository;
  GalleryUsecase(this._galleryRepository);
  @override
  Future<XFile?> getPictureFromGallery() async{
    try {
      return await _galleryRepository.getPictureFromGallery();
    } catch (e) {
      throw GalleryError('Falha ao adquirir foto da galeria');
    }
  }
}
