import 'package:flutter/material.dart'; 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage_SnackBar(),
    );
  }
}

class HomePage_SnackBar extends StatelessWidget {
  const HomePage_SnackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Hapus Produk Berhasil", style: TextStyle(
                  color: Colors.black,
                ),
                ),
                action: SnackBarAction(
                  label: "Cancel", 
                  onPressed: (){
                    print("Hapus produk dibatalkan");
                  },
                  textColor: Colors.red,
                ),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 5),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
              ),
            );
          }, 
          child: Text("show Dialog"),
        ),
      ),
    );
  }
}

