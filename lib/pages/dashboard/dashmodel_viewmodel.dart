import 'package:flutter/material.dart';
import 'package:orivios_company_demo/pages/login/login_view.dart';
import 'package:stacked/stacked.dart';

class DashboardViewmodel extends BaseViewModel {
  void navigateToLoginpage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginView(),
      ),
    );
  }
}
