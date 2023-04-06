import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/widgets/section.dart';

class TextCuttingOffPage extends StatelessWidget {
  const TextCuttingOffPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Text that behaves differently depending on the font size
    const text = Text(
      "Hi Tom! Let's meet at the pub after this. I'll be there at 8pm. Address is Kaisaniemenkatu 1B",
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );

    // Max width of the text's container. This is used to limit the width of the
    // text to demonstrate the issue
    const maxTextWidth = 300.0;

    // Custom MediaQuery to set the text scale factor to 1 and 2 to demonstrate
    // the issue
    final regularTextSizeMediaQuery =
        MediaQuery.of(context).copyWith(textScaleFactor: 1);
    final enlargedTextSizeMediaQuery =
        MediaQuery.of(context).copyWith(textScaleFactor: 2);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text cutting off'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Section('Default font size:'),
            SizedBox(
              width: maxTextWidth,
              child: MediaQuery(
                data: regularTextSizeMediaQuery,
                child: text,
              ),
            ),
            const Section('2 times larger text:'),
            SizedBox(
              width: maxTextWidth,
              child: MediaQuery(
                data: enlargedTextSizeMediaQuery,
                child: text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
