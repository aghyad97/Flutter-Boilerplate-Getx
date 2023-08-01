import 'package:flutter_boilerplate_getx/core/contracts/screen.dart';
import 'package:get/get.dart';

abstract class Page extends GetPage {
  late final String coreName;
  late final Screen screen;
  late final List<Bindings>? coreBindings;
  late final List<GetMiddleware>? coreMiddlewares;
  late final Transition? coreTransition;

  Page(
      {required String coreName,
      required Screen screen,
      List<Bindings>? coreBindings,
      List<GetMiddleware>? coreMiddlewares,
      Transition? coreTransition})
      : super(
          name: coreName,
          page: () => screen,
          bindings: coreBindings ?? [],
          middlewares: coreMiddlewares,
          transition: coreTransition ?? Transition.fade,
        );
}
