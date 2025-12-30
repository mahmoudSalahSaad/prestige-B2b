import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/features/auth/presentation/views/components/sign_up_form.dart';

class CompanyInfoStep extends ConsumerWidget {
  const CompanyInfoStep({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.nameController,
    required this.phoneController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.branchController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController branchController;

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        SignUpForm(
          formKey: formKey,
          emailController: emailController,
          nameController: nameController,
          phoneController: phoneController,
          passwordController: passwordController,
          confirmPasswordController: confirmPasswordController,
          branchController: branchController,
        ),
      ],
    );
  }
}
