import 'package:flutter/material.dart';

class TTSScaffold {
  static final TTSScaffold instance = TTSScaffold();

  final key =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBar({required String message, bool isError = false}) {
    key.currentState!.showSnackBar(SnackBar(content: Text(message), backgroundColor: isError ? Colors.red[300] : null,));
  }
}
