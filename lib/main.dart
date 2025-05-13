import 'package:flutter/material.dart';
import 'my_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyMusic',
      theme: ThemeData.dark(),
      home: const MyWidget(),
    );
  }
}
