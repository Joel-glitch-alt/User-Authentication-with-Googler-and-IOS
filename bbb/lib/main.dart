import 'package:bbb/auth/screens/login_screen.dart';
import 'package:bbb/auth/screens/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Authentication Screen',
        home: RegisterPager(
          onTap: () {},
        )
        //LoginScreen(
        //   onTap: () {},
        // )
        );
  }
}
