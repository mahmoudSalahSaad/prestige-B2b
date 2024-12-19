part of 'sliders_controllers.dart';

@freezed
abstract class SlidersState with _$SlidersState {
  factory SlidersState({
    @Default([]) final List<SlidersModel> sliders,
  }) = _SlidersState;
}
