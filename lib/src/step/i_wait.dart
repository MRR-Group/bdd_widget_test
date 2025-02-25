import 'package:bdd_widget_test/src/step/bdd_step.dart';

class IWait implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @And("I wait")
  void implementation() async {}
}

/// Example: And I wait
Future<void> iWait(WidgetTester tester) async {
  await tester.pumpAndSettle();
}
''';
}
