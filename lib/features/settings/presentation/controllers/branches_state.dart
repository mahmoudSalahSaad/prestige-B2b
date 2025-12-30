import 'package:freezed_annotation/freezed_annotation.dart';

part 'branches_state.freezed.dart';

@freezed
class BranchesState with _$BranchesState {
  const factory BranchesState({
    @Default([]) List<String> branches,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    String? errorMessage,
  }) = _BranchesState;
}
