import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dream_path/screens/personality_test_screen.dart';

void main() {
  testWidgets('PersonalityTestScreen should display a question and options', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PersonalityTestScreen()));

    // Verify that the first question is displayed
    expect(find.text('What do you enjoy doing in your free time?'), findsOneWidget);

    // Verify that the options are displayed
    expect(find.text('Fixing things'), findsOneWidget);
    expect(find.text('Reading scientific articles'), findsOneWidget);
  });
}