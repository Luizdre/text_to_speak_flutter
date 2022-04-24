class BaseError implements Exception {
  String message;
  BaseError(this.message);
  @override
  String toString() => 'BaseError: $message';
}

class CameraError implements BaseError {
  @override
  String message;
  CameraError(this.message);
  @override
  String toString() => 'CameraError: $message';
}
class TTSError implements BaseError {
  @override
  String message;
  TTSError(this.message);
  @override
  String toString() => 'TTSError: $message';
}
class GalleryError implements BaseError {
  @override
  String message;
  GalleryError(this.message);
  @override
  String toString() => 'Gallery Error: $message';
}
class TextError implements BaseError {
  @override
  String message;
  TextError(this.message);
  @override
  String toString() => 'TextError: $message';
}
