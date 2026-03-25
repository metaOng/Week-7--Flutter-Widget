import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List showWidget = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Profile"),
    ),
    const Center(
      child: Text("Log Out"),
    ),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Library"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text("PROFILE PAGE"),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                "  Menu",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Data Buku"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Data Anggota"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Data Staff"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_add),
              title: const Text("Peminjaman"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_remove),
              title: const Text("Pengembalian"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text("Laporan"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Log Out"),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 74, 4, 193),
        selectedItemColor: const Color.fromARGB(255, 246, 13, 13),
        unselectedItemColor: const Color.fromARGB(255, 6, 241, 41),
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Logout",
          ),
        ],
      ),
    );
  }
}