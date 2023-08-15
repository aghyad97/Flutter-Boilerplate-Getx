// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'init.dart';
import 'my_app.dart';

void main() async {
  await Initializer.initProd();

  runApp(const MyApp());
}
