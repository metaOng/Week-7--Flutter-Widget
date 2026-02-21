import 'package:flutter/material.dart';
import './widgets/dialog.dart';
import './widgets/snackbar.dart';
import './widgets/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage_Textfield(),
    );
  }
}
