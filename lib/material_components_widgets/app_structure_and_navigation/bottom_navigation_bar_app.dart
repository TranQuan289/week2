///1.MaterialApp:cung cấp các widget cho việc xây dựng ứng dụng sử dụng thư viện Material Design UI của google.
///home: màn hình chứ của MaterialApp
///initialRoute: route đầu tiên được hiển thị
///route: thiết lập route cho ứng dụng
///title: tạo title cho appBar
///actions: Map<Type, Action<Intent>>, kiểm tra các khoá Intent
///backButtonDispatcher: xử lý nút back trên android
///theme : tạo theme cho app
///darktheme : cung cấp dark theme cho app
///themeMode : là đối tượng quyết định theme cho material app
///color: kiểm soát màu chính dc sử dụng trong app
///debugShowMaterialGrid: true: tạo lưới đè lên MaterialApp
///debugShowCheckedModeBanner : false để tắt chế độ debug
///...

///2.BottomNavigationBar
///backgroundColor: màu nền của BottomNavigationBar
///currentIndex: mặc định vào sẽ chọn index nào
///elevation: mặc định là 8.0
///enableFeedback: tạo âm thanh khi nhấn hoặc giữ
///fixedColor: màu của item trong
///iconSize : kích thước của các icon trong BottomNavigationBar
///items : list các item được hiển thị
///onTap: callback khi onTap
///showSelectedLabels: ẩn hiện nhãn của item đang chọn
///showUnselectedLabels: ẩn hiện nhãn các item k được chọn
///...

///3.Drawer
///backgroundColor: màu nền cho Drawer
///child : 1 list item của Drawer
///elevation: thay đổi mức độ nổi bật của Drawer
///semanticLabel: Nhãn của hộp thoại được các khung trợ năng sử dụng để thông báo các chuyển đổi màn hình khi ngăn kéo được mở và đóng.
///shape: tạo hình dạng của Drawer
///width: chiều dài ngang của Drawer
///TODO

import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatelessWidget {
  const BottomNavigationBarApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: BottomNavigationBarApp1(),
    );
  }
}

class BottomNavigationBarApp1 extends StatefulWidget {
  const BottomNavigationBarApp1({super.key});

  @override
  State<BottomNavigationBarApp1> createState() =>
      _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp1> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        //TODO
        width: 250,
        shape: Border.all(color: Colors.red),
        semanticLabel: "hihi",
        backgroundColor: Colors.cyan,
        elevation: 1000,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 20,
        elevation: 20,
        enableFeedback: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
