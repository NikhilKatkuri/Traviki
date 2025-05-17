import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/core/vectors/app_vectors.dart';

class AppLogin extends StatefulWidget {
  const AppLogin({super.key});
  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  bool passwordSecure = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 44,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.welcome,
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ButtonStyle(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      side: WidgetStateProperty.all(
                        const BorderSide(color: AppColors.border, width: 1.5),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Welcome back! Glad to see you, Again!",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 44),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  obscureText: passwordSecure,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordSecure = !passwordSecure;
                          });
                        },
                        icon:
                            passwordSecure
                                ? SvgPicture.asset(AppVectors.eyeOpen)
                                : SvgPicture.asset(AppVectors.eyeSlash),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.forgotpassword);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.dark,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(onPressed: () {}, child: Text(" Register Now")),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or Login With",
                    style: TextStyle(color: AppColors.gray),
                  ),
                ),
                SizedBox(height: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, AppRoutes.register);
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: AppColors.dark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
