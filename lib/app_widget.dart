import 'package:flutter/material.dart';
import 'package:payflow/models/user_model.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
          primaryColor: AppColors.primary,
        ),
        initialRoute: '/splash',
        routes: {
          "/splash": (context) => const SplashPage(),
          "/home": (context) => HomePage(
                user: ModalRoute.of(context)!.settings.arguments as UserModel,
              ),
          "/login": (context) => const LoginPage()
        });
  }
}
