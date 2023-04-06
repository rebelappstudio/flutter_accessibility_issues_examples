import 'package:flutter/material.dart';

import 'disabling_animations_page.dart';
import 'row_vs_wrap_page.dart';
import 'semantic_labels_page.dart';
import 'small_tap_areas_page.dart';
import 'text_cutting_off_page.dart';
import 'text_overflow_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility issues'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Text overflow'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const TextOverflowPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Row vs Wrap'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const RowVsWrapPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Text cutting off'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const TextCuttingOffPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Small tap areas'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const SmallTapAreasPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Disabling animations'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const DisablingAnimationsPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('Semantic labels'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const SemanticLabelsPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
