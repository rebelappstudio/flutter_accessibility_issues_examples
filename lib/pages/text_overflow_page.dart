import 'package:flutter/material.dart';

class TextOverflowPage extends StatelessWidget {
  const TextOverflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    const text = Text(
      'Firstname Lastname',
      style: TextStyle(fontSize: 24),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text overflow'),
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
              child: Text("Text can't wrap:"),
            ),
            Container(
              color: Colors.black12,
              width: 100,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  text,
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('Text wraps nicely:'),
            ),
            Container(
              color: Colors.black12,
              width: 100,
              child: Row(
                children: const [
                  Icon(Icons.person),
                  Expanded(child: text),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
