// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:firebase_auth10_12/ui/home_screen.dart';
import 'package:firebase_auth10_12/ui/login.dart';
import 'package:firebase_auth10_12/ui/register.dart';

MaterialPageRoute _pageRoute(
        {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route? generateRoute(RouteSettings settings) {
  Route? _route;
  // ignore: no_leading_underscores_for_local_identifiers
  final _args = settings.arguments;

  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: LoginScreen(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegisterScreen(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: HomeScreen(), settings: settings);
      break;
  }
  return _route;
}

final NAV_KEY = GlobalKey<NavigatorState>();
const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
