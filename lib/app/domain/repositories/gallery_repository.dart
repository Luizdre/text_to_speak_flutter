import 'package:camera/camera.dart';

abstract class GalleryRepository {
  Future<XFile?> getPictureFromGallery();
  Future<XFile?> getPictureFromCamera();
}
