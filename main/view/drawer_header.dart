import 'package:flutter/material.dart';

import 'drone_list_view.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  _HeaderDrawerState createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  get mainAxisAlignment => null;

  @override
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      backgroundColor: const Color(0xFF3D3D3D),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        // Important: Remove any padding from the ListView.
        padding: const EdgeInsets.only(right: 20, left: 20),
        children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.centerLeft,
              color: const Color(0xFF3D3D3D),
              height: 0,
              child: Stack(
                children: const <Widget>[
                  Text("Drones",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ))
                ],
              ),
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
    );
  }
}
