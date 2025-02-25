import 'package:bdd_widget_test/src/step/bdd_step.dart';

class IDontSeeIcon implements BddStep {
  @override
  String get content => '''
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @Then("I don't see {} icon")
  void implementation() async {}
}

/// Example: Then I don't see {Icons.add} icon
Future<void> iDontSeeIcon(
  WidgetTester tester,
  IconData icon,
) async {
  expect(find.byIcon(icon), findsNothing);
}
''';
}
