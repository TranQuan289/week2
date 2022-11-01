//InheritedWidget là 1 class Widget : mọi data trong class Widget đều là bất biến
// InheritedWidget là một nơi lưu trữ data và cung cấp data cho widget con trong widget tree,tất cả widget con của InheritedWidget đều có thể truy cập vào InheritedWidget để lấy data
// vị trí nên đặt InheritedWidget : Vị trí root của App hoặc Vị trí root của Page(1 màn hình)
import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  // là constructor của InheritedWidget : child ở đây chính là những Widget con của nó(những Widger mà sau này sẽ lấy dữ liệu từ đây), myData ở đây chính là data mà nó sẽ chia sẽ đến cho các widget con của nó
  const MyInheritedWidget(
      {super.key, required this.myData, required super.child});
  final int myData;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true; // khi InheritedWidget rebuild, nó cũng bắt các widget con đang phụ thuộc vào nó(widget con đang sử dụng data của nó bằng hàm MyInheritedWidget.of), hay nói cách khác là widget con đang sử dụng data của nó phải rebuild
  }

  static MyInheritedWidget? of(BuildContext context) {
    // hàm of sẽ giúp các widget truy cập trực tiếp vào MyInheritedWidget để lấy data bằng cách gọi MyInheritedWidget.of(context)
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
    //giúp ta get được Widget cha gần vị trí context nhất theo cái Type mình truyền vào(ở đây mình truyền vào MyInheritedWidget nên nó sẽ tìm widget cha có type là MyInheritedWidget mà gần vị trí context nhất)
  }
}

class MyAppInheritedWidget extends StatelessWidget {
  const MyAppInheritedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text("MyInheritedWidget")),
      // khởi tạo MyInheritedWidget tại vị trí cha của cả MyCenterWidget và MyText
      body: MyInheritedWidget(
        myData:
            counter, // data cần chia sẻ cho mấy widget child chính là counter
        child:
            const MyCenterWidget(), // child là sub tree từ MyCenterWidget xuống
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyCenterWidget extends StatelessWidget {
  const MyCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyText(),
    );
  }
}

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    // Nhờ hàm MyInheritedWidget.of ta sẽ get được data
    // Bởi vì hàm of là hàm static nên ta có thể gọi ở bất cứ widget con nào ta muốn
    final counter = MyInheritedWidget.of(context)?.myData;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Tui là widget Text. Data của tui hiện tại là: $counter'),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Về Main"))
      ],
    );
  }
}
