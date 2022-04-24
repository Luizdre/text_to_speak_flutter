import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tts/app/modules/home/home_store.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends ModularState<CameraPage, HomeStore> {
  @override
  void initState() {
    super.initState();
    store.getCameras().whenComplete(() => setState(() {}));
  }

  @override
  void dispose() {
    store.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: MaterialApp(
        home: CameraPreview(
          store.controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: IconButton(
                    onPressed: () => store
                        .getPictureFromCamera()
                        .whenComplete(() => Navigator.of(context).pop()),
                    icon: Icon(
                      Icons.camera,
                      size: size.height / 20,
                      color: Colors.blue,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
