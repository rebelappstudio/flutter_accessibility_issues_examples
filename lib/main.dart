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
  bool _showSemanticsDebugger = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: _showSemanticsDebugger,
      title: 'Accessibility issues',
      home: Column(
        children: [
          Material(
            child: SwitchListTile(
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (value) {
                setState(() => _showSemanticsDebugger = value);
              },
              value: _showSemanticsDebugger,
              title: const Text('Toggle semantics debugger overlay'),
            ),
          ),
          const Expanded(
            child: HomePage(),
          ),
        ],
      ),
      builder: (_, child) => AccessibilityTools(child: child),
    );
  }
}
