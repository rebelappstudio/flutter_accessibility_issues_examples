import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/widgets/section.dart';

class SmallTapAreasPage extends StatelessWidget {
  const SmallTapAreasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Small tap areas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            // Icon has no size set. Icon size falls back to IconThemeData.size
            // which is set to 24px by default. This is too small for a tap area
            //
            const Section('❌ Default icon size (24px) is too small:'),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.abc,
                semanticLabel: 'Toggle capitalization',
              ),
            ),
            //
            // IconButton makes sure that the tap area is big enough
            //
            const Section('✅ IconButton has a big enough tap area'),
            IconButton(
              onPressed: () {},
              tooltip: 'Toggle capitalization',
              icon: const Icon(Icons.abc),
            ),
            //
            // Widget can be wrapped in a ConstrainedBox or a SizedBox to make
            // it and its tap area bigger
            //
            const Section(
              '✅ Using ConstrainedBox to build a bigger tap area:',
            ),
            GestureDetector(
              onTap: () {},
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 48,
                  minWidth: 48,
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
