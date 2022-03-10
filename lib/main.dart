import 'package:flutter/material.dart';
import 'package:pesakit_test/UI/screens/pesakit_home.dart';

void main() {
  runApp(const PesakitApp());
}

class PesakitApp extends StatelessWidget {
  const PesakitApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesakit App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PesakitHome(),
    );
  }
}