import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 48,
        bottom: 8,
      ),
      child: Text(text),
    );
  }
}
