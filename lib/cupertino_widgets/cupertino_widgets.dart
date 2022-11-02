import 'package:flutter/cupertino.dart';

import '../main.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'CupertinoApp',
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
            children: [
              CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Về Main"))
            ],
          ),
        ),
      ),
    );
  }
}
