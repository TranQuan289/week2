//CupertinoWidget gồm
///1.CupertinoWidget
///alignment: chỉnh hướng của child trong button
///borderRadius: tạo radius cho box
///color : set màu cho button
///child : con của button (thường là 1 Text)
///disabledColor: màu khi button bị disabled
///minSize : chiều dài dọc tối thiểu của button
///onPressed : tạo chức năng cho button(onPressed: null => button disabled)
///padding : tạo padding cho button(bộ đệm trong)
///pressedOpacity : tạo đồ mờ khi nhấn nút

///2.CupertinoPageScaffold
///navigationBar: tạo thanh appBar cho ios
///backgroundColor: set màu cho body
///child: nhận 1 Widget
///resizeToAvoidBottomInset: set xem bàn phím có che khuất 1 số phần dưới bottom không

///3.CupertinoNavigationBar
///automaticallyImplyLeading: tự động thêm leading nếu leading null
//////automaticallyImplyMiddle: tự động thêm middle nếu middle null
///backgroundColor: tạo màu cho thanh appBar
///border: tạo border cho appBar
///brightness : dùng để tăng tỉ lệ tương phản của thanh trạng thái
///transitionBetweenRoutes(true) : chuyển tiếp thanh điều hướng nếu màn hình tiếp theo cũng xài CupertinoNavigationBar or CupertinoSliverNavigationBar với transferBetweenRoutes là true
///heroTag : gắn thẻ cho navigation bar nếu transitionBetweenRoutes is true
///leading :chứa 1 widget ở bên trái của thanh appBar, thường là 1 icon hoặc 1 image để điều hướng
///middle : chứa 1 widget ở giũa thanh appBar, thường là 1 Text để tạo title cho thanh appBar
///padding : tạo vùng đệm bên trong appBar
///previousPageTitle:
///trailing: chứa 1 widget nằm ở cuối thanh điều hướng

///4.CupertinoActionSheet
///action: tập hợp các action được hiển thị cho người dùng chọn
///actionScrollController
///cancelButton : tạo 1 nút bên dưới các action
///title : tạo tiile bên trên action(mặc định được căn giữa)
///message : tạo ra 1 message nằm dưới title
///messageScrollController

///5.CupertinoActivityIndicator
///animating: true thì quay mà false thì đứng yên
///color : tạo màu cho CupertinoActivityIndicator
///radius : tạo bán kính cho CupertinoActivityIndicator

///6.CupertinoAlertDialog
///actions : là tập hợp các action nằm ngang
///actionScrollController
///content : text ở giữa CupertinoAlertDialog
///title : tiêu đề của CupertinoAlertDialog nằm trên cùng
///insetAnimationCurve : tạo hiệu ứng cho CupertinoAlertDialog
///insetAnimationDuration :
///TODO

import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  const CupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'CupertinoApp',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('CupertinoPageScaffold Sample'),
          backgroundColor: const Color(0xFFA3C7D6),
          automaticallyImplyLeading: true,
          automaticallyImplyMiddle: true,
          border: Border.all(width: 1.0, color: const Color(0xFFF8FFDB)),
          leading: const Icon(
            CupertinoIcons.heart_fill,
          ),
          brightness: Brightness.dark,
          transitionBetweenRoutes: true,
          //heroTag: "tag",
          padding: const EdgeInsetsDirectional.only(start: 20),
          previousPageTitle: "previousPageTitle",
          // ignore: prefer_const_constructors
          trailing: Icon(CupertinoIcons.heart_circle),
        ),
        backgroundColor: const Color(0xFF9F73AB),
        resizeToAvoidBottomInset: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                pressedOpacity: 0.8,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                minSize: 102,
                disabledColor: const Color(0xFF90A17D),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xFF624F82),
                alignment: Alignment.center,
                child: const Text("CupertinoButton"),
                onPressed: () {
                  _showActionSheet(context);
                },
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                pressedOpacity: 0.8,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                minSize: 102,
                disabledColor: const Color(0xFF90A17D),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xFF624F82),
                alignment: Alignment.center,
                child: const Text("CupertinoAlertDialog"),
                onPressed: () {
                  _showAlertDialog(context);
                },
              ),
              const CupertinoActivityIndicator(
                  animating: true, radius: 40.0, color: CupertinoColors.black),
              CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Về Main"))
            ],
          ),
        ),
      ),
    );
  }

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Destructive Action'),
          ),
        ],
      ),
    );
  }
}

void _showAlertDialog(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      insetAnimationCurve: Curves.easeInOutBack,
      insetAnimationDuration: const Duration(seconds: 2),
      title: const Text('Alert'),
      content: const Text('Proceed with destructive action?'),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
            //TODO
          },
          child: const Text('No'),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
