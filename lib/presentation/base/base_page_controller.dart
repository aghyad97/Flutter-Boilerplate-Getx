// Package imports:
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_getx/core/services/haptic/haptic_service.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/controller.dart';
import 'package:flutter_boilerplate_getx/core/services/loader/loader_service.dart';
import 'package:flutter_boilerplate_getx/data/models/loader_model.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BaseController extends Controller with GetTickerProviderStateMixin {
  final className = (BaseController).toString();
  final BaseRepo repository;

  final loaderService = Get.find<LoaderService>();

  final hapticService = Get.find<HapticService>();

  static BaseController to = Get.find<BaseController>();

  RxInt counter = 0.obs;

  RxBool isAuthenticated = false.obs;

  BaseController({
    required this.repository,
  });

  bottomSheet() async {
    final random = Random();
    RxInt itemCount = 3.obs;
    showFloatingModalBottomSheet(
      context: Get.context!,
      borderRadius: 50,
      builder: (context) => Obx(
        () => AnimatedContainer(
          duration: Duration(milliseconds: 400),
          height: itemCount.value * 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: itemCount.value,
                      shrinkWrap: false,
                      itemBuilder: (c, i) {
                        return GestureDetector(
                          onTap: () {
                            if (random.nextBool()) {
                              itemCount.value += random.nextInt(6);
                            } else {
                              itemCount.value -= random.nextInt(6);
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "Hey $i",
                              style: Get.textTheme.bodyLarge,
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }

  dummyFun(String id) async {
    hapticService.successHaptic();
    if (loaderService.getLoaderById(id) != null) {
      return;
    }
    final loader0 = LoaderModel(
      id: id,
      classSource: className,
      message: 'Base Widget Click me button loader',
      visible: true,
    );
    final didLoaderAdd = loaderService.addLoader(loader0);

    if (!didLoaderAdd) {
      return;
    }

    await Future.delayed(const Duration(seconds: 3));

    loaderService.removeLoader(loader0);
  }

  @override
  void onInit() {
    super.onInit();
  }

  Future<T> showFloatingModalBottomSheet<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? borderRadius,
  }) async {
    final result = await showCustomModalBottomSheet(
        context: context,
        builder: builder,
        containerWidget: (_, animation, child) => FloatingModal(
              child: child,
              borderRadius: borderRadius,
            ),
        expand: false);

    return result;
  }
}

class FloatingModal extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final double? borderRadius;

  const FloatingModal(
      {Key? key,
      required this.child,
      this.backgroundColor,
      this.borderRadius = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Material(
          color: backgroundColor,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(borderRadius!),
          child: child,
        ),
      ),
    );
  }
}
