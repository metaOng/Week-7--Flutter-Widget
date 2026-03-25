import 'package:flutter/material.dart'; 
 
// 1. Add the main function to start the app 
void main() { 
  runApp(MaterialApp(home: BottomSheetExample())); 
} 
 
class BottomSheetExample extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text("Contoh Bottom Sheet")), 
      body: Center( 
        child: ElevatedButton( 
          onPressed: () { 
            showModalBottomSheet( 
              context: context, 
              builder: (BuildContext context) { 
                return Container( 
                  padding: EdgeInsets.all(20), 
                  height: 200, 
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [ 
                      Text( 
                        "Pilih opsi:", 
                        style: TextStyle( 
                          fontSize: 18, 
                          fontWeight: FontWeight.bold, 
                        ), 
                      ), 
                      ListTile( 
                        leading: Icon(Icons.share), 
                        title: Text("Bagikan"), 
                        onTap: () => 
                            Navigator.pop(context), // Added close logic 
                      ), 
                      ListTile( 
                        leading: Icon(Icons.copy), 
                        title: Text("Salin"), 
                        onTap: () => 
                            Navigator.pop(context), // Added close logic 
                      ), 
                    ], 
                  ), 
                ); 
              }, 
            ); 
          }, 
          child: Text("Tampilkan Bottom Sheet"), 
        ), 
      ), 
    ); 
  } 
} 


