import 'package:flutter/material.dart'; 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dialogWidget(),
    );
  }
}

class dialogWidget extends StatelessWidget {
  const dialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                title: Text("Judul"),
                content: Text("Deskripsi konten dialog"),
                actions: [
                  ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                  ElevatedButton(onPressed: (){}, child: Text("Ok")),
                ],
              )
            );
          }, 
          child: Text("show Dialog"),
        ),
      ),
    );
  }
}