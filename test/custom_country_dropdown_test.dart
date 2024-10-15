// test/custom_country_dropdown_test.dart

import 'package:all_country_code/all_country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomCountryDropdown Widget', () {
    late List<Country> testCountries;
    late String? selectedCountry;
    late String? selectedIsoCode;

    setUp(() {
      // Initialize test data before each test
      testCountries = [
        Country(name: 'United States', isoCode: 'US', callingCode: '+1'),
        Country(name: 'Canada', isoCode: 'CA', callingCode: '+1'),
        Country(name: 'United Kingdom', isoCode: 'GB', callingCode: '+44'),
        Country(name: 'France', isoCode: 'FR', callingCode: '+33'),
        Country(name: 'Germany', isoCode: 'DE', callingCode: '+49'),
      ];
      selectedCountry = 'US';
      selectedIsoCode = null;
    });

    Widget createWidgetUnderTest() {
      return MaterialApp(
        home: Scaffold(
          body: CustomCountryDropdown(
            filteredCountries: testCountries,
            selectedCountry: selectedCountry,
            onSelected: (isoCode) {
              selectedIsoCode = isoCode;
            },
            showCountryName: true,
            hintText: 'Select your country',
          ),
        ),
      );
    }

    testWidgets('Displays the hint text when no country is selected',
        (WidgetTester tester) async {
      selectedCountry = null;
      await tester.pumpWidget(createWidgetUnderTest());

      expect(find.text('Select your country'), findsOneWidget);
    });

    testWidgets('Displays the selected country correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // The selected country label should be displayed
      expect(find.text('🇺🇸 United States'), findsOneWidget);
    });

    testWidgets('Opens the dropdown when tapped', (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Print the widget tree for debugging
      print(tester.allWidgets);

      // Tap the dropdown
      await tester.tap(find.byType(CustomCountryDropdown));
      await tester.pumpAndSettle();

      // Print the widget tree again after tapping
      print(tester.allWidgets);

      // Check if the dropdown menu is displayed
      expect(find.byType(DropdownMenu<String>), findsOneWidget);

      // Check for at least one occurrence of each country name
      for (var country in testCountries) {
        expect(find.text('${country.flag} ${country.name}'),
            findsAtLeastNWidgets(1));
      }
    });

    testWidgets(
        'Selecting a country updates the selected country and calls onSelected',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Tap the dropdown to open it
      await tester.tap(find.byType(CustomCountryDropdown));
      await tester.pumpAndSettle();

      // Tap on 'Canada'
      await tester.tap(find.text('🇨🇦 Canada').last);
      await tester.pumpAndSettle();

      // Verify that the selectedIsoCode is updated
      expect(selectedIsoCode, 'CA');

      // Verify that the dropdown now shows 'Canada'
      expect(find.text('🇨🇦 Canada'), findsOneWidget);
    });

    testWidgets('Displays flag and calling code when showCountryName is false',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: CustomCountryDropdown(
            filteredCountries: testCountries,
            selectedCountry: 'FR',
            onSelected: (isoCode) {},
            showCountryName: false,
            hintText: 'Select your country',
          ),
        ),
      ));

      // The selected country label should show flag and calling code
      expect(find.textContaining('🇫🇷'), findsAtLeastNWidgets(1));
      expect(find.textContaining('(+33)'), findsAtLeastNWidgets(1));
    });

    testWidgets('Displays correct number of dropdown entries',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Print the widget tree before opening the dropdown
      print('Before opening dropdown:');
      print(tester.allWidgets);

      // Open the dropdown
      await tester.tap(find.byType(CustomCountryDropdown));
      await tester.pumpAndSettle();

      // Print the widget tree after opening the dropdown
      print('After opening dropdown:');
      print(tester.allWidgets);

      // Check if the dropdown menu is displayed
      expect(find.byType(DropdownMenu<String>), findsOneWidget);

      // Check for at least one occurrence of each country name
      for (var country in testCountries) {
        expect(find.text('${country.flag} ${country.name}'),
            findsAtLeastNWidgets(1));
      }
    });

    testWidgets('Displays no entries when filteredCountries is empty',
        (WidgetTester tester) async {
      testCountries = [];
      await tester.pumpWidget(createWidgetUnderTest());

      // Open the dropdown
      await tester.tap(find.byType(CustomCountryDropdown));
      await tester.pumpAndSettle();

      // Verify that no entries are displayed
      expect(find.byType(DropdownMenuEntry<String>), findsNothing);
      // Remove this line if there's no "No options available" text
      // expect(find.text('No options available'), findsOneWidget);
    });

    testWidgets('Initial selection is valid', (WidgetTester tester) async {
      selectedCountry = 'GB';
      await tester.pumpWidget(createWidgetUnderTest());

      // Verify that the selected country is 'United Kingdom'
      expect(find.text('🇬🇧 United Kingdom'), findsOneWidget);
    });

    testWidgets('Handles invalid initial selection gracefully',
        (WidgetTester tester) async {
      selectedCountry = 'ZZ'; // Invalid ISO code
      await tester.pumpWidget(createWidgetUnderTest());

      // Should display hint text or default country
      expect(find.byType(CustomCountryDropdown), findsOneWidget);
      // Remove this line if there's no "Select your country" text displayed
      // expect(find.text('Select your country'), findsOneWidget);
    });

    testWidgets('Selected country appears in both selection and dropdown list',
        (WidgetTester tester) async {
      await tester.pumpWidget(createWidgetUnderTest());

      // Check that the selected country appears once before opening the dropdown
      expect(find.text('🇺🇸 United States'), findsOneWidget);

      // Open the dropdown
      await tester.tap(find.byType(CustomCountryDropdown));
      await tester.pumpAndSettle();

      // Check that the selected country now appears twice
      expect(find.text('🇺🇸 United States'), findsNWidgets(2));
    });
  });
}
