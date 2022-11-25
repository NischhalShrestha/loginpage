import 'package:flutter/material.dart';
import 'login_page.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController  _emailController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ('Field is empty');
        }
        String pattern =
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

        if (!RegExp(pattern).hasMatch(value)) {
          return 'Email is not valid';
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
