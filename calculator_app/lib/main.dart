import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));}
  class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: HomePage(),
      );
    }
  }

