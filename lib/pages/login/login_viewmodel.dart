import 'package:flutter/material.dart';
import 'package:orivios_company_demo/pages/home/home_view.dart';
import 'package:orivios_company_demo/pages/singup/singup_view.dart';
import 'package:stacked/stacked.dart';

class LoginViewmodel extends BaseViewModel {
  void navigateToHomeScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeView(),
      ),
    );
  }

  void navigateToSignupScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignupView(),
      ),
    );
  }
}
