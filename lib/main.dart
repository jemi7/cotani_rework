// ignore_for_file: prefer_const_constructors

import 'package:cotani_rework/route.dart';
import 'package:cotani_rework/theme.dart';
import 'package:flutter/material.dart';
import 'package:cotani_rework/screens/splash/splash_screen.dart';

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
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

