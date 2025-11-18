import 'package:flutter/material.dart';
import 'package:my_flutter_app_1/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme().theme,
      home: const Scaffold(body: Center(child: Text('Hello, Flutter!'))),
    );
  }
}
