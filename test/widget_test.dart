import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_page_binding.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_page_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('MyWidget should display text', (WidgetTester tester) async {
    await tester.pumpWidget(
      GetMaterialApp(
        home: Container(
          child: const Text('Hello, World!'),
        ),
      ),
    );
    expect(find.text('Hello, World!'), findsOneWidget);
  });

  test('Test Base Page', () {
    BaseBinding().dependencies();
    BaseController baseController = BaseController(repository: Get.find());
    expect(baseController.counter.value, 0);
  });
}
