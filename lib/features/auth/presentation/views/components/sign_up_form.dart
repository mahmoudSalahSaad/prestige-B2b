import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/components/password_text_feild_widget.dart';
import 'package:shop/features/settings/presentation/controllers/branches_controller.dart';
import 'package:shop/generated/l10n.dart';

import '../../../../../constants.dart';

class SignUpForm extends ConsumerStatefulWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.nameController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.phoneController,
    required this.branchController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController phoneController;
  final TextEditingController branchController;

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  @override
  ConsumerState<SignUpForm> createState() => _SignUpFormState();
}

// Global key to access SignUpForm methods from parent
typedef SignUpFormKey = GlobalKey<_SignUpFormState>;

class _SignUpFormState extends ConsumerState<SignUpForm> {
  String? validationError;
  bool passwordsMatch = false;

  // Get selected branch from controller
  String? get selectedBranch {
    final text = widget.branchController.text;
    final branchesState = ref.watch(branchesControllerProvider);
    return branchesState.branches.contains(text) ? text : null;
  }

  // Jordan phone number validation
  String? validateJordanPhone(String? value) {
    if (value == null || value.isEmpty) {
      return '${S.of(context).phone_number} ${S.of(context).required}';
    }

    // Remove any non-digit characters for validation
    String cleanValue = value.replaceAll(RegExp(r'[^\d]'), '');

    // Jordan phone numbers should be 9 digits (without country code)
    if (cleanValue.length != 9) {
      return S.of(context).jordan_phone_validation;
    }

    // Check if it starts with 7 (Jordan mobile numbers start with 7)
    if (!cleanValue.startsWith('7')) {
      return S.of(context).jordan_phone_start_7;
    }

    return null;
  }

  // Check if passwords match
  void checkPasswordMatch() {
    setState(() {
      passwordsMatch = widget.passwordController.text ==
              widget.confirmPasswordController.text &&
          widget.passwordController.text.isNotEmpty &&
          widget.confirmPasswordController.text.isNotEmpty;
    });
  }

  // Reset password match state
  void resetPasswordMatch() {
    setState(() {
      passwordsMatch = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapping outside text fields
        FocusScope.of(context).unfocus();
      },
      child: Form(
        key: widget.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ..._buildAllFields(context, ref),
              // Show validation error
              if (validationError != null) _buildValidationErrorWidget(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildAllFields(BuildContext context, WidgetRef ref) {
    final branchesState = ref.watch(branchesControllerProvider);

    return [
      // Step 1 Fields
      CustomTextFieldWidget(
        controller: widget.nameController,
        hintText: S.of(context).name,
        validate: (str) {
          if (str != null) {
            if (str.isNotEmpty) {
              return null;
            } else {
              return S.of(context).required;
            }
          } else {
            return S.of(context).required;
          }
        },
        prefixIcon: "assets/icons/User.svg",
      ),
      const SizedBox(height: defaultPadding),
      // Phone number field with world flag
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: TextFormField(
          controller: widget.phoneController,
          onSaved: (phone) {
            // Phone number
          },
          validator:
              null, // Disabled auto validation - will validate on submit only
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.phone,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
          decoration: InputDecoration(
            hintText: S.of(context).phone_number,
            hintStyle: const TextStyle(
              color: SignUpForm.secondaryGrey,
              fontSize: 16,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/flags/world-flag.png',
                    height: 20,
                    width: 20,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '+962',
                    style: TextStyle(
                      color: SignUpForm.secondaryGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
      ),
      const SizedBox(height: defaultPadding),
      PasswordTextEditingController(
        controller: widget.passwordController,
        validate: null, // Disabled auto validation
        hintText: S.of(context).password,
        onChanged: (value) {
          // Controller is already bound, just trigger password match check
          checkPasswordMatch();
        },
      ),
      const SizedBox(height: defaultPadding),
      PasswordTextEditingController(
        controller: widget.confirmPasswordController,
        validate: null, // Disabled auto validation
        hintText: S.of(context).confirm_password,
        onChanged: (value) {
          // Controller is already bound, just trigger password match check
          checkPasswordMatch();
        },
      ),
      // Password match indicator
      if (widget.passwordController.text.isNotEmpty &&
          widget.confirmPasswordController.text.isNotEmpty)
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Icon(
                passwordsMatch ? Icons.check_circle : Icons.error,
                color: passwordsMatch ? Colors.green : Colors.red,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                passwordsMatch
                    ? S.of(context).passwords_match
                    : S.of(context).passwords_no_match,
                style: TextStyle(
                  color: passwordsMatch ? Colors.green : Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      const SizedBox(height: defaultPadding),
      // Step 2 Fields
      CustomTextFieldWidget(
        controller: widget.emailController,
        hintText: S.of(context).email_address,
        validate: null,
        prefixIcon: "assets/icons/Message.svg",
        prefixWidget: null,
      ),
      const SizedBox(height: defaultPadding),
      // Group Type Dropdown
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: DropdownButtonFormField<String>(
          value: selectedBranch,
          isExpanded: true,
          decoration: InputDecoration(
            hintText: S.of(context).group_type,
            hintStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: SignUpForm.secondaryGrey,
              fontSize: 16,
            ),
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
              child: SvgPicture.asset(
                "assets/icons/card.svg",
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color!
                      .withOpacity(0.3),
                  BlendMode.srcIn,
                ),
              ),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
          items: branchesState.branches.map((String branch) {
            return DropdownMenuItem<String>(
              value: branch,
              child: Text(
                branch,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            );
          }).toList(),
          selectedItemBuilder: (BuildContext context) {
            return branchesState.branches.map((String branch) {
              return Text(
                branch,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              );
            }).toList();
          },
          onChanged: (String? newValue) {
            widget.branchController.text = newValue ?? '';
            setState(() {}); // Trigger rebuild to update UI
          },
          validator: (value) {
            // Required field validation
            if (value == null || value.isEmpty) {
              return '${S.of(context).group_type} ${S.of(context).required}';
            }
            return null;
          },
        ),
      ),
      // Show loading or error state
      if (branchesState.isLoading)
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 8),
              Text('Loading branches...', style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      if (branchesState.hasError)
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
          child: Row(
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 16),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  branchesState.errorMessage ?? 'Failed to load branches',
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
    ];
  }

  // Method to display validation error
  Widget _buildValidationErrorWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red[600],
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              validationError!,
              style: TextStyle(
                color: Colors.red[700],
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to set validation error
  void setValidationError(String? error) {
    setState(() {
      validationError = error;
    });
  }

  // Method to clear validation error
  void clearValidationError() {
    setState(() {
      validationError = null;
    });
  }

  // Method to validate the current step and show errors
  bool validateCurrentStep() {
    // No additional validation needed for 2-step form
    return true;
  }

  // Method to validate all steps and show comprehensive errors
  
}
