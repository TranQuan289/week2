//CupertinoWidget gồm
///1.CupertinoButton
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

///7.CupertinoContextMenu
///actions: list widget hiển thị trên menu cho người dùng lựa chọn
///child: 1 Widget giúp ta giữ để hiển thị CupertinoContextMenu
///previewBuilder:hàm trả về một tiện ích thay thế để hiển thị khi Cupertinocontextmenu mở

///8.CupertinoDatePicker
///backgroundColor : set màu background cho datepicker
///dateOrder : set định dạng của date()
///initialDateTime: tạo bộ chọn kiểu
///maximumDate: ngày tối đa có thể chọn
///maximumYear: năm tối đa có thể chọn trong cuộn  CupertinoDatePickerMode.date
///minimumDate: ngày tối thiểu có thể chọn
///minimumYear: năm tối thiểu có thể chọn trong cuộn  CupertinoDatePickerMode.date
///minuteInterval:
///mode:  chỉ date, time hay date time
///onDateTimeChanged: callback nếu thời gian thay đổi
///use24hFormat : sử dụng định dạng 24h hay không

///9.CupertinoDialogAction
///child: 1 widget ở dưới CupertinoDialogAction
///enabled: vô hiệu hoá nút hay không
///isDefaultAction: (true) nếu nút đó là lựa chọn mặc định trong hộp thoại
///isDestructiveAction: true thì nút màu đỏ còn false thì nút màu xanh
///onPressed: tạo callback cho nút
///textStyle: tạo style cho văn bản xuất hiện trong nút

///10.CupertinoFullscreenDialogTransition: sử dụng để gọi các dialog full màn hình
///child : chứa 1 widget

///11.CupertinoPageTransition : cung cấp hoạt ảnh để chuyển đổi trang
///child : chứa 1 widget

///12.CupertinoPicker
///backgroundColor : màu nền các children
///childDelegate :
///diameterRatio:
///itemExtent : chiều cao của các item trong CupertinoPicker
///magnification : kích thước item trong CupertinoPicker
///offAxisFraction : độ lệch của các item trong CupertinoPicker
///onSelectedItemChanged: callback khi trượt thay đổi
///scrollController:
///selectionOverlay : 1 widget nằm đè lên các item trong CupertinoPicker
///squeeze:tạo độ chồng nhau cho các item trong CupertinoPicker
///useMagnifier: phóng đại item ở giữa trong CupertinoPicker

///13.CupertinoPopupSurface
///child: 1 widget
///isSurfacePainted:true: có sơn màu sau, false : k có sơn màu sau

///14.CupertinoSearchTextField
///autocorrect: tự động sửa chữ
///autofocus: tự động focus SearchTextField
///backgroundColor: tạo màu nền cho SearchTextField
///borderRadius: tạo border cho SearchTextField
///controller : kiểm soát văn bản đang được chỉnh sửa
///decoration: trang trí cho SearchTextField
///enabled: vô hiệu hoá SearchTextField (false)
///focusNode: lấy tiêu điểm
///itemColor: chỉnh màu cho icon search
///itemSize: chỉnh kính thước của icon search
///onChanged : được gọi theo text người dùng nhập
///onSubmitted: được gọi khi người dùng submit
///onTap: được gọi khi Tap
///onSuffixTap: mặc định xoá văn bản
///padding : padding cho SearchTextField
///placeholder(mặc định là search): tạo hint cho SearchTextField
///placeholderStyle: chỉnh style cho  hint SearchTextField
///prefixIcon: lấy widget thay cho icon
///prefixInsets :tạo padding cho icon
///restorationId : set id để lưu và khôi phục state của SearchTextField
///smartDashesType: cho phép tự động định dạng dấu gạch ngang
///smartQuotesType: cho phép tự động định dạng tiền
///style: sytle cho văn bản
///suffixIcon : đặt biểu tượng cho widget cuối thanh search
///suffixInsets: set padding cho suffixIcon
///suffixMode:chỉ ra khi nhìn thấy X-Mark

