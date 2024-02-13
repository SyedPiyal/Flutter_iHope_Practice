import 'package:flutter/material.dart';
import 'package:ihope_practice/views/home/view.dart';
import 'package:ihope_practice/views/language/language.dart';
import 'package:ihope_practice/views/selfTest/SelfTest.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   const MyHomePage(title: '',),
    );
  }
}


