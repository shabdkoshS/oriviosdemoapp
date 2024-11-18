import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/ui_helper.dart';
import 'package:orivios_company_demo/pages/login/login_viewmodel.dart';
import 'package:orivios_company_demo/widgets/custom_textfield.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => LoginViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Stack(
            children: [
              Positioned(
                top: screenHeight(context) * 0.35,
                child: SizedBox(
                  height: screenHeight(context) * 0.40,
                  width: screenWidth(context),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextfield(
                        hinttext: "Mobile Number",
                        prefixicon: const Icon(Icons.phone_android_rounded),
                      ),
                      verticalSpaceLarge,
                      CustomTextfield(
                        hinttext: "Password",
                        prefixicon: const Icon(Icons.password),
                        suffixicon: const Icon(Icons.remove_red_eye),
                      ),
                      verticalSpaceLarge,
                      ElevatedButton(
                          onPressed: () {
                            viewModel.navigateToHomeScreen(context);
                          },
                          child: const Text("Login"))
                    ],
                  ),
                ),
              ),
              Positioned(
                right: screenWidth(context) * 0.12,
                left: screenWidth(context) * 0.12,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          viewModel.navigateToSignupScreen(context);
                        },
                        child: const Text("Sign up"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
