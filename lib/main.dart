import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/src/View/app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
