import 'package:tts/app/components/scaffold.dart';

class BaseError implements Exception {
  String message;
  BaseError(this.message);
  @override
  String toString() => 'BaseError: $message';
  callError() => TTSScaffold.instance.showSnackBar(message: message, isError: true);
}

class CameraError implements BaseError {
  @override
  String message;
  CameraError(this.message);
  @override
  String toString() => 'CameraError: $message';
  @override
  callError() => TTSScaffold.instance.showSnackBar(message: message, isError: true);
}
class TTSError implements BaseError {
  @override
  String message;
  TTSError(this.message);
  @override
  callError() => TTSScaffold.instance.showSnackBar(message: message, isError: true);
  @override
  String toString() => 'TTSError: $message';
}
class GalleryError implements BaseError {
  @override
  String message;
  GalleryError(this.message);
  @override
  String toString() => 'Gallery Error: $message';
  @override
  callError() => TTSScaffold.instance.showSnackBar(message: message, isError: true);
}
class TextError implements BaseError {
  @override
  String message;
  TextError(this.message);
  @override
  String toString() => 'TextError: $message';
  @override
  callError() => TTSScaffold.instance.showSnackBar(message: message, isError: true);
}
