import 'package:flutter/material.dart';


const EdgeInsetsGeometry _smallPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
const double _smallTextSize = 14;

const EdgeInsetsGeometry _mediumPadding = EdgeInsets.symmetric(vertical: 12, horizontal: 24);
const double _mediumTextSize = 16;

const EdgeInsetsGeometry _largePadding = EdgeInsets.symmetric(vertical: 14, horizontal: 28);
const double _largeTextSize = 18;

/// An Italia themed button
class ItaliaButton extends StatefulWidget {

  final Widget child;
  final EdgeInsets padding;
  final double textSize;

  ItaliaButton.small({
    this.child,
  }) : 
    padding = _smallPadding,
    textSize = _smallTextSize;

  ItaliaButton.medium({
    this.child,
  }) : 
    padding = _mediumPadding,
    textSize = _mediumTextSize;
  
  ItaliaButton.large({
    this.child,
  }) : 
    padding = _largePadding,
    textSize = _largeTextSize;

  @override
  _ItaliaButtonState createState() => _ItaliaButtonState();
}

class _ItaliaButtonState extends State<ItaliaButton> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: Color(0xFF0073E6),
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