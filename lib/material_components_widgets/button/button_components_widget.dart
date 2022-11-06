///1.DropdownButton
///disabledHint: 1 widget giữ chỗ khi DropdownButton bị tắt
///enableFeedback: phản hồi dành riêng cho nền tẳng
///items: 1 list các item hiển thị trong DropdownButton
///những thuộc tính còn lại như các widget khác

///2.ElevatedButton
///2 thuộc tính bắt buộc là onPressed và 1 widget
///onPressed: null thì nút nhấn k bị Disabled
///các thuộc tính còn lại tương tự

///3.IconButton: lấy icon làm nút nhấn
///2 thuộc tính bắt buộc là icon và onPressed
///các thuộc tính còn lại tương tự

///4.OutlinedButton: 1 button có viền ở ngoài
///2 thuộc tính bắt buộc là onPressed và 1 widget
///các thuộc tính còn lại tương tự

///5.PopupMenuButton
///itemBuilder: dùng để tạo các item hiển thị trong menu

///6.TextButton
///TODO
import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ButtonComponentsWidget extends StatelessWidget {
  const ButtonComponentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          focusColor: Colors.amber,
          alignment: Alignment.bottomRight,
          enableFeedback: false,
          disabledHint: const Text("hi"),
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("ElevatedButton"),
        ),
        IconButton(
          iconSize: 72,
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        OutlinedButton(onPressed: () {}, child: const Text("OutlinedButton")),
        PopupMenuButton<SampleItem>(
          initialValue: selectedMenu,
          onSelected: (SampleItem item) {
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemOne,
              child: Text('Item 1'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemTwo,
              child: Text('Item 2'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemThree,
              child: Text('Item 3'),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text("TextButton"),
        )
      ],
    );
  }
}
