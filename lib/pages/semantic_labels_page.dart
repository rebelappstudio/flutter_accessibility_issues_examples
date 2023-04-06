import 'package:flutter/material.dart';

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
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '✅ Text button with Text has a semantic label created from Text:',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Sign in'),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '❌ GestureDetector and Icon are missing semantic labels:',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 54,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '✅ Icon has a semantic label:',
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 54,
                  semanticLabel: 'Search',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '✅ Semantic label provided using Semantics widget:',
                ),
              ),
              Semantics(
                label: 'Open Flutter website',
                child: GestureDetector(
                  onTap: () {},
                  child: const FlutterLogo(size: 54),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '✅ Tooltip works as a semantic label:',
                ),
              ),
              IconButton(
                tooltip: "Delete item",
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '❌ TextField has no semantic label and provides no context for the screen reader:',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Email'),
                  TextField(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  bottom: 8,
                ),
                child: Text(
                  '✅ TextField uses decoration to provide hint and semantic label:',
                ),
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
