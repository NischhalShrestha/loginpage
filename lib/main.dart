import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'LoginPage',
      routes: {'LoginPage': (context) => LoginPage()},
    ),
  );
}

