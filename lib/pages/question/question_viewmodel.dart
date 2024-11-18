import 'package:flutter/material.dart';
import 'package:orivios_company_demo/pages/dashboard/dashboard_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class QuestionsViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();
  void navigateToDashboard(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DashboardView(),
      ),
    );
  }
}
