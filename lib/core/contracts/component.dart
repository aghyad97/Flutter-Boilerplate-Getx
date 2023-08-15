// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class Component<Controller> extends GetResponsiveView<Controller> {
  Component({Key? key}) : super(key: key);
}
