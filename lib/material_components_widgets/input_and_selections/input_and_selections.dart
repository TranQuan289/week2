///1.CheckBox
///activeColor: màu khi checkbox đc check
///autofocus:tự động focus lúc bắt đầu khi quanh nó k có node nào được focus
///checkColor: màu sắc của hộp khi được check
///fillColor: màu lấp đầy checkbox
///value: giá trị ban đầu của checkbox
///onChanged: callback khi check or không check

///2.showDatePicker

///3.Radio
///activeColor: màu khi nút được chọn
///autofocus: tự động focus nút
///fillColor : màu lấp đầy radio
///focusColor: màu khi được focus
///value: tên của radio
///onChanged: callback khi radio được chọn hoặc bỏ chọn
///groupValue: giá trị hiện được chọn cho nhóm radio

///4.Switch
///onChanged: callback khi mà swich được đổi
///value: giá trị của swich tương ứng với true false
///activeColor: màu của swich khi được kích hoạt
///...

///5.TextField: chỗ để nhận input
///decoration: decor cho textfield
///obscureText: hiện dạng ẩn ***
///

import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class InputAndSelections extends StatelessWidget {
  const InputAndSelections({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;
  bool light = true;

  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Column(
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        OutlinedButton(
          onPressed: () {
            showDatePicker(
                context: context,
                initialEntryMode: DatePickerEntryMode.calendarOnly,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2022));
          },
          child: const Text('Open Date Picker'),
        ),
        ListTile(
          ///TODO
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Switch(
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              light = value;
            });
          },
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
      ],
    );
  }
}
