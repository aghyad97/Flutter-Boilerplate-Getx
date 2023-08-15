// Dart imports:
import 'dart:async';

// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnectionSingleton {
  static final InternetConnectionSingleton _internetConnectionSingleton =
      InternetConnectionSingleton._internal();

  factory InternetConnectionSingleton() {
    return _internetConnectionSingleton;
  }

  InternetConnectionSingleton._internal();

  static Future<bool> hasInternetConnect() async {
    return await InternetConnectionChecker().hasConnection;
  }

  static StreamSubscription<ConnectivityResult> Function(
      void Function(ConnectivityResult)?,
      {bool? cancelOnError,
      void Function()? onDone,
      Function? onError}) listenToInternetConnectionChanges() {
    final sub = Connectivity().onConnectivityChanged.listen;
    return sub;
  }
}
