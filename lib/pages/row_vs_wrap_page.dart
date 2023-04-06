import 'package:flutter/material.dart';

class RowVsWrapPage extends StatelessWidget {
  const RowVsWrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text('Pasta carbonara'),
          onChanged: (bool? value) {},
          value: true,
        ),
      ),
      Expanded(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text('Caprese salad'),
          onChanged: (bool? value) {},
          value: false,
        ),
      ),
      Expanded(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: const Text('New York cheesecake'),
          onChanged: (bool? value) {},
          value: true,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Row vs Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Text is unreadable:'),
            const SizedBox(height: 8),
            SizedBox(
              width: 200,
              child: Row(children: children),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('Items wrap and text is more readable:'),
            ),
            SizedBox(
              width: 200,
              child: Wrap(children: children),
            ),
          ],
        ),
      ),
    );
  }
}
