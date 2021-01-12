import 'package:flutter/material.dart';
import 'package:italia_ui_kit/italia_ui_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Italia UI Kit Flutter port"),
      ),
      body: Center(
        child: ItaliaButton.small(child: Text("Lorem ipsum dolor sit al"),)
      ),
    );
  }
}
