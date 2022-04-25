import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tts/app/modules/home/widgets/camera.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    store.getInformation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Leitor'),
          centerTitle: true,
        ),
        body: Observer(
            builder: (_) => store.loading
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          onChanged: (value) {
                            store.textcontroller.text = value;
                            store.textcontroller.selection =
                                TextSelection.fromPosition(TextPosition(
                                    offset: store.textcontroller.text.length));
                          },
                          controller: store.textcontroller,
                          minLines: 1,
                          maxLines: 15,
                          enableSuggestions: true,
                          enableIMEPersonalizedLearning: true,
                          maxLength: 4000,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Colors.blue))),
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            const Text('Idiomas'),
                            Observer(
                                builder: (context) => DropdownButton(
                                    value: store.language,
                                    onChanged: (value) =>
                                        store.setLanguague(value.toString()),
                                    items: store.languages
                                        .map((idioma) => DropdownMenuItem(
                                            value: idioma,
                                            child: Text(idioma.toString())))
                                        .toList())),
                            Text(
                                'Velocidade da voz ${store.actualSpeech.toString()}'),
                            Observer(
                              builder: (context) => Slider(
                                value: store.actualSpeech,
                                onChanged: (v) => setState(() {
                                  store.setSpeech(v);
                                  store.actualSpeech = v;
                                }),
                                min: 0.5,
                                max: 2,
                                divisions: 10,
                                label: store.actualSpeech.toString(),
                              ),
                            ),
                            Text('Tom da voz ${store.pitch.toString()}'),
                            Observer(
                              builder: (context) => Slider(
                                value: store.pitch,
                                onChanged: (v) => setState(() {
                                  store.setPitch(v);
                                  store.pitch = v;
                                }),
                                min: 0.5,
                                max: 2.0,
                                divisions: 3,
                                label: store.pitch.toString(),
                              ),
                            ),
                            const Text('Voz'),
                            DropdownButton(
                                value: store.voice,
                                items: store.presenterVoices
                                    .map((voice) => DropdownMenuItem(
                                        value: voice['Voz'].toString(),
                                        child: Text(
                                            'Voz ${store.presenterVoices.indexOf(voice) + 1}')))
                                    .toList(),
                                onChanged: (value) {
                                  store.setVoice(value);
                                  store.voice = value.toString();
                                }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () => store.speak(),
                                    icon: const Icon(
                                      Icons.play_circle_outline_rounded,
                                      color: Colors.green,
                                    )),
                                IconButton(
                                    onPressed: () => store.stopSpeak(),
                                    icon: const Icon(Icons.stop_circle_outlined,
                                        color: Colors.red)),
                                IconButton(
                                    onPressed: () => store.getPictureFromCamera(),
                                    icon: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.purple,
                                    )),
                                IconButton(
                                    onPressed: () =>
                                        store.getPictureFromGallery(),
                                    icon: const Icon(Icons.image,
                                        color: Colors.indigo))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )));
  }
}
