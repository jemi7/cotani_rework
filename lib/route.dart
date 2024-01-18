import 'package:cotani_rework/screens/forgot_password/forgot_password_screen.dart';
import 'package:cotani_rework/screens/home/home_screen.dart';
import 'package:cotani_rework/screens/sign_in/sign_in_screen.dart';
import 'package:cotani_rework/screens/sign_up/sign_up_screen.dart';
import 'package:cotani_rework/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};