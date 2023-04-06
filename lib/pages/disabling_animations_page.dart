import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class DisablingAnimationsPage extends StatefulWidget {
  const DisablingAnimationsPage({super.key});

  @override
  State<DisablingAnimationsPage> createState() =>
      _DisablingAnimationsPageState();
}

class _DisablingAnimationsPageState extends State<DisablingAnimationsPage> {
  double _turns = 1;

  @override
  Widget build(BuildContext context) {
    final areAnimationsDisabledSystemWide =
        MediaQuery.of(context).disableAnimations;
    final areAnimationsDisabledInDebugMode = debugSemanticsDisableAnimations;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Disabling animations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Animations disabled system-wide? $areAnimationsDisabledSystemWide',
            ),
            const SizedBox(height: 32),
            Text(
              'Animations disabled in debug mode? $areAnimationsDisabledInDebugMode',
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: _toggleAnimationsFlag,
              child: const Text('Toggle debugSemanticsDisableAnimations flag'),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                // A simple animation that rotates a Flutter logo to see how
                // animations flag affects it
                AnimatedRotation(
                  turns: _turns,
                  duration: const Duration(seconds: 2),
                  child: Semantics(
                    label: 'Press to rotate',
                    child: InkWell(
                      onTap: () {
                        // Increment the number of turns to rotate the logo
                        setState(() => _turns++);
                      },
                      child: const FlutterLogo(size: 48),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    '⃪  Press to rotate. Note how behavior changes depending on current animation settings',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Toggle the flag that disables animations in debug mode
  void _toggleAnimationsFlag() {
    final areAnimationsOff = debugSemanticsDisableAnimations ?? false;
    debugSemanticsDisableAnimations = !areAnimationsOff;

    // Schedule a new frame to update the UI
    setState(() {});
  }
}
