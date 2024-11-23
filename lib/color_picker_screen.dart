import 'package:flutter/material.dart';
import 'sliders_section.dart';
import 'color_preview.dart';

class ColorPickerScreen extends StatelessWidget {
  const ColorPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RGB'),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: ColorPreview(),
            ),
          ),
          SlidersSection(),
        ],
      ),
    );
  }
}
