import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.validate,
    this.prefixIcon,
    this.onTap,
    this.readOnly,
    this.suffixIcon,
    this.maxLines,
    this.prefixWidget,
    this.initialValue,
  });

  final TextEditingController controller;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validate;
  final String? prefixIcon;
  final Function()? onTap;
  final bool? readOnly;
  final Widget? suffixIcon;
  final int? maxLines;
  final Widget? prefixWidget;
  final String? initialValue;

/*************  ✨ Codeium Command ⭐  *************/
  /// Returns a [TextFormField] widget with a email address keyboard type.
  ///
  /// The validator is set to [emaildValidator].
  ///
  /// The decoration is set with a [SvgPicture] of the card icon.
  ///
  /// The [onSaved] callback is set to save the value as the email.
  /// ****  ab77768d-d5f4-4ddf-b720-dd92b821526d  ******
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      readOnly: readOnly ?? false,
      onTap: onTap ?? () {},
      validator: validate,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText ?? "Full name",
        suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding * 0.75,
                horizontal: defaultPadding * 0.75),
            child: suffixIcon),
        prefixIcon: prefixWidget ??
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
              child: SvgPicture.asset(
                prefixIcon ?? "assets/icons/card.svg",
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
      ),
    );
  }
}
