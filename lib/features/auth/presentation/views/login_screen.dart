import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';

import 'components/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          leading:const SizedBox.shrink(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/Illustration/supermarket-illustration-09.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const Text(
                    "Log in with your data that you intered during your registration.",
                  ),
                  const SizedBox(height: defaultPadding),
                  LogInForm(formKey: _formKey),
                  // Align(
                  //   child: TextButton(
                  //     child: const Text("Forgot password"),
                  //     onPressed: () {
             
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: size.height > 700
                        ? size.height * 0.1
                        : defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                          
                          }else{
                            NavigationService.push(Routes.entryPoint);
                          }
                        },
                        child:  Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.3),
                          child: Text("Log in")) ,
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text("Don't have an account?"),
                  //     TextButton(
                  //       onPressed: () {
                  //        //// Navigator.pushNamed(context, signUpScreenRoute);
                  //       },
                  //       child: const Text("Sign up"),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
