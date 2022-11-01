import 'package:flutter/material.dart';

//Basic Widget gồm
///Scaffold : là 1 cái giàn giáo để tạo khung bên ngoài chứ 3 cái phổ biến là appbar, body, floatingActionButton
///AppBar: là thanh ở trên cùng của app có thể set title, leading,...
///Container : là 1 thùng chứa, có 1 child có thể set kích thước và decoration theo ý muốn,...
///Column : là 1 cột chứa các children (gồm 1 list các widget) xếp với nhau theo hàng dọc, có thể đặt các children theo ý thích bằng crossAxisAlignment và mainAxisAlignment
///ElevatedButton : là 1 button có 2 thuộc tính bắt buộc là onPressed để tạo chức năng cho button là child Widget(có thể bỏ Widget Text vào để tạo chữ)
///FlutterLogo : tạo ra logo của flutter
///Icon : dùng Icons để hiển thị 1 icon, có thể chỉnh size bằng thuộc tính size và color bằng thuộc tính color
///Image : dùng để hiện thị 1 hình ảnh, có 5 cách : Image.new để lấy hình từ ImageProvider, Image.asset để lấy hình từ folder asset, Image.network để lấy hình trên mạng bằng URL,Image.file lấy hình từ file,  Image.memory lấy hình từ 1 Uint8List.
///Placeholder: Tạo ra 1 hình chữ nhật có dấu X ở giữa
///Row :là 1 hàng chứa các children (gồm 1 list các widget) xếp với nhau theo hàng ngang, có thể đặt các children theo ý thích bằng crossAxisAlignment và mainAxisAlignment
///Text : là widget hiển thị chữ, có thể chỉnh sữa chữ bằng thuộc tính style
class BasicWidget extends StatelessWidget {
  const BasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.navigation),
      ),
      // Tạo 1 khung bên ngoài
      appBar: AppBar(
        title: const Text("Basic Widget"),
        leading: const Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: FlutterLogo(size: 70),
          ),
          Row(
            children: const [
              Icon(
                Icons.ac_unit_rounded,
                color: Colors.lightBlue,
                size: 70,
              )
            ],
          ),
          const Placeholder(fallbackHeight: 80, color: Colors.blueAccent),
          Container(
              height: 100.0,
              width: 100.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Về Main"))
        ],
      ),
    );
  }
}
