import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_app_hospital_main/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Form Integration Test', () {
    testWidgets('Fill and submit the form', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Find the text fields
      final nameField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Name');
      final birthplaceField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Birth Place');
      final birthdateField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Birth Date');
      final genderField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Gender');
      final phoneNumberField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Phone Number');
      final emailField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Email');
      final religionField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Religion');
      final jobField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Job');
      final addressField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Address');
      final polyclinicField = find.byWidgetPredicate((widget) => widget is TextField && widget.decoration?.labelText == 'Enter Your Polyclinic');

      // Enter text into the fields
      await tester.enterText(nameField, 'Zahrotul Jannah');
      await tester.pumpAndSettle();
      await tester.enterText(birthplaceField, 'Jambi');
      await tester.pumpAndSettle();
      await tester.enterText(birthdateField, '2004-01-03');
      await tester.pumpAndSettle();
      await tester.enterText(genderField, 'Female');
      await tester.pumpAndSettle();
      await tester.enterText(phoneNumberField, '20220140066');
      await tester.pumpAndSettle();
      await tester.enterText(emailField, 'zahrotuljannah693@mail.com');
      await tester.pumpAndSettle();
      await tester.enterText(religionField, 'Moslem');
      await tester.pumpAndSettle();
      await tester.enterText(jobField, 'Software Developer');
      await tester.pumpAndSettle();
      await tester.enterText(addressField, 'Bantul');
      await tester.pumpAndSettle();
      await tester.enterText(polyclinicField, 'Polyclinic A');
      await tester.pumpAndSettle();

      // Tap the submit button
      final submitButton = find.text('Submit');
      await tester.tap(submitButton);
      await tester.pumpAndSettle();

      // Verify if the data was submitted and new page is opened
      expect(find.text('Name: Zahrotul Jannah'), findsOneWidget);
      expect(find.text('Birth Place: Jambi'), findsOneWidget);
      expect(find.text('Birth Date: 2004-01-03'), findsOneWidget);
      expect(find.text('Gender: Female'), findsOneWidget);
      expect(find.text('Phone Number: 20220140066'), findsOneWidget);
      expect(find.text('Email: zahrotuljannah693@mail.com'), findsOneWidget);
      expect(find.text('Religion: Moslem'), findsOneWidget);
      expect(find.text('Job: Software Developer'), findsOneWidget);
      expect(find.text('Address: Bantul'), findsOneWidget);
      expect(find.text('Polyclinic: Polyclinic A'), findsOneWidget);
    });
  });
}
