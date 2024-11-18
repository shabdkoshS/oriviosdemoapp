import 'package:flutter/material.dart';
import 'package:orivios_company_demo/pages/home/home_view.dart';
import 'package:orivios_company_demo/pages/login/login_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();
  void navigateToHomeScreen(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeView(),
      ),
    );
  }

  void navigateToLoginpage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginView(),
      ),
    );
  }
}
