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
              'Animations disabled system-wide? ${MediaQuery.of(context).disableAnimations}',
            ),
            const SizedBox(height: 32),
            Text(
              'Animations disabled in debug mode? $debugSemanticsDisableAnimations',
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: () {
                debugSemanticsDisableAnimations =
                    !(debugSemanticsDisableAnimations ?? false);
                setState(() {});
              },
              child: const Text('Toggle debugSemanticsDisableAnimations flag'),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                AnimatedRotation(
                  turns: _turns,
                  duration: const Duration(seconds: 2),
                  child: Semantics(
                    label: 'Press to rotate',
                    child: InkWell(
                      onTap: () {
                        setState(() => _turns++);
                      },
                      child: const FlutterLogo(size: 48),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    '⃪  Press to rotate according to current animation settings',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
