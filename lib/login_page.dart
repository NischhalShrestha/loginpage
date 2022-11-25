import 'package:flutter/material.dart';
import 'package:loginpage/password_field.dart';
import 'email_field.dart';
import 'login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 130),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 45),
                ),
              ),
              EmailTextFormField(emailController: _emailController),
              const SizedBox(
                height: 25,
              ),
              PasswordTextFormField(
                passwordController: _passwordController,
              ),

              LoginButton(
                  email1: _emailController.text,
                  password1: _passwordController.text,
                  formkey: _formKey)

              // const SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [

              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
