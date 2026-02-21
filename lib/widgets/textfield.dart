import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage_Textfield(),
    );
  }
}

class HomePage_Textfield extends StatefulWidget {
  const HomePage_Textfield({super.key});

  @override
  State<HomePage_Textfield> createState() => _HomePage_TextfieldState();
}

class _HomePage_TextfieldState extends State<HomePage_Textfield> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailCon,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passCon,
            autocorrect: false,
            obscureText: true,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: "Password",
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: const Icon(Icons.key),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              print(
                  "Berhasil login dengan email: ${emailCon.text} dan password: ${passCon.text}");
            },
            child: const Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}