///TabBar
///automaticIndicatorColorAdjustment: tự động điều chỉnh indicatorColor
///indicatorColor: màu gạch dưới cho các item
///tabs: gồm 1 list tab widget
///
///TabView
///children : mỗi tiện ích cho mỗi tab
///clipBehavior: nội dung sẽ bị cắt hoặc k cắt
///controller: lựa chọn widget và hiệu ứng state
///dragStartBehavior: xác định cách xử lý hành vi
///physics: callback khi đang chuyển trang
///viewportFraction: set giá trị trang lấp đầy màn hình theo hướng cuộn

///TabController
///animation: tạo animation khi chuyển cho TabBar và TabView
///animationDuration: thời gian chuyển animation
///length: số page
///previousIndex: chỉ mục của tab đã được chọn trước đó
///initialIndex: chỉ mục mặc định ban đầu được chọn khi nào

///TabPageSelector
///borderStyle: tạo style cho cái hình tròn nhỏ
///color: màu cho các nút trang k đc chọn
///indicatorSize : size của các nút tròn
///selectedColor: màu của các nút tròn được chọn
import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(seconds: 2),
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            automaticIndicatorColorAdjustment: false,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          viewportFraction: 1,
          physics: ScrollPhysics(),
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
