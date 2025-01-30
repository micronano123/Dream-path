import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dream_path/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen should display a button to start the test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify that the button is displayed
    expect(find.text('Start Personality Test'), findsOneWidget);
  });
}