import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/features/profile/controllers/profile_controller.dart';
import 'package:shop/generated/l10n.dart';

// class UpdateProfileScreen extends ConsumerWidget {
//   const UpdateProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(loginControllerProvider).requireValue;
//     return ;
//   }
// }

class UpdatePorfileScreen extends ConsumerStatefulWidget {
  const UpdatePorfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdatePorfileScreenState();
}

class _UpdatePorfileScreenState extends ConsumerState<UpdatePorfileScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();

  XFile? file;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      emailController.text = ref
              .read(loginControllerProvider)
              .requireValue
              .userModel
              ?.user
              ?.email ??
          "";
      phoneController.text = ref
              .read(loginControllerProvider)
              .requireValue
              .userModel
              ?.user
              ?.phone ??
          "";
      nameController.text = ref
              .read(loginControllerProvider)
              .requireValue
              .userModel
              ?.user
              ?.name ??
          "";

      print("dsnsdkn ==>  ${emailController.text}");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginControllerProvider).requireValue;
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
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  InkWell(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final response = await picker.pickImage(
                        source: ImageSource.gallery,
                      );
                      if (response == null) {
                        return;
                      }
                      file = response;
                      setState(() {});
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: 62,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: file == null
                                ? CachedNetworkImage(
                                    imageUrl: state.userModel?.user?.photo ??
                                        "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=",
                                    fit: BoxFit.cover)
                                : Image.file(
                                    File("${file?.path}"),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: SvgPicture.asset(
                            "assets/icons/Camera-add.svg",
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${state.userModel?.user?.name}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text("${state.userModel?.user?.email}")
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(
                height: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFieldWidget(
                      controller: nameController,
                      hintText: "Full name",
                      validate: (str) {
                        if (str != null) {
                          if (str.isNotEmpty) {
                            return null;
                          } else {
                            return "required";
                          }
                        } else {
                          return "required";
                        }
                      },
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    CustomTextFieldWidget(
                      controller: emailController,
                      hintText: "Email address",
                      prefixIcon: "assets/icons/Message.svg",
                      validate: emaildValidator.call,
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    CustomTextFieldWidget(
                      controller: phoneController,
                      hintText: "Phone",
                      validate: (str) {
                        if (str != null) {
                          if (str.isNotEmpty) {
                            return null;
                          } else {
                            return "required";
                          }
                        } else {
                          return "required";
                        }
                      },
                      prefixIcon: "assets/icons/Call.svg",
                    ),
                  ],
                )),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ref.read(profileControllerProvider.notifier).updateUser(
                          AuthEntity(
                              email: emailController.text,
                              name: nameController.text,
                              phone: phoneController.text,
                              attachment: file?.path,
                              password: ""));
                    }
                  },
                  child: Text(S.of(context).save),
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).want_to_change_password),
                TextButton(
                    onPressed: () {
                      NavigationService.push(Routes.chnagePasswordScreen);
                    },
                    child: Text(
                      S.of(context).change_password,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: primaryColor,
                          ),
                    ))
              ],
            ),
            const SizedBox(
              height: defaultPadding * 6,
            ),
            InkWell(
              onTap: () {
                showAdaptiveDialog(
                    context: context,
                    builder: (_) {
                      return Material(
                        color: Colors.transparent,
                        child: Center(
                          child: Container(
                            height: 124,
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: primaryColor)),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(S
                                      .of(context)
                                      .remove_account_confirmation),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            NavigationService.goBack();
                                          },
                                          child: Text(S.of(context).cancel),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            AppPrefs appPrefs = getIt();
                                            appPrefs.clear();
                                            ref
                                                .read(profileControllerProvider
                                                    .notifier)
                                                .removeAccount(const AuthEntity(
                                                    email: "", password: ""));
                                            NavigationService
                                                .pushNamedAndRemoveUntil(
                                                    Routes.login);
                                          },
                                          child: Text(S.of(context).confirm),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "Remove Account",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
