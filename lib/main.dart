
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentapp/routes.dart';
import 'package:rentapp/theme.dart';
import 'package:rentapp/views/screens/LoginScreens/signin/sign_in_screen.dart';
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
      theme: themeData(),
      initialRoute: SigniInScreen.routeName,
      routes: routes,
    );
  }
}

