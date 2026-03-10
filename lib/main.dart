import 'package:flutter/material.dart';
import 'package:jajan_yuk_app/ui/login_page.dart';

void main() {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: const LoginPage(),
    );
  }
}

