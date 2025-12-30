import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../generated/l10n.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({
    super.key,
    required this.formKey,
    required this.phoneController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController phoneController;
  final TextEditingController passwordController;

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  // Jordan phone number validation
  String? validateJordanPhone(String? value, BuildContext context) {
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Phone number field with world flag
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: TextFormField(
              controller: phoneController,
              onSaved: (phone) {
                // Phone number
              },
              validator: (value) => validateJordanPhone(value, context),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                hintText: S.of(context).phone_number,
                hintStyle: const TextStyle(
                  color: secondaryGrey,
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
                          color: secondaryGrey,
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
          const SizedBox(height: 16),
          // Password field
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: TextFormField(
              onSaved: (pass) {
                // Password
              },
              validator: passwordValidator.call,
              obscureText: true,
              controller: passwordController,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                hintText: S.of(context).password,
                hintStyle: const TextStyle(
                  color: secondaryGrey,
                  fontSize: 16,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/icons/Lock.svg",
                    height: 20,
                    width: 20,
                    colorFilter: const ColorFilter.mode(
                      secondaryGrey,
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
            ),
          ),
        ],
      ),
    );
  }
}
