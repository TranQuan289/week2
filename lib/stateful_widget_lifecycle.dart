// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// StatefulWidget gồm:
///createState() : khi build một StatefulWidget thì nó sẽ gọi createState
///mounted == true : khi mà createState 1 BuildContext(nó xác định và điều khiển vị trí của 1 widget trong cây ) được gắn vào State đó, tất cả các Widget đều có thuộc tính bool this.mounted. Nó sẽ trả về true khi buildContext được gán, và sẽ là một error khi gọi setstate của một widget bị ngắt kết nối.sử dụng if (mounted) {… } để đảm bảo State tồn tại trước khi gọi setState ().Nói ngắn gọn nó dùng để xác định và đảm bảo trạng thái (State) tồn tại trước khi gọi setState().
///initState() : phương thức được gọi ngay sau khi createState()
///didChangeDependencies() : được gọi ngay sao khi initState() được gọi
///build() : render 1 widget
///didUpdateWidget() : nhập biết sự thay đổi của Widget (thường dùng trong các class StatefulWidget lòng nhau)
///setState() :Nó được sử dụng để thông báo cho framework rằng dữ liệu đã thay đổi và widget tại build context sẽ được rebuild( thường dùng trong 1 class StatefulWidget)
///deactivate() : được gọi khi State bị xóa khỏi tree, nhưng nó có thể được xác nhận lại trước khi quá trình xoá kết thúc. Phương thức này tồn tại về cơ bản vì State có thể được di chuyển từ điểm này sang điểm khác trên một tree.
///dispose() : được gọi khi State bị removed vĩnh viễn
///mounted == false : Khi đối tượng state không bao giờ có thể remount và khi bạn gọi setState() sẽ có lỗi
class MyWidgetLifecycle extends StatefulWidget {
  const MyWidgetLifecycle({super.key});
  @override

  ///createState() : khi build một StatefulWidget thì nó sẽ gọi createState
  State<MyWidgetLifecycle> createState() => _MyWidgetLifecycleState();
}

class _MyWidgetLifecycleState extends State<MyWidgetLifecycle> {
  int i = 0;
  @override
  void initState() {
    print("initState");
    // Đây là phương thức đầu tiên được gọi sau khi createState()
    // initState chỉ được gọi 1 lần kèm theo super.initState()
    // nếu muốn thực hiện điều gì đó ngay sau khi State được tạo thì viết ở đây
    i = 2; // trước khi build giao diện lên thì i được gán bằng 2
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // được gọi ngay sau initState cho lần đầu tiên widget được build trong một StatefulWidget lifecycle
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    // được gọi khi State bị xóa khỏi tree (chuẩn bị bị remove)
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    //được gọi khi State bị removed vĩnh viễn.
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // build(): được gọi để render một Widget. Bắt buộc phải @override và return 1 Widget, khi hot reload ứng dụng, nó bắt đầu chạy ở đây

    return Scaffold(
      appBar: AppBar(title: const Text("Đây là StatefulWidget lifecycle")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("setState $i"),
          TextButton(
              onPressed: () {
                if (mounted) {
                  // để đảm bảo State tồn tại
                  setState(() => i++);
                  print("setState");
                } //thông báo cho framework rằng dữ liệu đã thay đổi và widget tại build context sẽ được rebuild.
              },
              child: const Text("setState")),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Về Main")),
          MyWidgetLifecycle2(number: i)
        ],
      )),
    );
  }
}

class MyWidgetLifecycle2 extends StatefulWidget {
  final int number;
  const MyWidgetLifecycle2({super.key, required this.number});

  @override
  State<MyWidgetLifecycle2> createState() => _MyWidgetLifecycle2State();
}

class _MyWidgetLifecycle2State extends State<MyWidgetLifecycle2> {
  late int number;
  @override
  void initState() {
    print("initState2");
    number = widget.number;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MyWidgetLifecycle2 oldWidget) {
    number = widget.number;
    print(
        "didUpdateWidget"); // thường dùng để nhận biết được sự thay đổi của Widget trong các class lòng nhau
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Text("$number");
  }
}
