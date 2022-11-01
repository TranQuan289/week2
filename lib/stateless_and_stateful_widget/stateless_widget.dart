import 'package:flutter/material.dart'; // thư viện này sẽ cung cấp widget để code

//class Widget : mọi data trong class Widget đều là bất biến
// State là thông tin thể hiện trên Widget mà có thể thay đổi trong suốt thời gian nó tồn tại
// StatelessWidget chủ yếu để tạo các giao diện tĩnh
class MyStateLess extends StatelessWidget {
  // StatelessWidget là 1 Widget không có State(không có trạng thái)
  // thụ động Update UI vì bản thân StatelessWidget không có hàm setState và không thể tự thay đổi dữ liệu dc
  // StatelesWidget chỉ có thể thay đổi dữ liệu trên giao diện bằng cách dùng constructor truyền vào
  const MyStateLess({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    // hot reload bắt đầu chạy ở đây
    return Scaffold(
      appBar: AppBar(title: const Text("Đây là statelesswidget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count được lấy từ constructor : $count'),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Về Main"),
            ),
          ],
        ),
      ),
    );
  }
}
// cố gắng sử dụng StatelessWidget nhất có thể để code có thể dễ đọc hơn

class Intern {
  final name =
      "Winter"; // đây không phải là 1 State vì không thay đổi được (bất biến)
}

class State {
  int? slary; // đây là 1 State vì nó có thể thay đổi được (khả biến)
}
