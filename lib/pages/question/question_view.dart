import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/color.dart';
import 'package:orivios_company_demo/core/ui_helper.dart';
import 'package:orivios_company_demo/pages/question/question_viewmodel.dart';
import 'package:orivios_company_demo/widgets/question_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:stacked/stacked.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => QuestionsViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceLarge,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: kblue),
                    ),
                    child: const Icon(Icons.close),
                  ),
                  Container(
                    height: 33,
                    width: screenWidth(context) * 0.80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 1, color: kblue),
                    ),
                    child: Row(
                      children: [
                        LinearPercentIndicator(
                          width: screenWidth(context) * 0.65,
                          lineHeight: 14.0,
                          percent: 0.5,
                        ),
                        const Text("25/50")
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(screenHeight(context) * 0.10),
              const QuestionWidget(),
              verticalSpaceLarge,
              ElevatedButton(
                onPressed: () {
                  viewModel.navigateToDashboard(context);
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(color: kblue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
