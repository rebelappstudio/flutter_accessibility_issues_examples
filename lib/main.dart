import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  /// Indicated whether the semantics debugger overlay should be shown
  bool _showSemanticsDebugger = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: _showSemanticsDebugger,
      title: 'Accessibility issues',
      builder: (_, child) {
        // Let accessibility_tools package do its work
        return AccessibilityTools(child: child);
      },
      home: Column(
        children: [
          Material(
            // Switch to toggle the semantics debugger overlay
            child: SwitchListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: _showSemanticsDebugger,
              title: const Text('Toggle semantics debugger overlay'),
              onChanged: (value) {
                setState(() => _showSemanticsDebugger = value);
              },
            ),
          ),
          const Expanded(
            child: HomePage(),
          ),
        ],
      ),
    );
  }
}
