// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_getx/core/helpers/random.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/component.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_page_controller.dart';

class BaseWidget extends Component<BaseController> {
  BaseWidget({super.key});

  final _firstButton = getRandomString(10);
  final _secondButton = getRandomString(10);

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
                      controller.dummyFun(_firstButton);
                      // controller.bottomSheet();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26,
                    ),
                    child: isLoading(_firstButton)
                        ? const CupertinoActivityIndicator()
                        : Text(controller.tr.appDescription('Flutter')));
              }),
              Obx(() {
                return ElevatedButton(
                    onPressed: () {
                      controller.dummyFun(_secondButton);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26,
                    ),
                    child: isLoading(_secondButton)
                        ? const CupertinoActivityIndicator()
                        : const Text('Click me'));
              }),
            ],
          ),
        ],
      ),
    );
  }

  isLoading(id) => controller.loaderService.getLoaderById(id)?.visible ?? false;
}
