import 'dart:math';
import 'package:flutter/material.dart';

class DroneListView extends StatelessWidget {
  final List<String> data = [];

  DroneListView({super.key}) {
    for (var i = 0; i < 3; i++) {
      data.add(_randomString(20));
    }
  }

  String _randomString(int length) {
    var rand = Random();
    var codeUnits = List.generate(length, (index) {
      return rand.nextInt(33) + 89;
    });
    return String.fromCharCodes(codeUnits);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 1),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const Divider(
        thickness: null,
        color: Color(0xFF3D3D3D),
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.zero,
          child: Container(
            height: 50,
            color: const Color(0x0000ffff),
            child: Center(
              child: Text(
                data[index],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
