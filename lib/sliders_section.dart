import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_config.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final config = Provider.of<ColorConfig>(context);

    return Column(
      children: [
        SliderTile(
          label: 'Red',
          value: config.red.toDouble(),
          min: 0,
          max: 255,
          color: Colors.red,
          onChanged: (value) => config.updateRed(value.toInt()),
        ),
        SliderTile(
          label: 'Green',
          value: config.green.toDouble(),
          min: 0,
          max: 255,
          color: Colors.green,
          onChanged: (value) => config.updateGreen(value.toInt()),
        ),
        SliderTile(
          label: 'Blue',
          value: config.blue.toDouble(),
          min: 0,
          max: 255,
          color: Colors.blue,
          onChanged: (value) => config.updateBlue(value.toInt()),
        ),
      ],
    );
  }
}

class SliderTile extends StatelessWidget {
  final String label;
  final double value;
  final double min;
  final double max;
  final Color color;
  final ValueChanged<double> onChanged;

  const SliderTile({super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.color,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '$label: ${value.toInt()}',
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ),
        Slider(
          value: value,
          min: min,
          max: max,
          activeColor: color,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
