// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/page.dart';
import 'package:flutter_boilerplate_getx/core/navigation/app_pages.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_page_binding.dart';
import 'package:flutter_boilerplate_getx/presentation/base/base_screen.dart';

class BasePage extends Page {
  BasePage()
      : super(
          coreName: Routes.base,
          screen: BaseScreen(),
          coreBindings: [BaseBinding()],
        );
}
