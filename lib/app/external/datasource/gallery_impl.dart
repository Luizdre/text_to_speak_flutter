import 'package:image_picker/image_picker.dart';
import 'package:tts/app/infra/datasource/gallery_datasource.dart';

class GalleryImpl implements GalleryDatasource {
  final ImagePicker _imagePicker;

  GalleryImpl(this._imagePicker);
  @override
  Future<XFile?> getPictureFromGallery() async {
    return await _imagePicker.pickImage(source: ImageSource.gallery);
  }
  @override
  Future<XFile?> getPictureFromCamera() async {
    return await _imagePicker.pickImage(source: ImageSource.camera);
  }
}
