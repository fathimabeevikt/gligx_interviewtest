import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget {
  final Color color;
  final VoidCallback onTap;

  ColorBox({required this.color,required this.onTap});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.color,
          ),
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
