import 'package:flutter/material.dart';
import 'package:italia_ui_kit/italia_ui_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ItaliaTheme(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      ),
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
      body: Builder(
        builder: (context) => Center(
          child: ItaliaButton.small(
            child: Text("Lorem ipsum dolor sit al"),
            onTap: () => Scaffold.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content: Text("ItaliaButton has been tapped"))),
          )
        ),
      ),
    );
  }
}
