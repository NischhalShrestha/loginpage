import 'package:flutter/material.dart';
import 'login_page.dart';

class LoginButton extends StatefulWidget {
  final GlobalKey<FormState> formkey;
  final String email1;
  final String password1;
  LoginButton({
    required this.email1,
    required this.password1,
    required this.formkey,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    bool isValidated = false;
    String validateEmail = '';
    String validatePassword = '';
    return Column(
      children: [
        TextButton(
          onPressed: () {
            if (widget.formkey.currentState!.validate()) {
              setState(() {
                isValidated = true;
                validateEmail = widget.email1;
                validatePassword = widget.password1;
                print(widget.email1);
                print(validateEmail);
              });
            } else
              print('hello');
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
          ),
        ),
        Container(
          width: 400,
          height: 100,
          color: Colors.red,
          child: Column(children: [
            Text(validateEmail),
            Text(validatePassword),
          ]),
        )
      ],
    );
  }
}
