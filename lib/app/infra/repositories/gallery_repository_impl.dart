import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/gallery_repository.dart';
import 'package:tts/app/infra/datasource/gallery_datasource.dart';

class GalleryRepositoryImpl implements GalleryRepository {
  final GalleryDatasource _galleryDatasource;

  GalleryRepositoryImpl(this._galleryDatasource);
  @override
  Future<XFile?> getPictureFromGallery() async {
    try {
      return await _galleryDatasource.getPictureFromGallery();
    } on GalleryError {
      throw GalleryError('Falha ao adquirir foto da galeria no repositorio');
    }
  }
}
