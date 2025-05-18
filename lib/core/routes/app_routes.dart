import 'package:flutter/material.dart';
// auth
import 'package:traviki/Presentation/auth/forgotten_password_flow/user_create_password.dart';
import 'package:traviki/Presentation/auth/forgotten_password_flow/user_forgot_password.dart';
import 'package:traviki/Presentation/auth/forgotten_password_flow/user_otp_verfiy.dart';
import 'package:traviki/Presentation/auth/forgotten_password_flow/user_password_changed_success.dart';
import 'package:traviki/Presentation/auth/login/app_login.dart';
import 'package:traviki/Presentation/auth/register/app_register.dart';
import 'package:traviki/Presentation/auth/welcome/app_welcome.dart';
import 'package:traviki/Presentation/main/home/home.dart';
import 'package:traviki/Presentation/main/main_wrapper.dart';
import 'package:traviki/Presentation/splash/app_splash.dart';

// main

class AppRoutes {
  static const String splash = '/splash';

  // auth
  static const String login = '/login';
  static const String register = '/register';
  static const String welcome = '/welcome';
  static const String forgotpassword =
      '/forgotten_password_flow/forgotpassword';
  static const String forgotpasswordUserOtpVerfiy =
      '/forgotten_password_flow/forgotpassword/UserOtpVerfiy';
  static const String forgotpasswordUserCreatePassword =
      '/forgotten_password_flow/forgotpassword/UserCreatePassword';
  static const String userPasswordChangedSuccess =
      '/forgotten_password_flow/forgotpassword/UserPasswordChangedSuccess';

  // main
  static const String main = '/main';
  static const String home = '/main/home';
  static const String view = '/view';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const AppSplash());
      // auth
      case login:
        return MaterialPageRoute(builder: (_) => const AppLogin());
      case welcome:
        return MaterialPageRoute(builder: (_) => const AppWelcome());
      case register:
        return MaterialPageRoute(builder: (_) => const AppRegister());
      case forgotpassword:
        return MaterialPageRoute(builder: (_) => const UserForgotPassword());
      case forgotpasswordUserOtpVerfiy:
        return MaterialPageRoute(builder: (_) => const UserOtpVerfiy());
      case forgotpasswordUserCreatePassword:
        return MaterialPageRoute(builder: (_) => const UserCreatePassword());
      case userPasswordChangedSuccess:
        return MaterialPageRoute(
          builder: (_) => const UserPasswordChangedSuccess(),
        );

      // main
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case main:
        return MaterialPageRoute(builder: (_) => MainWrapper()); 
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
