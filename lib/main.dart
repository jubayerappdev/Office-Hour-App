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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                 child:  FilledButton(
                     onPressed: () {},
                     child: Text('Primary Button'),
                 ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.maxFinite,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Outlined Button'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
