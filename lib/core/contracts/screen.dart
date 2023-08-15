// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class Screen<Controller> extends GetResponsiveView<Controller> {
  Screen({Key? key}) : super(key: key);
}
