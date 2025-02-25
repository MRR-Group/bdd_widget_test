import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ISeeRichText implements BddStep {
  @override
  String get content => '''
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @When("I see {} rich text")
  void implementation() async {}
}

/// Example: When I see {'text'} rich text
Future<void> iSeeRichText(
  WidgetTester tester,
  String text,
) async {
  final finder = find.byWidgetPredicate(
      (widget) => widget is RichText && widget.text.toPlainText() == text);
  expect(finder, findsOneWidget);
}
''';
}
