import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ISeeIcon implements BddStep {
  @override
  String get content => '''
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefinition {
  @Then("I see {} icon")
  void definition() async {}
}

/// Example: Then I see {Icons.add} icon
Future<void> iSeeIcon(
  WidgetTester tester,
  IconData icon,
) async {
  expect(find.byIcon(icon), findsOneWidget);
}
''';
}
