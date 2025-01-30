import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:dream_path/screens/profile_screen.dart';
import 'package:dream_path/state_management/user_provider.dart';
import 'package:dream_path/models/user_model.dart';

void main() {
  testWidgets('ProfileScreen should display user information', (WidgetTester tester) async {
    final user = UserModel(name: 'John Doe', email: 'johndoe@example.com');
    user.setHollandCode('RIA');
    user.addSavedCareer('Software Engineer');

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (context) => UserProvider()..updateProfile(user.name, user.email),
          child: ProfileScreen(),
        ),
      ),
    );

    // Verify that user information is displayed
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('johndoe@example.com'), findsOneWidget);
    expect(find.text('RIA'), findsOneWidget);
    expect(find.text('Software Engineer'), findsOneWidget);
  });
}