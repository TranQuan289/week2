import 'package:flutter/material.dart';
import 'package:week2/stateless_and_stateful_widget/stateful_widget.dart';
import 'basic_widgets.dart';
import 'cupertino_widgets/cupertino_widgets.dart';
import 'inherited_widgets.dart';
import 'stateful_widget_lifecycle.dart';
import 'stateless_and_stateful_widget/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Week2")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ButtonRoute(
                    widget: MyStateLess(count: 2), text: "Đến StatelessWidget"),
                ButtonRoute(
                  widget: MyStateFull(),
                  text: "Đến StatefulWidget",
                ),
                ButtonRoute(
                  widget: MyWidgetLifecycle(),
                  text: "Đến MyWidgetLifecycle",
                ),
                ButtonRoute(
                  text: "Đến InheritedWidget",
                  widget: MyAppInheritedWidget(),
                ),
                ButtonRoute(
                  text: "Đến BasicWidget",
                  widget: BasicWidget(),
                ),
                ButtonRoute(
                  text: "Đến CupertinoWidget",
                  widget: CupertinoWidget(),
                )
              ]),
        ),
      ),
    );
  }
}

class ButtonRoute extends StatelessWidget {
  const ButtonRoute({super.key, this.text, this.widget});
  final String? text;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget!),
        );
      },
      child: Text(text!),
    );
  }
}
