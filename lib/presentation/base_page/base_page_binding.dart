import 'package:get/instance_manager.dart';
import 'base_page_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController());
  }
}
