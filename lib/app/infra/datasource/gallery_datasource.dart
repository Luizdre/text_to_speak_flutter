import 'package:camera/camera.dart';

abstract class GalleryDatasource{
   Future<XFile?> getPictureFromGallery();
   Future<XFile?> getPictureFromCamera();
}