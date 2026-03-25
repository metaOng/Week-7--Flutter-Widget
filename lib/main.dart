import 'package:flutter/material.dart';
import './widgets/dialog.dart';
import './widgets/snackbar.dart';
import './widgets/textfield.dart';
import './widgets/drawer.dart';
import './widgets/bottomsheet.dart';
import './widgets/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Navigasi',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(), // Ini akan memanggil class HomePage Anda
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: const Text("Pergi ke Halaman Kedua"),
        ),
      ),
    );
  }
}


