import 'package:flutter/material.dart';

class TextCuttingOffPage extends StatelessWidget {
  const TextCuttingOffPage({super.key});

  @override
  Widget build(BuildContext context) {
    const text = Text(
      "Hi Tom! Let's meet at the pub after this. I'll be there at 8pm. Address is Kaisaniemenkatu 1B",
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text cutting off'),
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
              child: Text('Default font size:'),
            ),
            const SizedBox(
              width: 300,
              child: text,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 48,
                bottom: 8,
              ),
              child: Text('2 times larger text:'),
            ),
            SizedBox(
              width: 300,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 2),
                child: text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
