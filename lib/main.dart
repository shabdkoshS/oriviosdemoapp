import 'package:flutter/material.dart';
import 'package:orivios_company_demo/core/theme.dart';
import 'package:orivios_company_demo/pages/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      // Automatically switch based on system settings
      themeMode: ThemeMode.system,

      home: LoginView(),
    );
  }
}
