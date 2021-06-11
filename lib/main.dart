import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

//import 'package:flutter_application_2/home_screen.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: DialPad(
                enableDtmf: true,
                outputMask: "(000) 000-0000",
                backspaceButtonIconColor: Colors.red,
                makeCall: (number) {
                  print(number);
                })),
      ),
    );
  }
}
