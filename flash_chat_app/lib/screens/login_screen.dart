import 'package:flash_chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../components/padded_color_button.dart';

class LoginScreen extends StatefulWidget {

  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: kHeroLogoTag,
              child: SizedBox(
                height: 200.0,
                child: Image.asset(kLogoImage),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center ,
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email'
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            PaddedColorButton(
              onPressed: () {},
              color: Colors.lightBlueAccent,
              textChild: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}
