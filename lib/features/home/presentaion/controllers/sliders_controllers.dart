import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/home/data/models/sliders_model.dart';
import 'package:shop/features/home/domain/use_cases/get_sliders_use_case.dart';

part 'sliders_controllers.freezed.dart';
part 'sliders_controllers.g.dart';
part 'sliders_state.dart';

@Riverpod(keepAlive: true)
class SlidersController extends _$SlidersController {
  @override

  /// Builds the SlidersState by initiating the sliders fetching process.
  ///
  /// This method sets the state to loading, calls the getSliders function
  /// to fetch the sliders, and returns the current state value.
  ///
  /// The method is asynchronous and returns the current state value once the
  /// sliders are fetched.
  ///
  /// The method does not take any parameters.
  ///
  /// The method returns a Future<SlidersState> which is the current state
  /// value.
  ///
  /// The method sets the state to loading before fetching the sliders.
  ///
  /// The method calls the getSliders function to fetch the sliders.
  ///
  /// The method returns the current state value after the sliders are fetched.
  ///
  /// The method does not throw any exceptions.
  ///
  /// The method is used in the SlidersController to fetch the sliders.
  Future<SlidersState> build() async {
    // Set state to loading
    state = const AsyncLoading();

    // Fetch sliders
    await getSliders();

    // Return the current state value
    return state.requireValue;
  }

  /// Fetches the sliders and updates the state of the SlidersController.
  ///
  /// This method interacts with the `GetSlidersUseCase` to retrieve slider data.
  /// It initializes the `getSlidersUseCase`, executes it with no parameters,
  /// and handles the result to update the controller's state.
  ///
  /// The method does not take any parameters.
  ///
  /// The method does not return any value.
  ///
  /// The method is utilized in the `SlidersController` to manage the slider data.
  Future getSliders() async {
    // Obtain an instance of the GetSlidersUseCase from the service locator
    GetSlidersUseCase getSlidersUseCase = getIt();

    // Execute the use case to fetch sliders
    final result = await getSlidersUseCase.call(const NoParameters());

    // Process the result and update the state of the SlidersController
    result.fold(
        // If an error occurs, set the state to AsyncError with the error and stack trace
        (l) => state = AsyncError(l, StackTrace.current),
        // If successful, update the state with the fetched sliders data
        (r) => state = AsyncData(SlidersState(sliders: r)));
  }
}
