import 'package:flutter/material.dart';

// StatefulWidget gồm:
///createState() : khi build một StatefulWidget thì nó sẽ gọi createState
///mounted == true : khi mà createState 1 BuildContext(nó xác định và điều khiển vị trí của 1 widget trong cây ) được gắn vào State đó, tất cả các Widget đều có thuộc tính bool this.mounted. Nó sẽ trả về true khi buildContext được gán, và sẽ là một error khi gọi setstate của một widget bị ngắt kết nối.sử dụng if (mounted) {… } để đảm bảo State tồn tại trước khi gọi setState ().
///initState() : phương thức được gọi ngay sau khi createState()
///didChangeDependencies()
///build() : render 1 widget
///didUpdateWidget()
///setState() :Nó được sử dụng để thông báo cho framework rằng dữ liệu đã thay đổi và widget tại build context sẽ được rebuild.
///deactivate() : được gọi khi State bị xóa khỏi tree, nhưng nó có thể được xác nhận lại trước khi quá trình xoá kết thúc. Phương thức này tồn tại về cơ bản vì State có thể được di chuyển từ điểm này sang điểm khác trên một tree.
///dispose() : được gọi khi State bị removed vĩnh viễn,là nơi để hủy đăng ký và cancel tất cả các animations, streams, vv…
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
    // Đây là phương thức đầu tiên được gọi sau khi createState()
    // initState chỉ được gọi 1 lần kèm theo super.initState()
    // nếu muốn thực hiện điều gì đó ngay sau khi State được tạo thì viết ở đây
    i = 2; // trước khi build giao diện lên thì i được gán bằng 2
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // được gọi ngay sau initState cho lần đầu tiên widget được build trong một StatefulWidget lifecycle
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyWidgetLifecycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // được gọi khi State bị xóa khỏi tree
    super.deactivate();
  }

  @override
  void dispose() {
    //được gọi khi State bị removed vĩnh viễn.
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
                } //thông báo cho framework rằng dữ liệu đã thay đổi và widget tại build context sẽ được rebuild.
              },
              child: const Text("setState")),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Về Main"))
        ],
      )),
    );
  }
}
