import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_getx/core/contracts/screen.dart';

import 'base_page_controller.dart';

class BaseScreen extends Screen<BaseController> {
  BaseScreen({Key? key}) : super(key: key);

  @override
  Widget? desktop() {
    return super.desktop();
  }

  @override
  Widget? tablet() {
    return super.tablet();
  }

  @override
  Widget? phone() {
    return Container();
  }
}
