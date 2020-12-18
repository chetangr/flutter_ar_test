import 'package:artest/fixed_positions.dart';
import 'package:artest/multiple_images.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AugmentedImagesPage(),
    );
  }
}
