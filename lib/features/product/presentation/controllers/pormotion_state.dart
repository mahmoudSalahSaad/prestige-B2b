part of 'pormotion_controller.dart';

@freezed
abstract class PormotionState with _$PormotionState {
  factory PormotionState({
     @Default([]) final List<PormotionModel>? pormotions,
  }) = _PormotionState;
}
