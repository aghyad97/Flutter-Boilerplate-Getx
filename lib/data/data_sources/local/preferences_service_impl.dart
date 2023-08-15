// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/flavors/build_config.dart';
import 'prefernces_service.dart';

class PreferencesServiceImpl implements PreferenceService {
  @override
  Future<void> clear() async {
    final box = Hive.box(BuildConfig.instance.config.appName);
    await box.flush();
  }

  @override
  Future<bool> getBool(String key, {bool defaultValue = false}) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }

  @override
  Future<double> getDouble(String key, {double defaultValue = 0.0}) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }

  @override
  Future<int> getInt(String key, {int defaultValue = 0}) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }

  @override
  Future<String> getString(String key, {String defaultValue = ""}) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }

  @override
  Future<List<String>> getStringList(String key,
      {List<String> defaultValue = const []}) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }

  @override
  Future<void> remove() async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.deleteFromDisk();
  }

  @override
  Future<void> setBool(String key, bool value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.put(key, value);
  }

  @override
  Future<void> setDouble(String key, double value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.put(key, value);
  }

  @override
  Future<void> setDynamic(String key, value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);
    await box.put(key, value);
  }

  @override
  Future<void> setInt(String key, int value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.put(key, value);
  }

  @override
  Future<void> setString(String key, String value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.put(key, value);
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    await box.put(key, value);
  }

  @override
  Future<dynamic> getDynamic(String key) async {
    final box = Hive.box(BuildConfig.instance.config.appName);

    return await box.get(key);
  }
}
