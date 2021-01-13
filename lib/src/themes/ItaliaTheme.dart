import 'package:flutter/widgets.dart';
import 'package:italia_ui_kit/src/themes/ItaliaThemeData.dart';
import 'package:italia_ui_kit/src/themes/dark.dart';
import 'package:italia_ui_kit/src/themes/light.dart';

class ItaliaTheme extends InheritedWidget {

  ItaliaTheme({this.child, Key key}) : super(key: key);

  final Widget child;
  final ItaliaThemeData lightThemeData = ItaliaLightThemeData();
  final ItaliaThemeData darkThemeData = ItaliaDarkThemeData();
  final CurrentThemeState theme = CurrentThemeState();

  static ItaliaTheme of(BuildContext context) {
    ItaliaTheme italiaTheme = context.dependOnInheritedWidgetOfExactType<ItaliaTheme>();
    if(italiaTheme == null) throw Exception("There is no ItaliaTheme in your widget tree! Check that you wrapped your root widget with a ItaliaTheme");
    return italiaTheme;
  }

  @override
  bool updateShouldNotify(ItaliaTheme oldWidget) => 
    this.lightThemeData != oldWidget.lightThemeData ||
    this.darkThemeData  != oldWidget.darkThemeData  ||
    this.theme          != oldWidget.theme;
}

enum _CurrentTheme {
  light,
  dark
}

class CurrentThemeState extends ChangeNotifier {
  
  _CurrentTheme _currentTheme = _CurrentTheme.light;

  ItaliaThemeData currentTheme(BuildContext context) {
    final ItaliaTheme theme = ItaliaTheme.of(context);

    switch (_currentTheme) {
      case _CurrentTheme.dark:
        return theme.darkThemeData;

      case _CurrentTheme.light:
      default:
        return theme.lightThemeData;
    }
  }

  void switchTheme() {
    if(_currentTheme == _CurrentTheme.light) {
      _currentTheme = _CurrentTheme.dark;
    } else {
      _currentTheme = _CurrentTheme.light;
    }

    notifyListeners();
  }
}