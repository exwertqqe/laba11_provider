import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_config.dart';

class ColorPreview extends StatelessWidget {
  const ColorPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final colorConfig = Provider.of<ColorConfig>(context);

    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: colorConfig.color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Center(
        child: Text(
          'RGB(${colorConfig.red}, ${colorConfig.green}, ${colorConfig.blue})',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