///15.CupertinoSlider
///activeColor: màu cho phần được kéo qua
///divisions: giá trị mặc định mới vào của slider
///min: giá trị nhỏ nhất của slider
///max :giá trị lớn nhất của slider
///onChanged: bắt sự kiện khi thay đổi giá trị
///onChangeEnd: bắt sự kiện khi slider kéo tới điểm kết thúc
///onChangeStart: bắt sự kiện khi slider kéo tới điểm bắt đầu
///thumbColor: set màu cho nút kéo
///value: giá trị hiện dc chọn trên slider

///16.CupertinoSwitch
///activeColor: màu nền khi switch mở
///dragStartBehavior: xác định cách xử lí khi kéo
///onChanged: callback khi thuộc tính thay đổi
///thumbColor : set màu cho nút switch
///trackColor: màu nền khi switch tắt
///value: giá trị ban đầu của switch(true false)

///17.CupertinoTextField
///autocorrect,autofillHints,autofocus,clearButtonMode,clipBehavior,controller,cursorColor,cursorHeight,cursorRadius,cursorWidth,decoration,dragStartBehavior,enabled,enableIMEPersonalizedLearning,enableInteractiveSelection,enableSuggestions,expands,focusNode,inputFormatters,keyboardAppearance,keyboardType,maxLength,maxLengthEnforcement,maxLines,minLines,obscureText,obscuringCharacter,onChanged,onEditingComplete,onSubmitted,onTap,padding,placeholder,placeholderStyle,prefix,prefixMode,readOnly,restorationId,runtimeType,scribbleEnabled,scrollController,scrollPadding,scrollPhysics,selectionControls,selectionEnabled,selectionHeightStyle,selectionWidthStyle,showCursor,smartDashesType,smartQuotesType,strutStyle,style,suffix,suffixMode,textAlign,textAlignVertical,textCapitalization,textDirection,textInputAction,toolbarOptions

///18.CupertinoTimerPicker
///backgroundColor: màu nền cho CupertinoTimerPicker
///alignment: xác định vị trí của CupertinoTimerPicker
///mode : set sẽ hiển thị theo kiểu gì
///initialTimerDuration: set thời gian ban đầu cho CupertinoTimerPicker
///minuteInterval: mức độ chi tiết của con quay phút
///secondInterval: mức độ chi tiết của con quay giây
///onTimerDurationChanged: callback khi CupertinoTimerPicker có thay đổi

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class CupertinoWidget extends StatefulWidget {
  const CupertinoWidget({super.key});

  @override
  State<CupertinoWidget> createState() => _CupertinoWidgetState();
}

Duration duration = const Duration(hours: 1, minutes: 23);
bool switchValue = true;
double _currentSliderValue = 0.0;
int _selectedFruit = 0;
const double _kItemExtent = 32.0;
const List<String> _fruitNames = <String>[
  'Apple',
  'Mango',
  'Banana',
  'Orange',
  'Pineapple',
  'Strawberry',
];

