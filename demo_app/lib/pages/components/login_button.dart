import 'package:flutter/material.dart';
import '../../global/styles.dart';
import '../../global/language.dart';

class LoginButton extends StatelessWidget {

  final GestureTapCallback onTap;
  final Styles _styles = new Styles();

  LoginButton({Key key, @required this.onTap}): super(key:key);

  @override
  Widget build(BuildContext context){

    final Language _lang = Language.of(context);

    return Container (
      constraints: _styles.loginBoxConstraints,
      decoration: _styles.loginButtonDecoration,
      child: Material(
        color: Colors.transparent,
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_lang.loginBtn.toUpperCase(), style: _styles.loginButton)
            ],
          ),
        ),
      )
    );
  }
}
