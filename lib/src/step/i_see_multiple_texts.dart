import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ISeeMultipleTexts implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @When("I see multiple {} texts")
  void implementation() async {}
}

/// Example: When I see multiple {'text'} texts
Future<void> iSeeMultipleTexts(
  WidgetTester tester,
  String text,
) async {
  expect(find.text(text), findsWidgets);
}
''';
}
