import 'package:flutter/material.dart';
import 'pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donations App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SignUpPage(),
    );
  }
}
