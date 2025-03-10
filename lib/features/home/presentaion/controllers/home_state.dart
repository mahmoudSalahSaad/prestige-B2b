part of 'home_controller.dart';


@freezed
abstract class HomeState with _$HomeState {
  factory HomeState({final HomeModel? homeModel}) = _HomeState;
}
