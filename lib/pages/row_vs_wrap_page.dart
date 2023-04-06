import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/widgets/section.dart';

class RowVsWrapPage extends StatelessWidget {
  const RowVsWrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of children to be displayed in a Row or a Wrap. It's the same list
    // of children for both Row and Wrap but the behavior is different
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

    // The maximum width of the Row or Wrap. This is used to limit the width of
    // the container to demonstrate the issue
    const maxContainerWidth = 200.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Row vs Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Section('Text is unreadable:'),
            const SizedBox(height: 8),
            SizedBox(
              width: maxContainerWidth,
              child: Row(children: children),
            ),
            const Section('Items wrap and text is more readable:'),
            SizedBox(
              width: maxContainerWidth,
              child: Wrap(children: children),
            ),
          ],
        ),
      ),
    );
  }
}
