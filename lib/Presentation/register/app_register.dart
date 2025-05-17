import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/core/vectors/app_vectors.dart';

class AppRegister extends StatefulWidget {
  const AppRegister({super.key});

  @override
  State<AppRegister> createState() => _AppRegisterState();
}

class _AppRegisterState extends State<AppRegister> {
  bool passwordSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 40),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80),
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
                  "Hello! Register to get started",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 44),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  obscureText: passwordSecure,
                  decoration: InputDecoration(
                    labelText: 'Password',
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
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  obscureText: passwordSecure,
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
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
                SizedBox(height: 16),
                ElevatedButton(onPressed: () {}, child: Text("Register")),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or Register with",
                    style: TextStyle(color: AppColors.gray),
                  ),
                ),
                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, AppRoutes.login);
                      },

                      child: Text(
                        "Login Now",
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
