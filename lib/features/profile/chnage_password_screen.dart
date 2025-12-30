import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/password_text_feild_widget.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/profile/controllers/profile_controller.dart';
import 'package:shop/generated/l10n.dart';

class ChnagePasswordScreen extends ConsumerStatefulWidget {
  const ChnagePasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChnagePasswordScreenState();
}

class _ChnagePasswordScreenState extends ConsumerState<ChnagePasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // pinned: true,
        // floating: true,
        // snap: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: const SizedBox(),
        leadingWidth: 0,
        centerTitle: false,
        title: Text(S.of(context).prestige_brand,
            style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, searchScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, notificationsScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Illustration/Password.png"),
            const SizedBox(
              height: defaultPadding,
            ),
            Form(
              child: Column(
                children: [
                  PasswordTextEditingController(
                    controller: oldPasswordController,
                    hintText: "Old Password",
                    onChanged: (str) {
                      oldPasswordController.text = str;
                      setState(() {});
                    },
                    validate: passwordValidator.call,
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  PasswordTextEditingController(
                    controller: newPasswordController,
                    hintText: "New Password",
                    onChanged: (str) {
                      newPasswordController.text = str;
                      setState(() {});
                    },
                    validate: passwordValidator.call,
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  PasswordTextEditingController(
                    controller: confirmNewPasswordController,
                    hintText: "Confirm New Password",
                    onChanged: (str) {
                      confirmNewPasswordController.text = str;
                      setState(() {});
                    },
                    validate: (str) {
                      if (str != null) {
                        if (str == newPasswordController.text) {
                          return null;
                        } else {
                          return "Password Not Match";
                        }
                      } else {
                        return "password required";
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            InkWell(
              onTap: ref.watch(profileControllerProvider).isLoading
                  ? () {}
                  : () {
                      print(newPasswordController.text);
                      ref
                          .read(profileControllerProvider.notifier)
                          .changePassword(AuthEntity(
                              email: "",
                              password: newPasswordController.text,
                              confirmPassword:
                                  confirmNewPasswordController.text,
                              oldPassword: oldPasswordController.text));
                    },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: ref.watch(profileControllerProvider).isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          "Change Password",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
