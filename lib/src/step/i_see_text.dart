import 'package:bdd_widget_test/src/step/bdd_step.dart';

class ISeeText implements BddStep {
  @override
  String get content => '''
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/defs.dart';

class StepDefs {
  @When('I see {} text')
  void implementation() async {}
}

/// Example: When I see {'text'} text
Future<void> iSeeText(
  WidgetTester tester,
  String text,
) async {
  expect(find.text(text), findsOneWidget);
}
''';
}
