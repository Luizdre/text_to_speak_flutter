import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/text_image_repository.dart';
import 'package:tts/app/infra/datasource/text_image_datasource.dart';

class TextRepositoryImpl implements TextRepository {
  final TextDatasource _textDatasource;

  TextRepositoryImpl(this._textDatasource);
  @override
  Future<String> imageToText(XFile? file) async {
    try {
      return await _textDatasource.imageToText(file);
    } on TextError {
      String message = 'Falha ao adquirir texto da imagem no repositorio';
      TextError(message).callError();
      throw TextError(message);
    }
  }
}
