import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/color.dart';
import 'package:orivios_company_demo/pages/dashboard/dashmodel_viewmodel.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => DashboardViewmodel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Dashboard",
            style: TextStyle(color: kwhite),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                center: new Text(
                  "80",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: new Text(
                  "Your Score",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purple,
              ),
              Text("Total number of questions : 50"),
              Text("Total number of attended questions : 45"),
              Text("Correct answers : 40"),
              Text("Questions Left : 5"),
              Text("Wrong answers : 5"),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateToLoginpage(context);
                  },
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
