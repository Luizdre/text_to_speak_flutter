import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tts/app/domain/usecases/camera_usecase.dart';
import 'package:tts/app/domain/usecases/gallery_usecase.dart';
import 'package:tts/app/domain/usecases/text_image_usecase.dart';
import 'package:tts/app/domain/usecases/tts_usecase.dart';
import 'package:tts/app/external/datasource/camera_impl.dart';
import 'package:tts/app/external/datasource/gallery_impl.dart';
import 'package:tts/app/external/datasource/text_image_impl.dart';
import 'package:tts/app/external/datasource/tts_impl.dart';
import 'package:tts/app/infra/repositories/camera_repository_impl.dart';
import 'package:tts/app/infra/repositories/gallery_repository_impl.dart';
import 'package:tts/app/infra/repositories/text_image_repository_impl.dart';
import 'package:tts/app/infra/repositories/tss_repository_impl.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => TextUsecase(i.get())),
    Bind.singleton((i) => TextRepositoryImpl(i.get())),
    Bind.singleton((i) => TextImpl()),
    Bind.singleton((i) => CameraUsecase(i.get())),
    Bind.singleton((i) => CameraRepositoryImpl(i.get())),
    Bind.singleton((i) => CameraImpl()),
    Bind.singleton((i) => GalleryUsecase(i.get())),
    Bind.singleton((i) => GalleryRepositoryImpl(i.get())),
    Bind.singleton((i) => GalleryImpl(i.get())),
    Bind.singleton((i) => ImagePicker()),
    Bind.singleton((i) => TTSUsecase(i.get())),
    Bind.singleton((i) => TTSRepositoryImpl(i.get())),
    Bind.singleton((i) => TTSImpl(i.get())),
    Bind.singleton((i) => FlutterTts())
    
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];

}