///AlertDialog
///title: tiêu đề của AlertDialog
///content: nội dung của AlertDialog
///actions: các nút dưới AlertDialog(thường là button)
///...

///BottomSheet
///onClosing: được gọi khi BottomSheet bắt đầu đóng
///builder: xây dựng nội dung cho BottomSheet

///ExpansionPanel
///backgroundColor: xác định màu cho panel
///body: phần được mở rộng
///canTapOnHeader: có thể tap để mở rộng header hay không
///headerBuilder: xây dựng header để mở rộng
///isExpanded: có mở rộng hay không

///SimpleDialog
///alignment: hình dạng của đường viền SimpleDialog
///backgroundColor: màu nền của bề mặt SimpleDialog
///children: nội dung của hộp thoại dưới tiêu đề
///contentPadding: padding quanh nội dụng
///insetPadding: padding ngoài SimpleDialog
///shape: hình dạng của điền viền SimpleDialog
///title: tiêu đề của SimpleDialog
///titlePadding: padding cho title
///titleTextStyle: style cho title

///SnackBar
///action: là 1 snackbaraction chứa label và onPressed để callback khi nhấn
/// content: nội dung của SnackBar
/// duration: thời gian hiển thị SnackBar trên màn hình
///width: chiều dài của SnackBar
///padding: padding cho SnackBar
///behavior: xác định hành vi và vị trị của SnackBar
///shape: tạo shape cho SnackBar

import 'package:flutter/material.dart';

class DialogsAlertsAndPanels extends StatelessWidget {
  const DialogsAlertsAndPanels({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('AlertDialog Title'),
              content: const Text('AlertDialog description'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
          child: const Text('Show Dialog'),
        ),
        // BottomSheet(
        //     onClosing: () {},
        //     builder: (BuildContext context) => AlertDialog(
        //           title: const Text('AlertDialog Title'),
        //           content: const Text('AlertDialog description'),
        //           actions: <Widget>[
        //             TextButton(
        //               onPressed: () => Navigator.pop(context, 'Cancel'),
        //               child: const Text('Cancel'),
        //             ),
        //             TextButton(
        //               onPressed: () => Navigator.pop(context, 'OK'),
        //               child: const Text('OK'),
        //             ),
        //           ],
        //         )),
        ElevatedButton(
          child: const Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                action: SnackBarAction(
                  label: 'Action',
                  onPressed: () {},
                ),
                content: const Text('Awesome SnackBar!'),
                duration: const Duration(milliseconds: 1500),
                width: 380.0, // Width of the SnackBar.
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, // Inner padding for SnackBar content.
                ),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
