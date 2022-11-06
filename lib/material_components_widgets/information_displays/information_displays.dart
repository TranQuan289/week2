///Card
///borderOnForeground: tạo boder cho child
///child: widget bên trong card
///clipBehavior: nội dung bị cắt hoặc không
///color: màu nền cho Card
///elevation: size bóng dưới card
///margin : bộ đệm ngoài của card
///shadowColor : màu của bóng dưới card
///shape : hình dạng của card
///surfaceTintColor:

///Chip
///autofocus:tự động focus lúc vào
///avatar: hiển thị nhãn trước của chip
///label: nhãn của chip
///backgroundColor: màu nền của chip

///CircularProgressIndicator: 1 progress
///backgroundColor: màu của CircularProgressIndicator
///strokeWidth: size của CircularProgressIndicator

///DataTable
///columns: cấu hình nhãn và cột trong bảng

///GridView
///childrenDelegate: truyền children vào GridView
///gridDelegate: kiểu soát bố cục của các children trong GridView

///LinearProgressIndicator
///backgroundColor: màu nền của LinearProgressIndicator
///minHeight: chiều cao tối thiểu của LinearProgressIndicator

///Tooltip

import 'package:flutter/material.dart';

class InformationDisplays extends StatelessWidget {
  const InformationDisplays({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          surfaceTintColor: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Chip(
          backgroundColor: Colors.blue,
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: const Text('AB'),
          ),
          label: const Text('Aaron Burr'),
        ),
        const CircularProgressIndicator(
          strokeWidth: 12.0,
        ),
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Age',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
          ],
        ),
        const LinearProgressIndicator(),
        Tooltip(
          message: 'I am a Tooltip',
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient:
                const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
          ),
          height: 50,
          padding: const EdgeInsets.all(8.0),
          preferBelow: false,
          textStyle: const TextStyle(
            fontSize: 24,
          ),
          showDuration: const Duration(seconds: 2),
          waitDuration: const Duration(seconds: 1),
          child: const Text('Tap this text and hold down to show a tooltip.'),
        ),
        GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: 300,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.amber,
                child: Center(child: Text('$index')),
              );
            }),
      ],
    );
  }
}
