import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class FirstWidget extends StatelessWidget {
  FirstWidget({
    super.key,
    required this.onTap,
  });

  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: const Placeholder());
  }
}
