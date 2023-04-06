import 'package:flutter/material.dart';

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
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('❌ Default icon size (24px) is too small:'),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.abc,
                semanticLabel: 'Toggle capitalization',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('✅ IconButton has a big enough tap area'),
            ),
            IconButton(
              onPressed: () {},
              tooltip: 'Toggle capitalization',
              icon: const Icon(Icons.abc),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('✅ Using ConstrainedBox to build a bigger tap area:'),
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
