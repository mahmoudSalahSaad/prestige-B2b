import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';

class PasswordTextEditingController extends StatefulWidget {
  const PasswordTextEditingController({
    super.key,
    required this.controller,
    this.hintText,
    this.onChanged,
    this.validate,
  });
  final TextEditingController controller;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validate;

  @override
  State<PasswordTextEditingController> createState() =>
      _PasswordTextEditingControllerState();
}

class _PasswordTextEditingControllerState
    extends State<PasswordTextEditingController> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (pass) {
        // Password
      },
      onChanged: widget.onChanged,
      validator: widget.validate,
      obscureText: obscure,
      decoration: InputDecoration(
          hintText: widget.hintText ?? "Password",
          prefixIcon: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
            child: SvgPicture.asset(
              "assets/icons/Lock.svg",
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3),
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                obscure = !obscure;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
              child: obscure
                  ? Icon(
                      Icons.visibility_off,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.3),
                    )
                  : Icon(
                      Icons.visibility,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.3),
                    ),
            ),
          )),
    );
  }
}
