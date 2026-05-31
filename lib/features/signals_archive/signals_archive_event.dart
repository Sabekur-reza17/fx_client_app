abstract class SignalsArchiveEvent {}

class RetryLoadSignals extends SignalsArchiveEvent {}

class UpdateFilter extends SignalsArchiveEvent {
  final List<String>? selectedPairs;
  final DateTime? startDate;
  final DateTime? endDate;

  UpdateFilter({this.selectedPairs, this.startDate, this.endDate});
}
