import 'package:flutter/material.dart';
import '../global/styles.dart';
import '../global/language.dart';
import '../global/bloc.dart';
import '../global/provider.dart';
import 'components/login_field.dart';
import 'components/login_button.dart';

class LoginPage extends StatelessWidget {

  // Styles
  final Styles _styles = new Styles();

  // Text Input Controllers
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();

  // Focus Nodes (Text Input)
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();


  @override
  Widget build(BuildContext context){

    // Demonstrate the Reactive approach to re-drawing the UI.
    // After we click the Login button, the button disappears
    // and "Thank you!" title appears.
    // As soon as we write something in the text fields,
    // the login button comes back.
    // The app re-draws only the Login Button and not the whole UI.
    bool _thanksVisible = false;

    // Demonstrate Multi-language Support.
    // The app supports 2 languages - English and Bulgarian
    // The language of the app will be set to English by default,
    // but if the phone's system language is set Bulgarian,
    // the app will automatically translate itself to Bulgarian
    final Language _lang = Language.of(context);

    // Bloc
    final Bloc _bloc = Provider.of(context);

    void _inputChange(BuildContext context){
      if(_thanksVisible){
        _bloc.setLogin(false);
      }
    }

    void _login(BuildContext context){
      _nameFocusNode.unfocus();
      _passFocusNode.unfocus();
      _bloc.setLogin(true);
      _thanksVisible = true;
    }

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: DecoratedBox(
        decoration: _styles.backgroundDec,
        child: Column(
          children: <Widget>[
            Spacer(),
            Text(_lang.loginTtl.toUpperCase(), style: _styles.title),
            SizedBox(height: 26),
            // Login Form
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(flex: 1, child: Container()),
                Flexible(
                  flex: 8,
                  child: Column(
                    children: <Widget>[
                      LoginField(
                        controller: _nameController,
                        focusNode: _nameFocusNode,
                        icon: Icons.person,
                        hint: _lang.loginNameHint,
                        onChange: (){
                          _inputChange(context);
                        },
                        onDone: (){
                          _login(context);
                        },
                      ),
                      SizedBox(height: 20),
                      LoginField(
                        controller: _passController,
                        focusNode: _passFocusNode,
                        icon: Icons.https,
                        hint: _lang.loginPassHint,
                        onChange: (){
                          _inputChange(context);
                        },
                        onDone: (){
                          _login(context);
                        },
                      ),
                      SizedBox(height: 20),
                      StreamBuilder<bool>(
                        stream: _bloc.login,
                        builder: (context, snapshot) {
                          if(snapshot.hasData && snapshot.data){
                            return Text(_lang.thankYou.toUpperCase(), style: _styles.title);
                          } else {
                            return LoginButton(
                              onTap: (){
                                _login(context);
                              },
                            );
                          }
                        }
                      ),
                    ],
                  )
                ),
                Flexible(flex: 1, child: Container()),
              ],
            ),
            // End of Login Form
            Spacer()
          ],
        ),
      )
    );
  }
}