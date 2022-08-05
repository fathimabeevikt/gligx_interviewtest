import 'package:flutter/cupertino.dart';

class ColorBox extends StatefulWidget {
  final Color color;

  ColorBox({required this.color});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
        ),
        height: 30,
        width: 30,
      ),
    );
  }
}
