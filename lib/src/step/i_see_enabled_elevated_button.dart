import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ISeeEnabledElevatedButton implements BddStep {
  @override
  String get content => '''
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @Then("I see enabled elevated button")
  void implementation() async {}
}

/// Example: Then I see enabled elevated button
Future<void> iSeeEnabledElevatedButton(
  WidgetTester tester,
) async {
  final button = find.byType(ElevatedButton);

  expect((tester.firstWidget(button) as ElevatedButton).enabled, true);
}
''';
}
