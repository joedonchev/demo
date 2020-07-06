import 'package:flutter/material.dart';

class Styles {

  /////////////////////////////////////////////////////////////////////////////
  // Colors
  /////////////////////////////////////////////////////////////////////////////

  static final Color _lightBlue = new Color(0xFFF5F7F9);
  static final Color _black = new Color(0xFF3C3348);
  static final Color _hintGrey = new Color(0xFFB3B3B3);
  static final Color _yellow = new Color(0xFFF8D57E);

  Color black = _black;
  Color hintGrey = _hintGrey;
  Color yellow = _yellow;

  /////////////////////////////////////////////////////////////////////////////
  // Text
  /////////////////////////////////////////////////////////////////////////////

  final TextStyle title = new TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w700,
    color: _black,
    fontSize: 19.0,
  );

  final TextStyle loginButton = new TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w700,
    color: _black,
    fontSize: 13.0,
  );

  final TextStyle loginInput = new TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w400,
    color: _black,
    fontSize: 14.0,
  );

  final TextStyle loginInputHint = new TextStyle(
    fontFamily: "OpenSans",
    fontWeight: FontWeight.w400,
    color: _hintGrey,
    fontSize: 14.0,
  );

  /////////////////////////////////////////////////////////////////////////////
  // Constraints
  /////////////////////////////////////////////////////////////////////////////

  final BoxConstraints loginBoxConstraints = BoxConstraints(
    minWidth: 100.0,
    maxWidth: 350.0,
    minHeight: 40.0,
    maxHeight: 40.0
  );

  /////////////////////////////////////////////////////////////////////////////
  // Decorations
  /////////////////////////////////////////////////////////////////////////////

  final BoxDecoration backgroundDec = new BoxDecoration(color: _lightBlue);

  final BoxDecoration loginBoxDecoration = new BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    border: Border.all(
      color: _black,
      width: 1.0,
      style: BorderStyle.solid
    ),
  );

  final BoxDecoration loginButtonDecoration = new BoxDecoration(
    color: _yellow,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      new BoxShadow(
        color: Colors.black.withOpacity(0.18),
        offset: new Offset(0.0, 2),
        blurRadius: 3.0,
      )
    ],
  );

  /////////////////////////////////////////////////////////////////////////////
  // Shadows
  /////////////////////////////////////////////////////////////////////////////

  //

}
