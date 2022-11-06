///CupertinoTabScaffold
///backgroundColor:màu nền cho CupertinoTabScaffold
///controller: hiện tab được chọn của Tabbar.Cập nhật index lên CupertinoTabScaffold
///resizeToAvoidBottomInset: có cho phép các popup dưới bottom đè lên giao diện hay không
///restorationId: tạo id để lưu và khôi phục trạng thái của Cupertinotabscaffold
///tabBar: tạo CupertinoTabBar ở bottom
///tabBuilder: được gọi khi tab được chọn
///

///CupertinoTabBar
///activeColor: màu của 1 item trong TabBar khi được active
///backgroundColor: tạo màu nền cho TabBar
///boder: tạo viền cho TabBar
///currentIndex : tự động chọn mục khi mới vào
///height : chiều cao của TabBar
///iconSize: chỉnh size cho các item bên trong TabBar
///inactiveColor : màu cho các item k được chọn
///items: gồm 1 list các item hiển thị trong TabBar
///onTap : callback khi onTap
///preferredSize :

///CupertinoTabView
///builder: bộ tạo các widget hiển thị lên màn hình
///defaultTitle: title mặc định của route
///navigatorKey: key được sử dụng để xây dựng widget Navigator
///route: bảng định tuyến của tabview

import 'package:flutter/cupertino.dart';

class CupertinoTabBarApp extends StatelessWidget {
  const CupertinoTabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTabBarExample(),
    );
  }
}

class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: CupertinoColors.activeOrange,
      tabBar: CupertinoTabBar(
        currentIndex: 2,
        border: Border.all(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.star_fill),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock_solid),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle_fill),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
            label: 'Keypad',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          defaultTitle: "o",
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index'),
            );
          },
        );
      },
    );
  }
}
