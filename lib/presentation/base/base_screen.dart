// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/screen.dart';
import 'base_page_controller.dart';

class BaseScreen extends Screen<BaseController> {
  BaseScreen({Key? key}) : super(key: key);

  @override
  Widget? phone() {
    return Container(
      color: Colors.white,
      child: ElevatedButton(
          onPressed: controller.dummyFun(), child: const Text("Click me")),
    );
  }
}
