import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {

    final TextEditingController passwordController;
  PasswordTextFormField({
    required this. passwordController,
  });
  @override
  // ignore: no_logic_in_create_state
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {

  bool _isHidden = true;

  password_view() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is Empty';
        }

        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }

        return null;
      },
      obscureText: _isHidden,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: password_view,
          child: Icon(
            _isHidden ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        ),
        hintText: 'password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
