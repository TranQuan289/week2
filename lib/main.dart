import 'package:flutter/material.dart';
import 'material_components_widgets/button/button_components_widget.dart';
import 'material_components_widgets/dialogs_alerts_and_panels/dialogs_alerts_and_panels.dart';
import 'material_components_widgets/information_displays/information_displays.dart';
import 'material_components_widgets/input_and_selections/input_and_selections.dart';
import 'route_page.dart';
import 'package:week2/basic_widgets.dart';
import 'package:week2/inherited_widgets.dart';
import 'cupertino_widgets/cupertino_widgets.dart';
import 'stateful_widget_lifecycle.dart';
import 'stateless_and_stateful_widget/stateful_widget.dart';
import 'stateless_and_stateful_widget/stateless_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RoutePage(),
        '/stl': (context) => const MyStateLess(count: 1),
        '/stf': (context) => const MyStateFull(),
        '/lifecycle': (context) => const MyWidgetLifecycle(),
        '/inherited': (context) => const MyAppInheritedWidget(),
        '/basic': (context) => const BasicWidget(),
        '/cupertino': (context) => const CupertinoWidget(),
        '/material': (context) => const InformationDisplays(),
      },
    );
  }
}
