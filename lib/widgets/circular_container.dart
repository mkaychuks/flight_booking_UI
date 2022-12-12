import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final bool? isColor;
  const CircularContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(width: 2.5, color: isColor == null? Colors.white : const Color(0xff8accf7))
      ),
    );
  }
}