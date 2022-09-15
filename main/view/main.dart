import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawer_header.dart';
import 'drone_list_view.dart';

void main() {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);

  // Then call runApp() as normal
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Autonomous Reconnaissance Drone';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(title), backgroundColor: const Color(0xFF0437F2)),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        backgroundColor: Color(0xFF3D3D3D),

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.only(right: 20, left: 20),
          children: [
            HeaderDrawer(),
            const Divider(
              thickness: 3,
              color: Color(0xFFA9A9A9),
            ),
            DroneListView(),
            const Divider(
              thickness: 3,
              color: Color(0xFFA9A9A9),
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.white),
              textColor: Colors.white,
              title: const Text('Add Drone'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.manage_accounts, color: Colors.white),
              textColor: Colors.white,
              title: const Text('Manage Drone'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('App Settings'),
              textColor: Colors.white,
              leading: const Icon(Icons.settings, color: Colors.white),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
