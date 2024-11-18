import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/color.dart';
import 'package:orivios_company_demo/pages/home/home_viewmodel.dart';
import 'package:orivios_company_demo/widgets/userguide_widget.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viewModel, child) => Scaffold(
              backgroundColor: kblack,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ),
                // actions: const [
                //   Padding(
                //     padding: EdgeInsets.only(right: 20),
                //     child: CircleAvatar(
                //       backgroundColor: Colors.orange,
                //     ),
                //   )
                // ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Hello John",
                      style: TextStyle(
                          color: kwhite,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                    Text(
                      "Lets make the day productive",
                      style: TextStyle(color: kwhite, fontSize: 12),
                    ),
                    const UserGuideWidget(
                      text: "Multiple choice questions",
                      title: '50',
                      icon: Icon(
                        Icons.menu,
                        color: kwhite,
                      ),
                    ),
                    const UserGuideWidget(
                      text: "Per question",
                      title: '30 Sec',
                      icon: Icon(
                        Icons.timelapse_rounded,
                        color: Colors.amberAccent,
                      ),
                    ),
                    const UserGuideWidget(
                      text: "For badge",
                      title: '90%',
                      icon: Icon(
                        Icons.wb_incandescent_sharp,
                        color: kgrey,
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: kwhite,
                    ),
                    const Text(
                      "Before you Start",
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    const Text(
                      "• You must complete this test in one session - make sure your internet is reliable.",
                      style: TextStyle(color: kwhite, fontSize: 19),
                    ),
                    const Text(
                      "• 1 mark awarded for a corrrect answer. No negative marking will be there for wrong answer.",
                      style: TextStyle(color: kwhite, fontSize: 19),
                    ),
                    const Text(
                      "• If you dont earn a badge this time. You can retake this test once more",
                      style: TextStyle(color: kwhite, fontSize: 19),
                    ),
                    const Divider(
                      thickness: 2,
                      color: kwhite,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.navaigateToQuestionPage(context);
                        },
                        child: const Text("Start Test"),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
