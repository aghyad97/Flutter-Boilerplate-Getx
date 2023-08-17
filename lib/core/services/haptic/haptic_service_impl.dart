import 'package:flutter_boilerplate_getx/core/services/haptic/haptic_service.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

class HapticServiceImpl implements HapticService {
  @override
  void customHaptic(List<Duration> pauseDuations) {
    Vibrate.vibrateWithPauses(pauseDuations);
  }

  @override
  void errorHaptic() {
    var _type = FeedbackType.error;
    Vibrate.feedback(_type);
  }

  @override
  void heavyHaptic() {
    var _type = FeedbackType.heavy;
    Vibrate.feedback(_type);
  }

  @override
  void impactHaptic() {
    var _type = FeedbackType.impact;
    Vibrate.feedback(_type);
  }

  @override
  void lightHaptic() {
    var _type = FeedbackType.light;
    Vibrate.feedback(_type);
  }

  @override
  void mediumHaptic() {
    var _type = FeedbackType.medium;
    Vibrate.feedback(_type);
  }

  @override
  void selectionHaptic() {
    var _type = FeedbackType.selection;
    Vibrate.feedback(_type);
  }

  @override
  void successHaptic() {
    var _type = FeedbackType.success;
    Vibrate.feedback(_type);
  }

  @override
  void warningHaptic() {
    var _type = FeedbackType.warning;
    Vibrate.feedback(_type);
  }
}
