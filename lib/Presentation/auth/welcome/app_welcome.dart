import 'package:flutter/material.dart';
import 'package:traviki/core/images/app_images.dart';
import 'package:traviki/core/routes/app_routes.dart';
import 'package:traviki/core/theme/app_colors.dart';

class AppWelcome extends StatefulWidget {
  const AppWelcome({super.key});

  @override
  State<AppWelcome> createState() => _AppWelcomeState();
}

class _AppWelcomeState extends State<AppWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Image.asset(AppImages.splashIcon, height: 120),
                    Text(
                      "Traviki",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 56),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Text("Login"),
                ),
                const SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.register);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Colors.transparent,
                    ),
                    foregroundColor: WidgetStateProperty.all(AppColors.dark),
                    side: WidgetStateProperty.all(
                      const BorderSide(color: AppColors.dark, width: 1.5),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    textStyle: WidgetStateProperty.all(
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    elevation: WidgetStateProperty.all(0),
                    minimumSize: WidgetStateProperty.all(
                      const Size.fromHeight(50),
                    ),
                  ),
                  child: const Text("Register"),
                ),
                const SizedBox(height: 46),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  child: Text(
                    "Continue as a guest",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.dark,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
