import 'package:flutter/material.dart';
import 'package:italia_ui_kit/src/themes/ItaliaTheme.dart';
import 'package:italia_ui_kit/src/themes/ItaliaThemeData.dart';


const EdgeInsetsGeometry _smallPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
const double _smallTextSize = 14;

const EdgeInsetsGeometry _mediumPadding = EdgeInsets.symmetric(vertical: 12, horizontal: 24);
const double _mediumTextSize = 16;

const EdgeInsetsGeometry _largePadding = EdgeInsets.symmetric(vertical: 14, horizontal: 28);
const double _largeTextSize = 18;

class ItaliaButton extends StatefulWidget {

  /// A [Widget] that is placed in the middle of the button.
  /// Typically is a [Text], but it can be whatever you want.
  final Widget child;

  /// The function that is called when the button in pressed.
  final void Function() onTap;

  final EdgeInsets padding;
  final double textSize;

  ItaliaButton({
    this.child,
    this.padding,
    this.textSize,
    this.onTap
  });

  /// A small size Italia themed button 
  ItaliaButton.small({
    this.child,
    this.onTap,
  }) : 
    padding = _smallPadding,
    textSize = _smallTextSize;

  /// A medium size Italia themed button 
  ItaliaButton.medium({
    this.child,
    this.onTap,
  }) : 
    padding = _mediumPadding,
    textSize = _mediumTextSize;
  
  /// A large size Italia themed button 
  ItaliaButton.large({
    this.child,
    this.onTap
  }) : 
    padding = _largePadding,
    textSize = _largeTextSize;

  @override
  _ItaliaButtonState createState() => _ItaliaButtonState();
}

class _ItaliaButtonState extends State<ItaliaButton> {

  @override
  Widget build(BuildContext context) {
    final ItaliaThemeData theme = ItaliaTheme.of(context).theme.currentTheme(context);
    
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: theme.primaryButtonColor,
          borderRadius: BorderRadius.circular(4.0)
        ),
        padding: widget.padding,
        child: DefaultTextStyle(
          style: TextStyle(fontFamily: "TitilliumWeb", fontWeight: FontWeight.w700, fontSize: widget.textSize),
          child: widget.child,
        ),
      ),
    );
  }
}