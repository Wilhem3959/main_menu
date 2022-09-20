import 'package:flutter/material.dart';

import 'drone_list_view.dart';
import 'map_live.dart';

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      backgroundColor: const Color(0xFF3D3D3D),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: const Color(0x0000ffff),
            width: double.infinity,
            height: 70,
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  " Drones Available",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapLive()),
              );
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
    );
  }
}
