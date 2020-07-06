import 'package:flutter/material.dart';
import '../../global/styles.dart';

class LoginField extends StatelessWidget {

  final TextEditingController controller;
  final FocusNode focusNode;
  final IconData icon;
  final String hint;
  final GestureTapCallback onChange;
  final GestureTapCallback onDone;

  final Styles _styles = new Styles();

  LoginField({Key key,
    @required this.controller,
    @required this.focusNode,
    @required this.icon,
    @required this.hint,
    @required this.onChange,
    @required this.onDone
  }): super(key:key);

  @override
  Widget build(BuildContext context){

    return Container (
      constraints: _styles.loginBoxConstraints,
      decoration: _styles.loginBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 8),
          Icon(icon),
          SizedBox(width: 12),
          Flexible(
            child: TextFormField(
              focusNode: focusNode,
              controller: controller,
              autofocus: false,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              autocorrect: false,
              onChanged: (str){
                onChange();
              },
              onFieldSubmitted: (term){
                onDone();
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: _styles.loginInputHint,
              ),
              style: _styles.loginInput,
            ),
          ),
          SizedBox(width: 14),
        ],
      )
    );
  }
}
