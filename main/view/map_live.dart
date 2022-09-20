// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'drawer_header.dart';
import 'drone_list_view.dart';
import 'drone_settings_drawer.dart';
import 'map.dart';

class MapLive extends StatefulWidget {
  const MapLive({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapLiveState createState() => _MapLiveState();
}

class _MapLiveState extends State<MapLive> {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text('Autonomous Reconnaissance Drone'),
                backgroundColor: const Color(0xFF0437F2)),
            drawer: const HeaderDrawer(),
            endDrawer: const EndDrawer(),
            body: Align(
              alignment: Alignment.topLeft,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Row(children: [
                    Container(
                      width: constraints.maxWidth / 2,
                      height: constraints.maxHeight,
                      color: Colors.red,
                      alignment: Alignment.topRight,
                      child: const MapScreen(),
                    ),
                    Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth / 2,
                      color: Colors.pink[400],
                      alignment: Alignment.topLeft,
                      child: const Text('The video output would go here'),
                      //Video error picture would go here
                    ),
                  ]);
                },
              ),
            ),

            // floatingActionButton: const FloatingActionButton(
            //   onPressed: null,
            //   child: Icon(Icons.menu),
            //   shape: RoundedRectangleBorder(),
            //   ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
            bottomNavigationBar: BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.assistant_direction),
                label: 'New Route',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assistant_direction_sharp),
                label: 'Previous Route',
              )
            ])));
  }
}
