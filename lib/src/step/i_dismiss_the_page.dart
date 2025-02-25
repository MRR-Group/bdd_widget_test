import 'package:bdd_widget_test/src/step/bdd_step.dart';

class IDismissThePage implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefinition {
  @Then('I dismiss the page')
  void definition() async {}
}

/// Example: Then I dismiss the page
Future<void> iDismissThePage(
  WidgetTester tester,
) async {
  await tester.pageBack();
  await tester.pumpAndSettle();
}
''';
}
