import 'package:flutter/cupertino.dart';

///CupertinoSliverNavigationBar
///automaticallyImplyLeading :tự động gán leading nếu nó null
///automaticallyImplyTitle: tự động gán Title nếu nó null
///backgroundColor: màu nền cho thanh điều hướng
///border: tạo border cho thanh điều hướng
///brightness: độ sáng của backgroundColor
///largeTitle: tiêu đề của thanh điều hướng
///leading : nút nằm ở đầu thanh điều hướng
///middle : widget nằm ở giữa thanh điều hướng
///opaque: độ trong suốt của màu nền thanh hiệu ứng
///padding: tạo padding cho nội dung thanh điều hướng
///previousPageTitle : tạo tiêu đề cho page trước
///stretch: thanh nav có dài để lấp đầy khu vực cuộn hay không
///trailing : 1 widget nằm cuối trang điều hướng
///transitionBetweenRoutes: chuyển đổi giữa các thanh điều hướng
class SliverNavBarApp extends StatelessWidget {
  const SliverNavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SliverNavBarExample(),
    );
  }
}

class SliverNavBarExample extends StatelessWidget {
  const SliverNavBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // A ScrollView that creates custom scroll effects using slivers.
      child: CustomScrollView(
        // A list of sliver widgets.
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.person_2),
            largeTitle: Text('Contacts'),
            trailing: Icon(CupertinoIcons.add_circled),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Drag me up', textAlign: TextAlign.center),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute<Widget>(
                        builder: (BuildContext context) {
                      return const NextPage();
                    }));
                  },
                  child: const Text('Go to Next Page'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemYellow,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            middle: const Text('Contacts Group'),
            largeTitle: const Text('Family'),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('Drag me up', textAlign: TextAlign.center),
                Text('Tap on the leading button to navigate back',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
