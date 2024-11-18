import 'package:flutter/material.dart';
import 'package:orivios_company_demo/pages/question/question_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  void navaigateToQuestionPage(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const QuestionsView(),
      ),
    );
  }
}
