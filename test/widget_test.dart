import 'package:flutter/material.dart';
import 'package:flutter_accessibility_issues_examples/pages/semantic_labels_page.dart';
import 'package:flutter_accessibility_issues_examples/pages/small_tap_areas_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Semantics label page has big enough contrast',
    (WidgetTester tester) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        const MaterialApp(
          home: SemanticLabelsPage(),
        ),
      );

      // Fails because TextButton's contrast is too low
      await expectLater(tester, meetsGuideline(textContrastGuideline));
      handle.dispose();
    },
  );

  testWidgets(
    'Tap areas have labels',
    (WidgetTester tester) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        const MaterialApp(
          home: SemanticLabelsPage(),
        ),
      );

      // Fails because some tappable areas don't have labels
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
      handle.dispose();
    },
  );

  testWidgets(
    'Tap areas meet Material Design tap size guidelines',
    (WidgetTester tester) async {
      final handle = tester.ensureSemantics();
      await tester.pumpWidget(
        const MaterialApp(
          home: SmallTapAreasPage(),
        ),
      );

      // Fails because tappable icon is too small
      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
      handle.dispose();
    },
  );
}
