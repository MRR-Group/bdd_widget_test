import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ITapText implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefinition {
  @When("I tap {} text")
  void definition() async {}
}

/// Example: When I tap {'some'} text
Future<void> iTapText(
  WidgetTester tester,
  String text,
) async {
  await tester.tap(find.text(text));
  await tester.pump();
}
''';
}
