import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_config.dart';
import 'color_picker_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ColorConfig(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorPickerScreen(),
    );
  }
}
