import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/widgets/section.dart';

class SemanticLabelsPage extends StatelessWidget {
  const SemanticLabelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semantic labels'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              // TextButton inherits a semantic label from Text widget
              //
              const Section(
                '✅ Text button with Text has a semantic label created from Text:',
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Sign in'),
              ),
              //
              // GestureDetector and Icon don't have semantic labels. This gives
              // no context for the screen reader
              //
              const Section(
                '❌ GestureDetector and Icon are missing semantic labels:',
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 54,
                ),
              ),
              //
              // Icon can be given a semantic label using the semanticLabel
              // property
              //
              const Section('✅ Icon has a semantic label:'),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 54,
                  semanticLabel: 'Search',
                ),
              ),
              //
              // Semantics widget can be used to provide a semantic label for
              // any widget. It can also be used to provide additional context
              // for the screen reader (for example, if element is a button
              // or a toggle)
              //
              const Section(
                '✅ Semantic label provided using Semantics widget:',
              ),
              Semantics(
                label: 'Open Flutter website',
                child: GestureDetector(
                  onTap: () {},
                  child: const FlutterLogo(size: 54),
                ),
              ),
              //
              // Tooltip widget can be used to provide a semantic label. It also
              // displays a tooltip when the user long-presses the element or
              // mouse pointer hovers over it
              //
              const Section('✅ Tooltip works as a semantic label:'),
              IconButton(
                tooltip: "Delete item",
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
              //
              // TextField and the title are not semantically connected
              //
              const Section(
                '❌ TextField has no semantic label and provides no context for the screen reader:',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Email'),
                  TextField(),
                ],
              ),
              //
              // TextField has a hint that works as a semantic label
              //
              const Section(
                '✅ TextField uses decoration to provide hint and semantic label:',
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
