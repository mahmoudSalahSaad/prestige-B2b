import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/features/settings/presentation/controllers/branches_state.dart';

final branchesControllerProvider =
    StateNotifierProvider<BranchesController, BranchesState>((ref) {
  return BranchesController(ref);
});

class BranchesController extends StateNotifier<BranchesState> {
  BranchesController(Ref ref) : super(const BranchesState());

  Future<void> getBranches() async {
    state =
        state.copyWith(isLoading: true, hasError: false, errorMessage: null);

    try {
      final networkClient = getIt<NetworkClient>();

      final result = await networkClient.call(
        data: {},
        url: EndPoints.getBranches,
        type: NetworkCallType.get,
      );

      result.fold(
        (error) {
          state = state.copyWith(
            isLoading: false,
            hasError: true,
            errorMessage: error.errorMessage ?? 'Failed to fetch branches',
          );
        },
        (response) {
          if (response.data != null && response.data is List) {
            final List<dynamic> branchesData = response.data as List;
            final List<String> branches =
                branchesData.map((branch) => branch['name'].toString()).toList();

            state = state.copyWith(
              isLoading: false,
              branches: branches,
              hasError: false,
              errorMessage: null,
            );
          } else {
            state = state.copyWith(
              isLoading: false,
              hasError: true,
              errorMessage: 'Invalid response format',
            );
          }
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        hasError: true,
        errorMessage: 'An error occurred: $e',
      );
    }
  }
}
