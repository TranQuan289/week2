import 'package:flutter/cupertino.dart';

///CupertinoScrollbar
///child: 1 list item
///radius: tạo radius cho thanh scroll
///thickness: kích thước ngang của thanh scroll
///thicknessWhileDragging: độ dày của thanh cuộc khi người dùng kéo
///radiusWhileDragging: radius thanh cuộn khi người dùng kéo
///thumbVisibility: có hiện thanh scroll hay không

class CupertinoWidget1 extends StatelessWidget {
  const CupertinoWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: CupertinoScrollbar(
          thumbVisibility: false,
          thickness: 16.0,
          thicknessWhileDragging: 10.0,
          radius: const Radius.circular(45.0),
          radiusWhileDragging: Radius.zero,
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Item $index'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
