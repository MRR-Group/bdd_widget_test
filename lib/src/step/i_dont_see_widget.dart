import 'package:bdd_widget_test/src/step/bdd_step.dart';

class IDontSeeWidget implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @Then("I don't see {} widget")
  void implementation() async {}
}

/// Example: Then I don't see {SomeWidget} widget
Future<void> iDontSeeWidget(
  WidgetTester tester,
  Type type,
) async {
  expect(find.byType(type), findsNothing);
}
''';
}
