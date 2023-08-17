// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/screen.dart';
import 'package:flutter_boilerplate_getx/presentation/base/widgets/base_widget.dart';
import 'base_page_controller.dart';

class BaseScreen extends Screen<BaseController> {
  BaseScreen({Key? key}) : super(key: key);

  @override
  Widget? phone() {
    return BaseWidget();
  }
}
