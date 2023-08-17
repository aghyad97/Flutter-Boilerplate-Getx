// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/component.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_page_controller.dart';

class BaseWidget extends Component<BaseController> {
  BaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Obx(() {
                return ElevatedButton(
                    onPressed: () {
                      controller.dummyFun('1');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26,
                    ),
                    child:
                        controller.loaderService.getLoaderById('1')?.visible ??
                                false
                            ? const CupertinoActivityIndicator()
                            : const Text('Click me'));
              }),
              Obx(() {
                return ElevatedButton(
                    onPressed: () {
                      controller.dummyFun('2');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26,
                    ),
                    child:
                        controller.loaderService.getLoaderById('2')?.visible ??
                                false
                            ? const CupertinoActivityIndicator()
                            : const Text('Click me'));
              }),
            ],
          ),
        ],
      ),
    );
  }
}
