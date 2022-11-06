///CupertinoSegmentedControl
///borderColor: màu viền xung quanh của các nút nhấn
///children: tập hợp các thanh ở trên
///groupValue: giá  trị nhận dc của nút được chọn
///onValueChanged: callback khi chọn nút nào đó
///padding: tạo đệm trong cho nút
///pressedColor: tạo màu khi ta giữ nút
///selectedColor: màu khi được chọn
///unselectedColor: màu khi không được chọn

import 'package:flutter/cupertino.dart';

enum Sky { midnight, viridian, cerulean }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.midnight: const Color(0xff191970),
  Sky.viridian: const Color(0xff40826d),
  Sky.cerulean: const Color(0xff007ba7),
};

class SegmentedControlApp extends StatelessWidget {
  const SegmentedControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SegmentedControlExample(),
    );
  }
}

class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() =>
      _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  Sky _selectedSegment = Sky.midnight;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSegmentedControl<Sky>(
          borderColor: CupertinoColors.activeBlue,
          selectedColor: skyColors[_selectedSegment],
          pressedColor: CupertinoColors.activeBlue,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          groupValue: _selectedSegment,
          onValueChanged: (Sky value) {
            setState(() {
              _selectedSegment = value;
            });
          },
          children: const <Sky, Widget>{
            Sky.midnight: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Midnight'),
            ),
            Sky.viridian: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Viridian'),
            ),
            Sky.cerulean: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Cerulean'),
            ),
          },
        ),
      ),
      child: Center(
        child: Text(
          'Selected Segment: ${_selectedSegment.name}',
          style: const TextStyle(color: CupertinoColors.white),
        ),
      ),
    );
  }
}
