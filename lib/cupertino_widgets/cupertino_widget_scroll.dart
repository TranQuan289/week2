import 'package:flutter/cupertino.dart';

class CupertinoWidget1 extends StatelessWidget {
  const CupertinoWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      thickness: 6.0,
      thicknessWhileDragging: 10.0,
      radius: const Radius.circular(34.0),
      radiusWhileDragging: Radius.zero,
      child: ListView.builder(
        itemCount: 120,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
