// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shop/features/auth/presentation/views/components/sign_up_form.dart';

// class LocationInfoStep extends ConsumerStatefulWidget {
//   const LocationInfoStep({
//     super.key,
//     required this.formKey,
//     required this.emailController,
//     required this.nameController,
//     required this.phoneController,
//     required this.passwordController,
//     required this.confirmPasswordController,
//     required this.counteryController,
//     required this.cityController,
//     required this.addressController,
//     required this.branchController,
//   });

//   final GlobalKey<FormState> formKey;
//   final TextEditingController emailController;
//   final TextEditingController nameController;
//   final TextEditingController phoneController;
//   final TextEditingController passwordController;
//   final TextEditingController confirmPasswordController;
//   final TextEditingController counteryController;
//   final TextEditingController cityController;
//   final TextEditingController addressController;
//   final TextEditingController branchController;

//   @override
//   ConsumerState<LocationInfoStep> createState() => LocationInfoStepState();
// }

// class LocationInfoStepState extends ConsumerState<LocationInfoStep> {
//   final SignUpFormKey _signUpFormKey = SignUpFormKey();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 12),
//         SignUpForm(
//           key: _signUpFormKey,
//           formKey: widget.formKey,
//           emailController: widget.emailController,
//           nameController: widget.nameController,
//           phoneController: widget.phoneController,
//           passwordController: widget.passwordController,
//           confirmPasswordController: widget.confirmPasswordController,
//           cityController: widget.cityController,
//           counteryController: widget.counteryController,
//           addressController: widget.addressController,
//           branchController: widget.branchController,
//           currentStep: 2,
//         ),
//       ],
//     );
//   }

//   // Method to validate the current step and show errors
//   bool validateCurrentStep() {
//     return _signUpFormKey.currentState?.validateCurrentStep() ?? false;
//   }

//   // Method to validate all steps and show comprehensive errors
//   bool validateAllSteps() {
//     return _signUpFormKey.currentState?.validateAllSteps() ?? false;
//   }

//   // Method to clear validation errors
//   void clearValidationError() {
//     _signUpFormKey.currentState?.clearValidationError();
//   }
// }
