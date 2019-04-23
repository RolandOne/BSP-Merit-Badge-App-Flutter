// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_driver/flutter_driver.dart' as drv;

import 'package:readjson/main.dart';

void main() {
  group('Scrollable App', () {
    drv.FlutterDriver driver;

    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      driver = await drv.FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('My First Test', () async {
      // Build our app and trigger a frame.

      expect(find.text('Flutter Demo Home Page'), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);

      final listFinder = drv.find.byValueKey('List');
      final itemFinder = drv.find.text('Archery');
      await driver.scrollUntilVisible(listFinder, itemFinder, dyScroll: 400);

      expect(
        await driver.getText(itemFinder),
        'Archery',
      );
    });
  });
}
