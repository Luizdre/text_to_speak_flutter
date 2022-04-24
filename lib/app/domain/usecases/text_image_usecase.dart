import 'package:camera/camera.dart';
import 'package:tts/app/domain/errors/errors.dart';
import 'package:tts/app/domain/repositories/text_image_repository.dart';

abstract class ITextUsecase {
  Future<String> imageToText(XFile? file);
}

class TextUsecase implements ITextUsecase {
  final TextRepository _textRepository;
  TextUsecase(this._textRepository);
  @override
  Future<String> imageToText(XFile? file) async {
    if (file != null) {
      try {
        return await _textRepository.imageToText(file);
      } catch (e) {
        throw TextError('Falha ao extrair texto da imagem');
      }
    } else {
      throw TextError('Nenhuma imagem identificada');
    }
  }
}
