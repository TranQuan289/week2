import 'package:flutter/material.dart';

//class Widget
class MyStateFull extends StatefulWidget {
  // StatefulWidget là 1 Widget có State(dữ liệu bên trong có thể thay đổi được)
  // có thể chủ động Update UI
  // nó cũng có thể nhận dữ liệu bên ngoài vào bằng constructor này
  const MyStateFull({super.key});
// khi StatefulWidget được tạo thì nó sẽ gọi ra hàm createState để tạo ra 1 object State
  @override
  State<MyStateFull> createState() => _MyStateFullState();
}

// nhưng bản thân StatefulWidget đã có 1 State class để quản lý State rồi nên thường nó thay đổi dữ liệu ở dưới đây
class _MyStateFullState extends State<MyStateFull> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    // khi State thay đổi sẽ gọi lại hàm build để rebuild
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đây là StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count : $i"),
            TextButton(
                onPressed: () {
                  setState(() {
                    // chủ động Update UI bằng setState
                    i++;
                  });
                },
                child: const Text("onPressed")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Về Main"))
          ],
        ),
      ),
    );
  }
}
