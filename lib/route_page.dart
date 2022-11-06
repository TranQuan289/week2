import 'package:flutter/material.dart';

enum Route { stl, stf, lifecycle, inherited, basic, cupertino }

//sửa sau
class RoutePage extends StatelessWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week2")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stl');
              },
              child: const Text("Đến StatelessWidget")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stf');
              },
              child: const Text("Đến StatefulWidget")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lifecycle');
              },
              child: const Text("Đến MyWidgetLifecycle")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/inherited');
              },
              child: const Text("Đến InheritedWidget")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/basic');
              },
              child: const Text("Đến BasicWidget")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cupertino');
              },
              child: const Text("Đến CupertinoWidget")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/material');
              },
              child: const Text("Đến Material"))
        ]),
      ),
    );
  }
}
