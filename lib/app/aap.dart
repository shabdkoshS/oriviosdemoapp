import 'package:orivios_company_demo/pages/dashboard/dashboard_view.dart';
import 'package:orivios_company_demo/pages/home/home_view.dart';
import 'package:orivios_company_demo/pages/login/login_view.dart';
import 'package:orivios_company_demo/pages/question/question_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../pages/singup/singup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: QuestionsView),
    MaterialRoute(page: DashboardView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
)
class App {}
