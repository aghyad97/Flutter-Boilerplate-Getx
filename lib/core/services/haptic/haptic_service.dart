abstract class HapticService {
  void lightHaptic();
  void mediumHaptic();
  void heavyHaptic();
  void successHaptic();
  void errorHaptic();
  void warningHaptic();
  void selectionHaptic();
  void impactHaptic();
  void customHaptic(List<Duration> pauseDuations);
}
