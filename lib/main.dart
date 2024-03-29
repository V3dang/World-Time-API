import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/choose_location.dart';
import 'package:flutter_basics/screens/home.dart';
import 'package:flutter_basics/screens/loading.dart';
import 'package:flutter_basics/screens/choose_location.dart';

void main() {
  runApp(MaterialApp(
      initialRoute : '/',
    routes: {
        '/': (context) => loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),

    },
  ));
}