class _CupertinoWidgetState extends State<CupertinoWidget> {
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
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
              CupertinoSearchTextField(
                suffixMode: OverlayVisibilityMode.always,
                suffixInsets: const EdgeInsets.symmetric(horizontal: 12),
                suffixIcon: const Icon(CupertinoIcons.heart_circle),
                style: const TextStyle(color: Color.fromARGB(255, 239, 99, 99)),
                smartQuotesType: SmartQuotesType.enabled,
                smartDashesType: SmartDashesType.enabled,
                restorationId: "search",
                prefixInsets: const EdgeInsets.symmetric(horizontal: 12),
                placeholderStyle:
                    const TextStyle(color: Color.fromARGB(255, 157, 157, 234)),
                placeholder: "Tìm kiếm ở đây nè",
                padding: const EdgeInsets.symmetric(horizontal: 0),
                controller: TextEditingController(),
                // ignore: avoid_print
                onSuffixTap: () => print("onSuffixTap"),
                onTap: () {
                  // ignore: avoid_print
                  print("onTap");
                },
                onChanged: (value) {
                  //print(value);
                },
                onSubmitted: (value) {
                  //print(value);
                },
                itemSize: 25,
                itemColor: CupertinoColors.secondarySystemFill,
                focusNode: FocusNode(skipTraversal: true),
                autocorrect: true,
                autofocus: false,
                enabled: true,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  color: const Color.fromARGB(255, 177, 212, 250),
                  boxShadow: [
                    BoxShadow(
                      color: CupertinoColors.activeBlue.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () => _showDialog(
                      CupertinoTimerPicker(
                        backgroundColor: CupertinoColors.white,
                        mode: CupertinoTimerPickerMode.ms,
                        minuteInterval: 10,
                        secondInterval: 1,
                        alignment: Alignment.bottomCenter,
                        initialTimerDuration: duration,
                        onTimerDurationChanged: (Duration newDuration) {
                          setState(() => duration = newDuration);
                        },
                      ),
                    ),
                    child: Text(
                      '$duration',
                      style: const TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
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
                ],
              ),
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
              CupertinoContextMenu(
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: true,
                    trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                    child: const Text('Copy'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: CupertinoIcons.share,
                    child: const Text('Share'),
                  )
                ],
                child: const Icon(CupertinoIcons.heart),
              ),
              CupertinoButton(
                color: CupertinoColors.placeholderText,
                onPressed: () => (CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  maximumDate: DateTime.now(),
                  maximumYear: 2022,
                  minimumDate: null,
                  minimumYear: 2001,
                  minuteInterval: 60,
                  dateOrder: DatePickerDateOrder.ydm,
                  backgroundColor: CupertinoColors.activeBlue,
                  mode: CupertinoDatePickerMode.dateAndTime,
                  use24hFormat: false,
                  onDateTimeChanged: (DateTime value) {
                    setState(() {
                      dateTime = value;
                    });
                  },
                )),
                child: Text(
                  '${dateTime.month}-${dateTime.day}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}',
                  style: const TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
              CupertinoButton(
                pressedOpacity: 0.8,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                minSize: 102,
                disabledColor: const Color(0xFF90A17D),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xFF624F82),
                alignment: Alignment.center,
                onPressed: () {
                  _showDialog(
                    CupertinoPicker(
                      diameterRatio: 10.0,
                      backgroundColor: const Color.fromARGB(255, 157, 205, 255),
                      magnification: 1.22,
                      offAxisFraction: 0,
                      squeeze: 1,
                      selectionOverlay: const Icon(
                          color: CupertinoColors.link,
                          CupertinoIcons.cursor_rays),
                      scrollController:
                          FixedExtentScrollController(initialItem: 10),
                      useMagnifier: true,
                      itemExtent: _kItemExtent,
                      onSelectedItemChanged: (int selectedItem) {
                        setState(() {
                          _selectedFruit = selectedItem;
                        });
                      },
                      children: List<Widget>.generate(_fruitNames.length,
                          (int index) {
                        return Center(
                          child: Text(
                            _fruitNames[index],
                          ),
                        );
                      }),
                    ),
                  );
                },
                child: Text(
                  _fruitNames[_selectedFruit],
                  style: const TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
              const CupertinoPopupSurface(
                  isSurfacePainted: false, child: Icon(CupertinoIcons.heart)),
              CupertinoSwitch(
                  trackColor: CupertinoColors.inactiveGray,
                  thumbColor: CupertinoColors.inactiveGray,
                  dragStartBehavior: DragStartBehavior.start,
                  activeColor: CupertinoColors.activeBlue,
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              const CupertinoTextField(),
              CupertinoSlider(
                thumbColor: CupertinoColors.activeBlue,
                min: 0,
                max: 100,
                divisions: 40,
                activeColor: CupertinoColors.activeBlue,
                value: _currentSliderValue,
                onChanged: (value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              CupertinoButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Về Main")),
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
          isDestructiveAction: false,
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
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
