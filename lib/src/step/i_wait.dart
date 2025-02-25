import 'package:bdd_widget_test/src/step/bdd_step.dart';

class IWait implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefinition {
  @And("I wait")
  void definition() async {}
}

/// Example: And I wait
Future<void> iWait(WidgetTester tester) async {
  await tester.pumpAndSettle();
}
''';
}
