import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/ui_helper.dart';
import 'package:orivios_company_demo/pages/singup/signup_viewmodel.dart';
import 'package:orivios_company_demo/widgets/custom_textfield.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignupViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Stack(
            children: [
              Positioned(
                top: screenHeight(context) * 0.25,
                child: SizedBox(
                  height: screenHeight(context) * 0.55,
                  width: screenWidth(context),
                  child: Column(
                    children: [
                      CustomTextfield(
                        hinttext: "Name",
                        prefixicon: const Icon(Icons.person),
                      ),
                      verticalSpaceLarge,
                      CustomTextfield(
                        hinttext: "Mobile Number",
                        prefixicon: const Icon(Icons.phone_android),
                        suffixicon: const Icon(Icons.remove_red_eye),
                      ),
                      verticalSpaceLarge,
                      CustomTextfield(
                        hinttext: "Password",
                        prefixicon: const Icon(Icons.password),
                        suffixicon: const Icon(Icons.remove_red_eye),
                      ),
                      verticalSpaceLarge,
                      CustomTextfield(
                        hinttext: "Confirm Password",
                        prefixicon: const Icon(Icons.password),
                        suffixicon: const Icon(Icons.remove_red_eye),
                      ),
                      verticalSpaceLarge,
                      TextButton(
                          onPressed: () {
                            viewModel.navigateToHomeScreen(context);
                          },
                          child: const Text("Signup")),
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
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          viewModel.navigateToLoginpage(context);
                        },
                        child: const Text("Login"))
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
